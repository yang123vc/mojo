// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package org.chromium.mojo.notifications;

import android.app.ActivityManager;

import org.chromium.mojo.system.MojoException;
import org.chromium.mojom.notifications.Notification;
import org.chromium.mojom.notifications.NotificationData;

/**
 * A Notification passed back to NotificationClients for modifying and cancelling their posted
 * notification.
 */
public class NotificationImpl implements Notification {
    private final NotificationServiceImpl mNotificationService;
    private final int mNotificationId;
    private final ActivityManager.AppTask mAppTask;
    private boolean mIsValid;

    public NotificationImpl(NotificationServiceImpl notificationService, int notificationId,
            ActivityManager.AppTask appTask) {
        mNotificationService = notificationService;
        mNotificationId = notificationId;
        mAppTask = appTask;
        mIsValid = true;
    }

    @Override
    public void close() {}

    @Override
    public void onConnectionError(MojoException e) {}

    @Override
    public void update(NotificationData notificationData) {
        if (mIsValid) {
            mNotificationService.postOrUpdateNotification(mNotificationId, notificationData);
        }
    }

    @Override
    public void cancel() {
        if (mIsValid) {
            mNotificationService.cancel(mNotificationId);
        }
    }

    void invalidate() {
        mIsValid = false;
    }

    void moveToFront() {
        if (mAppTask != null) {
            mAppTask.moveToFront();
        }
    }
}
