.class public interface abstract Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
.super Ljava/lang/Object;
.source "MtvLiveBroadcastListener.java"


# static fields
.field public static final MTVAPP_ANDRIOD_SERVICE_AUDIO_BECOMING_NOISY:I = 0x1a

.field public static final MTVAPP_ANDRIOD_SERVICE_HEADSET:I = 0x9

.field public static final MTVAPP_ANDROID_SERVICE_3LM_BLOCKING:I = 0xf

.field public static final MTVAPP_ANDROID_SERVICE_ANTENNA_CLOSED:I = 0x11

.field public static final MTVAPP_ANDROID_SERVICE_APP_FINISH_FOREGROUND:I = 0x8

.field public static final MTVAPP_ANDROID_SERVICE_BATTERYCHANGE:I = 0x2

.field public static final MTVAPP_ANDROID_SERVICE_DEVICE_MEMORYSIZE_CHANGED:I = 0x1b

.field public static final MTVAPP_ANDROID_SERVICE_DISABLE_ORIENTATION_SENSOR:I = 0xe

.field public static final MTVAPP_ANDROID_SERVICE_LOCALE_CHANGED:I = 0x10

.field public static final MTVAPP_ANDROID_SERVICE_LOW_BATTERY:I = 0x3

.field public static final MTVAPP_ANDROID_SERVICE_MEDIA_EJECT:I = 0x4

.field public static final MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT:I = 0x6

.field public static final MTVAPP_ANDROID_SERVICE_MEDIA_UNMOUNT:I = 0x5

.field public static final MTVAPP_ANDROID_SERVICE_MW_MUTE:I = 0x18

.field public static final MTVAPP_ANDROID_SERVICE_MW_UNMUTE:I = 0x19

.field public static final MTVAPP_ANDROID_SERVICE_RESERVATION_CANCEL_EXIT:I = 0xb

.field public static final MTVAPP_ANDROID_SERVICE_RESERVATION_CLOSE_FROM_NOTIFICATION:I = 0x16

.field public static final MTVAPP_ANDROID_SERVICE_RESERVATION_END:I = 0xa

.field public static final MTVAPP_ANDROID_SERVICE_RESERVATION_END_DIALOG_CLOSE:I = 0xc

.field public static final MTVAPP_ANDROID_SERVICE_SCOVER_CLOSE:I = 0x13

.field public static final MTVAPP_ANDROID_SERVICE_SCOVER_OPEN:I = 0x12

.field public static final MTVAPP_ANDROID_SERVICE_SCREEN_UNLOCK:I = 0x17

.field public static final MTVAPP_ANDROID_SERVICE_SHUTDOWN:I = 0x1c

.field public static final MTVAPP_ANDROID_SERVICE_SLEEP_TIMER_ALARM:I = 0x7

.field public static final MTVAPP_ANDROID_SERVICE_SVIEW_FINISH:I = 0x15

.field public static final MTVAPP_ANDROID_SERVICE_SVIEW_FINISH_START_LIVE:I = 0x14

.field public static final MTVAPP_ANDROID_SERVICE_TIMETICK:I = 0x1


# virtual methods
.method public abstract onMtvAppFinishNotify(Ljava/lang/Object;)V
.end method

.method public abstract onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
.end method
