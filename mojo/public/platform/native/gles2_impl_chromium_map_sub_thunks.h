// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef MOJO_PUBLIC_PLATFORM_NATIVE_GLES2_IMPL_CHROMIUM_MAP_SUB_THUNKS_H_
#define MOJO_PUBLIC_PLATFORM_NATIVE_GLES2_IMPL_CHROMIUM_MAP_SUB_THUNKS_H_

#include <stddef.h>

#include "mojo/public/c/gles2/chromium_map_sub.h"

// Specifies the frozen API for the GLES2 CHROMIUM_map_sub extension.
#pragma pack(push, 8)
struct MojoGLES2ImplChromiumMapSubThunks {
  size_t size;  // Should be set to sizeof(*this).

#define VISIT_GL_CALL(Function, ReturnType, PARAMETERS, ARGUMENTS) \
  ReturnType(GL_APIENTRY* Function) PARAMETERS;
#include "mojo/public/c/gles2/gles2_call_visitor_chromium_map_sub_autogen.h"
#undef VISIT_GL_CALL
};
#pragma pack(pop)

// Intended to be called from the embedder to get the embedder's implementation
// of GLES2.
inline MojoGLES2ImplChromiumMapSubThunks
MojoMakeGLES2ImplChromiumMapSubThunks() {
  MojoGLES2ImplChromiumMapSubThunks gles2_impl_chromium_map_sub_thunks = {
      sizeof(MojoGLES2ImplChromiumMapSubThunks),
#define VISIT_GL_CALL(Function, ReturnType, PARAMETERS, ARGUMENTS) gl##Function,
#include "mojo/public/c/gles2/gles2_call_visitor_chromium_map_sub_autogen.h"
#undef VISIT_GL_CALL
  };

  return gles2_impl_chromium_map_sub_thunks;
}

// Use this type for the function found by dynamically discovering it in
// a DSO linked with mojo_system.
// The contents of |gles2_impl_chromium_map_sub_thunks| are copied.
typedef size_t (*MojoSetGLES2ImplChromiumMapSubThunksFn)(
    const MojoGLES2ImplChromiumMapSubThunks* thunks);

#endif  // MOJO_PUBLIC_PLATFORM_NATIVE_GLES2_IMPL_CHROMIUM_MAP_SUB_THUNKS_H_