// Copyright 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "mojo/edk/system/awakable_list.h"

#include <algorithm>

#include "base/logging.h"
#include "mojo/edk/system/awakable.h"
#include "mojo/edk/system/handle_signals_state.h"

namespace mojo {
namespace system {

AwakableList::AwakableList() {}

AwakableList::~AwakableList() {
  DCHECK(awakables_.empty());
}

void AwakableList::OnStateChange(const HandleSignalsState& old_state,
                                 const HandleSignalsState& new_state) {
  // Instead of deleting elements in-place, swap them with the last element and
  // erase the elements from the end.
  auto last = awakables_.end();
  for (AwakeInfoList::iterator it = awakables_.begin(); it != last;) {
    bool keep = true;
    if (new_state.satisfies(it->signals) && !old_state.satisfies(it->signals)) {
      keep = it->awakable->Awake(it->context, Awakable::AwakeReason::SATISFIED,
                                 new_state);
    } else if (!new_state.can_satisfy(it->signals) &&
               old_state.can_satisfy(it->signals)) {
      keep = it->awakable->Awake(
          it->context, Awakable::AwakeReason::UNSATISFIABLE, new_state);
    }

    if (!keep) {
      --last;
      std::swap(*it, *last);
    } else {
      ++it;
    }
  }
  awakables_.erase(last, awakables_.end());
}

void AwakableList::CancelAll() {
  for (AwakeInfoList::iterator it = awakables_.begin(); it != awakables_.end();
       ++it) {
    it->awakable->Awake(it->context, Awakable::AwakeReason::CANCELLED,
                        HandleSignalsState());
  }
  awakables_.clear();
}

void AwakableList::Add(Awakable* awakable,
                       uint64_t context,
                       MojoHandleSignals signals) {
  awakables_.push_back(AwakeInfo(awakable, signals, context));
}

void AwakableList::Remove(bool match_context,
                          Awakable* awakable,
                          uint64_t context) {
  // We allow a thread to wait on the same handle multiple times simultaneously,
  // so we need to scan the entire list and remove all occurrences of |waiter|.
  auto last = awakables_.end();
  for (AwakeInfoList::iterator it = awakables_.begin(); it != last;) {
    if (it->awakable == awakable &&
        (!match_context || it->context == context)) {
      --last;
      std::swap(*it, *last);
    } else {
      ++it;
    }
  }
  awakables_.erase(last, awakables_.end());
}

}  // namespace system
}  // namespace mojo
