.class public interface abstract Landroid/broadcast/IMtvOneSegServiceListener;
.super Ljava/lang/Object;
.source "IMtvOneSegServiceListener.java"


# static fields
.field public static final CMD_BASE:I = 0x64

.field public static final CMD_CANCEL_SCAN:I = 0x6c

.field public static final CMD_CAPTION_DATA:I = 0x81

.field public static final CMD_CAPT_FRAME:I = 0x6a

.field public static final CMD_CLOSE:I = 0x75

.field public static final CMD_CREATE:I = 0x65

.field public static final CMD_DELETE:I = 0x76

.field public static final CMD_OPEN:I = 0x66

.field public static final CMD_PAUSE:I = 0x6d

.field public static final CMD_PLAY:I = 0x72

.field public static final CMD_REC_CANCEL:I = 0x68

.field public static final CMD_REC_CLOSE:I = 0x80

.field public static final CMD_REC_OPEN:I = 0x7f

.field public static final CMD_REC_START:I = 0x67

.field public static final CMD_REC_STOP:I = 0x69

.field public static final CMD_REGISTER_CLIENT:I = 0x7b

.field public static final CMD_REPOSITION:I = 0x70

.field public static final CMD_RESUME:I = 0x6e

.field public static final CMD_SCAN:I = 0x6b

.field public static final CMD_STATUS_UPDT:I = 0x71

.field public static final CMD_TRICKMODE:I = 0x6f

.field public static final CMD_TUNER_POWER_CTRL:I = 0x7d

.field public static final CMD_TVLINK_AFFI_DEL:I = 0x79

.field public static final CMD_TVLINK_BROADCAST_AREA_DEL:I = 0x7a

.field public static final CMD_TVLINK_DEL:I = 0x77

.field public static final CMD_TVLINK_DEL_ALL:I = 0x78

.field public static final CMD_TVLINK_START:I = 0x73

.field public static final CMD_TVLINK_STOP:I = 0x74

.field public static final CMD_UNREGISTER_CLIENT:I = 0x7c

.field public static final CMD_UPDATE_TV_FILES:I = 0x7e

.field public static final MEM_LOC_EXTRENAL:Ljava/lang/String; = "/mnt/extSdCard/video/MyTvFiles/"

.field public static final MEM_LOC_INTERNAL:Ljava/lang/String; = "/sdcard/video/MyTvFiles/"

.field public static final MEM_STORE_EXTRENAL:I = 0x0

.field public static final MEM_STORE_INTERNAL:I = 0x1

.field public static final PTYPE_BASE:I = 0x0

.field public static final PTYPE_IMAGE:I = 0x5

.field public static final PTYPE_LIVE:I = 0x2

.field public static final PTYPE_LOCAL:I = 0x1

.field public static final PTYPE_RECORD:I = 0x6

.field public static final PTYPE_TESTMODE:I = 0x4

.field public static final PTYPE_TVLINK:I = 0x3

.field public static final REC_AV_ONLY:I = 0x1

.field public static final REC_FULL:I = 0x2

.field public static final REMOTE_CMD_BASE:I = 0x12c

.field public static final REMOTE_CMD_CANCEL_SCAN:I = 0x134

.field public static final REMOTE_CMD_CAPTION_DATA:I = 0x147

.field public static final REMOTE_CMD_CAPTURE_FRAME:I = 0x140

.field public static final REMOTE_CMD_CLEANUP:I = 0x137

.field public static final REMOTE_CMD_CLOSE:I = 0x13d

.field public static final REMOTE_CMD_CREATE:I = 0x12d

.field public static final REMOTE_CMD_DELETE:I = 0x13e

.field public static final REMOTE_CMD_DEL_TV_FILE:I = 0x132

.field public static final REMOTE_CMD_GET_SIGNAL_STAT:I = 0x138

.field public static final REMOTE_CMD_OPEN:I = 0x12e

.field public static final REMOTE_CMD_PAUSE:I = 0x135

.field public static final REMOTE_CMD_PLAY:I = 0x13a

.field public static final REMOTE_CMD_REC_CANCEL:I = 0x130

.field public static final REMOTE_CMD_REC_CLOSE:I = 0x142

.field public static final REMOTE_CMD_REC_OPEN:I = 0x141

.field public static final REMOTE_CMD_REC_START:I = 0x12f

.field public static final REMOTE_CMD_REC_STOP:I = 0x131

.field public static final REMOTE_CMD_REPOSITION:I = 0x146

.field public static final REMOTE_CMD_RESUME:I = 0x136

.field public static final REMOTE_CMD_SCAN:I = 0x133

.field public static final REMOTE_CMD_SET_SVC_STATE:I = 0x13f

.field public static final REMOTE_CMD_STATUS_UPDT:I = 0x139

.field public static final REMOTE_CMD_TRICKMODE:I = 0x145

.field public static final REMOTE_CMD_TVLINK_START:I = 0x13b

.field public static final REMOTE_CMD_TVLINK_STOP:I = 0x13c

.field public static final SIGNAL_BASE:I = 0x0

.field public static final SIGNAL_LOW:I = 0x1

.field public static final SIGNAL_NO:I = 0x2

.field public static final SIGNAL_NORMAL:I = 0x0

.field public static final STAT_AUDIO_TRACK_CHANGED:I = 0xea

.field public static final STAT_BASE:I = 0xc8

.field public static final STAT_BUFFERING_BEGIN:I = 0xcc

.field public static final STAT_BUFFERING_END:I = 0xce

.field public static final STAT_BUFFERING_PROGRESS:I = 0xcd

.field public static final STAT_CANNOT_RECORD:I = 0xe3

.field public static final STAT_CAPT_DATA:I = 0xd3

.field public static final STAT_CHANNELINFO_UPDATE:I = 0xe8

.field public static final STAT_DEL_FILE:I = 0xda

.field public static final STAT_END_OF_FILE:I = 0xd6

.field public static final STAT_FAILURE:I = 0xcb

.field public static final STAT_FRAME_READY:I = 0xe9

.field public static final STAT_INSUFFICIENT_MEMORY:I = 0xd9

.field public static final STAT_MEDIA_ERROR:I = 0xcf

.field public static final STAT_NIT_RCV:I = 0xe4

.field public static final STAT_NO_OF_AUDIOPID:I = 0xe2

.field public static final STAT_OUT_OF_MEMORY:I = 0xd8

.field public static final STAT_PMT_CHANGE:I = 0xdf

.field public static final STAT_PMT_RCV:I = 0xe1

.field public static final STAT_PROGINFO_UPDT:I = 0xd0

.field public static final STAT_PROGRESS:I = 0xca

.field public static final STAT_PRSR_EIT_RCV:I = 0xdc

.field public static final STAT_PRSR_NIT_RCV:I = 0xdd

.field public static final STAT_PRSR_PMT_RCV:I = 0xdb

.field public static final STAT_REC_FRAME_READY:I = 0xe7

.field public static final STAT_RMP_SETUP_DONE:I = 0xe6

.field public static final STAT_RMP_SETUP_START:I = 0xe5

.field public static final STAT_SIGNAL_UPDT:I = 0xd2

.field public static final STAT_STREAMTIME_UPDT:I = 0xd1

.field public static final STAT_SUCCESS:I = 0xc9

.field public static final STAT_TIME_UPDT:I = 0xd4

.field public static final STAT_TUNER_LOW_SIGNAL:I = 0xde

.field public static final STAT_UNKNOWN:I = 0xd7

.field public static final STAT_VIDEO_RATIO_UPDT:I = 0xd5

.field public static final TRICK_FW:I = 0x2

.field public static final TRICK_MODE_FW:I = 0x2

.field public static final TRICK_MODE_RW:I = 0x3

.field public static final TRICK_MODE_STOP:I = 0x0

.field public static final TRICK_RW:I = 0x2

.field public static final TRICK_SPEED_ONE_X:I = 0x0

.field public static final TRICK_SPEED_TEN_X:I = 0x2

.field public static final TRICK_SPEED_TWO_X:I = 0x1

.field public static final TRICK_STOP:I


# virtual methods
.method public abstract onServiceNotify(IIILjava/lang/Object;)V
.end method
