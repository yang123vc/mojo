// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package templates

// TODO(vardhan): Include only the necessary headers for a particular
// mojom.
const GenerateHeaderFile = `
{{- define "GenerateHeaderFile" -}}
// This file was auto-generated by the C bindings generator.

#ifndef {{.HeaderGuard}}
#define {{.HeaderGuard}}

#include <assert.h>
#include <math.h>
#include <stdbool.h>
#include <stdint.h>

#include "mojo/public/c/bindings/array.h"
#include "mojo/public/c/bindings/buffer.h"
#include "mojo/public/c/bindings/interface.h"
#include "mojo/public/c/bindings/lib/type_descriptor.h"
#include "mojo/public/c/bindings/map.h"
#include "mojo/public/c/bindings/string.h"
#include "mojo/public/c/bindings/validation.h"
#include "mojo/public/c/system/handle.h"
#include "mojo/public/c/system/macros.h"

// Imports.
{{range $import := .Imports -}}
#include "{{$import}}"
{{end}}

MOJO_BEGIN_EXTERN_C

// Forward declarations for structs.
{{range $struct := .Structs -}}
struct {{$struct.Name}};
union {{$struct.Name}}Ptr {
  struct {{$struct.Name}}* ptr;
  uint64_t offset;
};
MOJO_STATIC_ASSERT(sizeof(union {{$struct.Name}}Ptr) == 8,
              "union {{$struct.Name}}Ptr must be 8 bytes");

{{end -}}

// Forward declarations for unions.
{{range $union := .Unions -}}
struct {{$union.Name}};
union {{$union.Name}}Ptr {
  struct {{$union.Name}}* ptr;
  uint64_t offset;
};
MOJO_STATIC_ASSERT(sizeof(union {{$union.Name}}Ptr) == 8,
             "union {{$union.Name}} must be 8 bytes");

{{end -}}

// Top level constants.
{{range $const := .Constants -}}
extern const {{$const.Type}} {{$const.Name}};
{{end}}

// Top level enums.
{{range $enum := .Enums -}}
{{template "GenerateEnum" $enum}}
{{end}}

// Union definitions.
{{range $union := .Unions -}}
{{template "GenerateUnion" $union}}
{{end}}

// Struct definitions.
{{range $struct := .Structs -}}
{{template "GenerateStructDeclarations" $struct}}
{{end}}

// Interface definitions.
{{range $interface := .Interfaces -}}
{{template "GenerateInterfaceDeclarations" $interface}}
{{end}}

// Type tables declarations for structs and unions.
{{template "GenerateTypeTableDeclarations" .TypeTable}}

MOJO_END_EXTERN_C

#endif  // {{.HeaderGuard}}
{{- end }}
`
