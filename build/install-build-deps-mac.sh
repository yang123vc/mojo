#!/bin/bash -e

# Copyright (c) 2015 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#
# Script to install dependencies for developing Mojo on Mac OS X.

XCODE_APP="/Applications/Xcode.app"
JDK_VERSION="1.7.0"

echo

INSTRUCTIONS=""

if [ ! -d $XCODE_APP ]; then
  INSTRUCTIONS="${INSTRUCTIONS}\n** Install the latest version of Xcode from the Mac App Store."
fi

if [ -z $(which java) ] || ! java -version 2>&1 | grep -q ${JDK_VERSION}; then
  temp=$(
    echo "** Make sure you have the Java JDK 7 installed:"
    echo " http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-macosx-x64.dmg"
  )

  INSTRUCTIONS="${INSTRUCTIONS}\n$temp"
fi


if [ -z $(which gclient) ] && [ ! -d $HOME/depot_tools ]; then
  echo "*** Installing depot_tools in $HOME"
  echo
  cd $HOME
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

  temp=$(
  echo "** Add this to your .bash_profile or similar:"
  echo " export PATH=\"\${HOME}/depot_tools:\${PATH}\""
  )

  INSTRUCTIONS="${INSTRUCTIONS}\n$temp"
fi

if [ ! -z $(which brew) ]; then
  brew install ant
elif [ ! -z $(which port) ]; then
  sudo port install apache-ant
else
  INSTRUCTIONS="${INSTRUCTIONS}\n** Install homebrew (brew.sh) or macports (macports.org) and re-run this script."
fi

sudo easy_install pip
sudo pip install requests


echo
echo "All done!"

if [ ! -z "$INSTRUCTIONS" ]; then
  echo
  echo
  echo "**** Follow these final instructions to get going."
  echo $INSTRUCTIONS
fi