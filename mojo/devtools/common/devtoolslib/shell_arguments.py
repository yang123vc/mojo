# Copyright 2015 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

"""Functions that configure the shell before it is run manipulating its argument
list."""

import urlparse

_MAP_ORIGIN_PREFIX = '--map-origin='
# When spinning up servers for local origins, we want to use predictable ports
# so that caching works between subsequent runs with the same command line.
_MAP_ORIGIN_BASE_PORT = 31338

# Port on which the mojo:debugger http server will be available on the host
# machine.
_MOJO_DEBUGGER_PORT = 7777


def _IsMapOrigin(arg):
  """Returns whether |arg| is a --map-origin argument."""
  return arg.startswith(_MAP_ORIGIN_PREFIX)


def _Split(l, pred):
  positive = []
  negative = []
  for v in l:
    if pred(v):
      positive.append(v)
    else:
      negative.append(v)
  return (positive, negative)


def _RewriteMapOriginParameter(shell, mapping, device_port):
  parts = mapping[len(_MAP_ORIGIN_PREFIX):].split('=')
  if len(parts) != 2:
    return mapping
  dest = parts[1]
  # If the destination is a url, don't map it.
  if urlparse.urlparse(dest)[0]:
    return mapping
  # Assume the destination is a local directory and serve it.
  localUrl = shell.ServeLocalDirectory(dest, device_port)
  print 'started server at %s for %s' % (dest, localUrl)
  return _MAP_ORIGIN_PREFIX + parts[0] + '=' + localUrl


def RewriteMapOriginParameters(shell, original_arguments):
  """Spawns a server for each local destination indicated in a map-origin
  argument in |original_arguments| and rewrites it to point to the server url.
  The arguments other than "map-origin" and "map-origin" arguments pointing to
  web urls are left intact.

  Args:
    shell: The shell that is being configured.
    original_arguments: List of arguments to be rewritten.

  Returns:
    The updated argument list.
  """
  map_arguments, other_arguments = _Split(original_arguments, _IsMapOrigin)
  arguments = other_arguments
  next_port = _MAP_ORIGIN_BASE_PORT
  for mapping in sorted(map_arguments):
    arguments.append(_RewriteMapOriginParameter(shell, mapping, next_port))
    next_port += 1
  return arguments


def ConfigureDebugger(shell):
  """Configures mojo:debugger to run and sets up port forwarding for its http
  server if the shell is running on a device.

  Returns:
    Arguments that need to be appended to the shell argument list in order to
    run with the debugger.
  """
  shell.ForwardHostPortToShell(_MOJO_DEBUGGER_PORT)
  return ['mojo:debugger %d' % _MOJO_DEBUGGER_PORT]
