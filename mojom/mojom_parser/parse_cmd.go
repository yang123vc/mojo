// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/*
 This file contains parseCmd which parses a set of .mojom files and emits a
 serialized MojomFileGraph struct. See mojom_files.mojom for the definition of
 MojomFileGraph.

 The parse command is invoked as follows:

     mojom parse [-I <include_dirs>] [-out <out_file>] [-debug] <mojom_file>...

 <include_dirs> is comma-separated list of directory paths to search for mojom imports.
 <out_file> is the path to the output file. If not given the output will be written to standard out.
 <mojom_file>... is one or more paths to  .mojom files to be parsed.

 If there are no errors then the program returns status zero and writes nothing
 to standard error and writes nothing to standard out except possibly the output
 if <out_file> is not specified. If there are any errors then the program returns
 status code 1 and writes error messages to standard error.

 If -debug is specified then the program emits lots of debugging data to
 standard out, including a depiction of the parse trees. If also <out_file> is
 not specified then the actual output is written at the end after the debugging
 data.
*/

package main

import (
	"bufio"
	"flag"
	"fmt"
	"io/ioutil"
	"mojom/mojom_parser/mojom"
	"mojom/mojom_parser/parser"
	"mojom/mojom_parser/serialization"
	"os"
	"path/filepath"
	"strings"
)

// DirectoryList holds the result of parsing a command-line flag
// that accepts a comma-separated list of directory paths. This
// type satisfies the flag.Value interface.
type DirectoryList []string

func (dl *DirectoryList) String() string {
	return fmt.Sprintf("%v", *dl)
}

func (dl *DirectoryList) Set(args string) error {
	for _, name := range strings.Split(args, ",") {
		info, err := os.Stat(name)
		if err != nil {
			return err
		}
		if !info.IsDir() {
			return fmt.Errorf("%s is not a directory.", name)
		}
		*dl = append(*dl, name)
	}
	return nil
}

// parseCmd implements the parse command for the mojom tool.
// The slice of strings |args| is the list of arguments passed on the command
// line starting with the program name and followed by the invoked command.
func parseCmd(args []string) {
	flagSet := flag.NewFlagSet("parse", flag.ContinueOnError)
	var directoryListFlag DirectoryList
	flagSet.Var(&directoryListFlag, "I", "comma-separated list of directory paths to search for mojom imports")
	outFile := flagSet.String("out", "", "The path to the output file. If not present the output will "+
		"be written to standard out.")
	debug := flagSet.Bool("debug", false, "Generate debug data including the parse tree and print it to standard out.")
	metaDataOnly := flagSet.Bool("meta-data-only", false, "Only parse file attributes and 'module' statement, "+
		"not mojom declarations or import statements.")
	flagSet.SetOutput(ioutil.Discard)

	printUsage := func() {
		fmt.Fprintf(os.Stderr, "Usage: %s parse [-I <include_dirs>] [-out <out_file>] [-debug] [-meta-data-only] <mojom_file>...\n\n", filepath.Base(args[0]))
		fmt.Fprintf(os.Stderr, UsageString(flagSet))
	}

	if err := flagSet.Parse(args[2:]); err != nil {
		if err != flag.ErrHelp {
			fmt.Fprintln(os.Stderr, err.Error())
		}
		printUsage()
		os.Exit(1)
	}

	fileNames := flagSet.Args()
	if len(fileNames) == 0 {
		fmt.Fprintln(os.Stderr, "No .mojom files given.")
		printUsage()
		os.Exit(1)
	}

	parseDriver := parser.NewDriver(directoryListFlag, *debug, *metaDataOnly)

	// Do the parsing
	descriptor, err := parseDriver.ParseFiles(fileNames)
	if err != nil {
		ErrorExit(fmt.Sprintf("%s", err.Error()))
	} else if *debug {
		fmt.Println("Parsing complete.")
	}

	// Serialize the result.
	bytes, debug_string, err := serialization.Serialize(descriptor, *debug)
	if err != nil {
		ErrorExit(fmt.Sprintf("Serialization error: %s", err))
	}

	// In debug mode print out the debug information.
	if *debug {
		PrintDebugOutput(debug_string, descriptor)
	}

	// Emit the output to a file or standard out.
	if len(*outFile) == 0 {
		w := bufio.NewWriter(os.Stdout)
		if _, err := w.Write(bytes); err != nil {
			ErrorExit(fmt.Sprintf("Error writing output to standard out: %s.", *outFile, err.Error()))
		}
		w.Flush()
	} else {
		if err := ioutil.WriteFile(*outFile, bytes, os.ModePerm); err != nil {
			ErrorExit(fmt.Sprintf("Error writing output to %s: %s.", *outFile, err.Error()))
		} else {
			if *debug {
				fmt.Printf("The output was written to %s.\n", *outFile)
			}
		}
	}
}

func PrintDebugOutput(debugString string, descriptor *mojom.MojomDescriptor) {
	fmt.Println("\n\n=============================================")
	fmt.Println("\n Pre-Serialized Go Object:")
	fmt.Printf("\n%s\n", descriptor.String())
	fmt.Println("\n\n=============================================")
	fmt.Println("\n Debug Serialized Output:")
	fmt.Println(debugString)
}