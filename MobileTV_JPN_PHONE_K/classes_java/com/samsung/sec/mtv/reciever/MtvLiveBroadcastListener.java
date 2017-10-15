// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.reciever;


public interface MtvLiveBroadcastListener
{

    public abstract void onMtvAppFinishNotify(Object obj);

    public abstract void onMtvAppLiveBroadcastNotify(int i, Object obj);

    public static final int MTVAPP_ANDRIOD_SERVICE_AUDIO_BECOMING_NOISY = 26;
    public static final int MTVAPP_ANDRIOD_SERVICE_HEADSET = 9;
    public static final int MTVAPP_ANDROID_SERVICE_3LM_BLOCKING = 15;
    public static final int MTVAPP_ANDROID_SERVICE_ANTENNA_CLOSED = 17;
    public static final int MTVAPP_ANDROID_SERVICE_APP_FINISH_FOREGROUND = 8;
    public static final int MTVAPP_ANDROID_SERVICE_BATTERYCHANGE = 2;
    public static final int MTVAPP_ANDROID_SERVICE_DEVICE_MEMORYSIZE_CHANGED = 27;
    public static final int MTVAPP_ANDROID_SERVICE_DISABLE_ORIENTATION_SENSOR = 14;
    public static final int MTVAPP_ANDROID_SERVICE_LOCALE_CHANGED = 16;
    public static final int MTVAPP_ANDROID_SERVICE_LOW_BATTERY = 3;
    public static final int MTVAPP_ANDROID_SERVICE_MEDIA_EJECT = 4;
    public static final int MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT = 6;
    public static final int MTVAPP_ANDROID_SERVICE_MEDIA_UNMOUNT = 5;
    public static final int MTVAPP_ANDROID_SERVICE_MW_MUTE = 24;
    public static final int MTVAPP_ANDROID_SERVICE_MW_UNMUTE = 25;
    public static final int MTVAPP_ANDROID_SERVICE_RESERVATION_CANCEL_EXIT = 11;
    public static final int MTVAPP_ANDROID_SERVICE_RESERVATION_CLOSE_FROM_NOTIFICATION = 22;
    public static final int MTVAPP_ANDROID_SERVICE_RESERVATION_END = 10;
    public static final int MTVAPP_ANDROID_SERVICE_RESERVATION_END_DIALOG_CLOSE = 12;
    public static final int MTVAPP_ANDROID_SERVICE_SCOVER_CLOSE = 19;
    public static final int MTVAPP_ANDROID_SERVICE_SCOVER_OPEN = 18;
    public static final int MTVAPP_ANDROID_SERVICE_SCREEN_UNLOCK = 23;
    public static final int MTVAPP_ANDROID_SERVICE_SHUTDOWN = 28;
    public static final int MTVAPP_ANDROID_SERVICE_SLEEP_TIMER_ALARM = 7;
    public static final int MTVAPP_ANDROID_SERVICE_SVIEW_FINISH = 21;
    public static final int MTVAPP_ANDROID_SERVICE_SVIEW_FINISH_START_LIVE = 20;
    public static final int MTVAPP_ANDROID_SERVICE_TIMETICK = 1;
}
