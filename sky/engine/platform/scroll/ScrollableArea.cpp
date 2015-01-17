/*
 * Copyright (c) 2010, Google Inc. All rights reserved.
 * Copyright (C) 2008, 2011 Apple Inc. All Rights Reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "sky/engine/config.h"
#include "sky/engine/platform/scroll/ScrollableArea.h"

#include "sky/engine/platform/HostWindow.h"
#include "sky/engine/platform/Logging.h"
#include "sky/engine/platform/TraceEvent.h"
#include "sky/engine/platform/geometry/FloatPoint.h"
#include "sky/engine/platform/scroll/Scrollbar.h"
#include "sky/engine/public/platform/WebString.h"
#include "sky/engine/wtf/PassOwnPtr.h"

static const int kPixelsPerLineStep = 40;
static const float kMinFractionToStepWhenPaging = 0.875f;

namespace blink {

struct SameSizeAsScrollableArea {
    virtual ~SameSizeAsScrollableArea();
    void* pointer;
    unsigned bitfields : 16;
    IntPoint origin;
};

COMPILE_ASSERT(sizeof(ScrollableArea) == sizeof(SameSizeAsScrollableArea), ScrollableArea_should_stay_small);

int ScrollableArea::pixelsPerLineStep()
{
    return kPixelsPerLineStep;
}

float ScrollableArea::minFractionToStepWhenPaging()
{
    return kMinFractionToStepWhenPaging;
}

int ScrollableArea::maxOverlapBetweenPages()
{
    static int maxOverlapBetweenPages = std::numeric_limits<int>::max();
    return maxOverlapBetweenPages;
}

ScrollableArea::ScrollableArea()
    : m_constrainsScrollingToContentEdge(true)
    , m_verticalScrollElasticity(ScrollElasticityNone)
    , m_horizontalScrollElasticity(ScrollElasticityNone)
    , m_scrollOriginChanged(false)
{
}

ScrollableArea::~ScrollableArea()
{
}

ScrollAnimator* ScrollableArea::scrollAnimator() const
{
    if (!m_animators)
        m_animators = adoptPtr(new ScrollableAreaAnimators);

    if (!m_animators->scrollAnimator)
        m_animators->scrollAnimator = ScrollAnimator::create(const_cast<ScrollableArea*>(this));

    return m_animators->scrollAnimator.get();
}

void ScrollableArea::setScrollOrigin(const IntPoint& origin)
{
    if (m_scrollOrigin != origin) {
        m_scrollOrigin = origin;
        m_scrollOriginChanged = true;
    }
}

bool ScrollableArea::scroll(ScrollDirection direction, ScrollGranularity granularity, float delta)
{
    ScrollbarOrientation orientation;

    if (direction == ScrollUp || direction == ScrollDown)
        orientation = VerticalScrollbar;
    else
        orientation = HorizontalScrollbar;

    if (!userInputScrollable(orientation))
        return false;

    float step = 0;
    switch (granularity) {
    case ScrollByLine:
        step = lineStep(orientation);
        break;
    case ScrollByPage:
        step = pageStep(orientation);
        break;
    case ScrollByDocument:
        step = documentStep(orientation);
        break;
    case ScrollByPixel:
    case ScrollByPrecisePixel:
        step = pixelStep(orientation);
        break;
    }

    if (direction == ScrollUp || direction == ScrollLeft)
        delta = -delta;

    return scrollAnimator()->scroll(orientation, granularity, step, delta);
}

void ScrollableArea::scrollToOffsetWithoutAnimation(const FloatPoint& offset)
{
    scrollAnimator()->scrollToOffsetWithoutAnimation(offset);
}

void ScrollableArea::scrollToOffsetWithoutAnimation(ScrollbarOrientation orientation, float offset)
{
    if (orientation == HorizontalScrollbar)
        scrollToOffsetWithoutAnimation(FloatPoint(offset, scrollAnimator()->currentPosition().y()));
    else
        scrollToOffsetWithoutAnimation(FloatPoint(scrollAnimator()->currentPosition().x(), offset));
}

void ScrollableArea::scrollPositionChanged(const IntPoint& position)
{
    TRACE_EVENT0("blink", "ScrollableArea::scrollPositionChanged");

    IntPoint oldPosition = scrollPosition();
    // Tell the derived class to scroll its contents.
    setScrollOffset(position);

    if (Scrollbar* scrollbar = this->horizontalScrollbar())
        scrollbar->offsetDidChange();

    if (Scrollbar* scrollbar = this->verticalScrollbar())
        scrollbar->offsetDidChange();

    if (scrollPosition() != oldPosition)
        scrollAnimator()->notifyContentAreaScrolled(scrollPosition() - oldPosition);
}

bool ScrollableArea::scrollBehaviorFromString(const String& behaviorString, ScrollBehavior& behavior)
{
    if (behaviorString == "auto")
        behavior = ScrollBehaviorAuto;
    else if (behaviorString == "instant")
        behavior = ScrollBehaviorInstant;
    else if (behaviorString == "smooth")
        behavior = ScrollBehaviorSmooth;
    else
        return false;

    return true;
}

bool ScrollableArea::handleWheelEvent(const PlatformWheelEvent& wheelEvent)
{
    // ctrl+wheel events are used to trigger zooming, not scrolling.
    if (wheelEvent.modifiers() & PlatformEvent::CtrlKey)
        return false;

    return scrollAnimator()->handleWheelEvent(wheelEvent);
}

void ScrollableArea::setScrollOffsetFromAnimation(const IntPoint& offset)
{
    scrollPositionChanged(offset);
}

void ScrollableArea::mouseEnteredContentArea() const
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->mouseEnteredContentArea();
}

void ScrollableArea::mouseExitedContentArea() const
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->mouseEnteredContentArea();
}

void ScrollableArea::mouseMovedInContentArea() const
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->mouseMovedInContentArea();
}

void ScrollableArea::mouseEnteredScrollbar(Scrollbar* scrollbar) const
{
    scrollAnimator()->mouseEnteredScrollbar(scrollbar);
}

void ScrollableArea::mouseExitedScrollbar(Scrollbar* scrollbar) const
{
    scrollAnimator()->mouseExitedScrollbar(scrollbar);
}

void ScrollableArea::contentAreaDidShow() const
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->contentAreaDidShow();
}

void ScrollableArea::contentAreaDidHide() const
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->contentAreaDidHide();
}

void ScrollableArea::finishCurrentScrollAnimations() const
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->finishCurrentScrollAnimations();
}

void ScrollableArea::didAddScrollbar(Scrollbar* scrollbar, ScrollbarOrientation orientation)
{
    if (orientation == VerticalScrollbar)
        scrollAnimator()->didAddVerticalScrollbar(scrollbar);
    else
        scrollAnimator()->didAddHorizontalScrollbar(scrollbar);
}

void ScrollableArea::willRemoveScrollbar(Scrollbar* scrollbar, ScrollbarOrientation orientation)
{
    if (orientation == VerticalScrollbar)
        scrollAnimator()->willRemoveVerticalScrollbar(scrollbar);
    else
        scrollAnimator()->willRemoveHorizontalScrollbar(scrollbar);
}

void ScrollableArea::contentsResized()
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->contentsResized();
}

bool ScrollableArea::hasOverlayScrollbars() const
{
    Scrollbar* vScrollbar = verticalScrollbar();
    if (vScrollbar && vScrollbar->isOverlayScrollbar())
        return true;
    Scrollbar* hScrollbar = horizontalScrollbar();
    return hScrollbar && hScrollbar->isOverlayScrollbar();
}

bool ScrollableArea::scheduleAnimation()
{
    WTF_LOG(ScriptedAnimationController, "ScrollableArea::scheduleAnimation: window = %d",
        hostWindow() ? 1 : 0);
    if (HostWindow* window = hostWindow()) {
        window->scheduleAnimation();
        return true;
    }
    return false;
}

void ScrollableArea::serviceScrollAnimations(double monotonicTime)
{
    if (ScrollAnimator* scrollAnimator = existingScrollAnimator())
        scrollAnimator->serviceScrollAnimations();
}

IntPoint ScrollableArea::clampScrollPosition(const IntPoint& scrollPosition) const
{
    return scrollPosition.shrunkTo(maximumScrollPosition()).expandedTo(minimumScrollPosition());
}

int ScrollableArea::lineStep(ScrollbarOrientation) const
{
    return pixelsPerLineStep();
}

int ScrollableArea::documentStep(ScrollbarOrientation orientation) const
{
    return scrollSize(orientation);
}

float ScrollableArea::pixelStep(ScrollbarOrientation) const
{
    return 1;
}

} // namespace blink
