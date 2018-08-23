.class public Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerConstantsSv;
.super Ljava/lang/Object;
.source "MmbFcPlayerConstantsSv.java"


# static fields
.field public static final ASPECT_RATIO_16_9:I = 0x0

.field public static final ASPECT_RATIO_4_3:I = 0x1

.field protected static final ASYNC_TYPE_CHAPTER_FORWARD:I = 0x11

.field protected static final ASYNC_TYPE_CHAPTER_REWIND:I = 0x12

.field protected static final ASYNC_TYPE_COMMAND_REJECT:I = 0x13

.field protected static final ASYNC_TYPE_DUMMY:I = 0xa

.field protected static final ASYNC_TYPE_FAST_FORWARD:I = 0xf

.field protected static final ASYNC_TYPE_PAUSE:I = 0xd

.field protected static final ASYNC_TYPE_PLAY:I = 0xb

.field protected static final ASYNC_TYPE_REWIND:I = 0x10

.field protected static final ASYNC_TYPE_SEEK:I = 0xe

.field protected static final ASYNC_TYPE_STOP:I = 0xc

.field protected static final AUDIO_SAPMODE_DUMMY:I = 0x63

.field public static final AUDIO_SAPMODE_MAIN:I = 0x0

.field public static final AUDIO_SAPMODE_MIX:I = 0x2

.field public static final AUDIO_SAPMODE_SUB:I = 0x1

.field public static final CAPTION_LANG_1:I = 0x1

.field public static final CAPTION_LANG_2:I = 0x2

.field protected static final CAPTION_MODE_DUMMY:I = 0x63

.field public static final CAPTION_OFF:I = 0x0

.field protected static final CONFIGRATION_WAIT_TIME:I = 0xa

.field protected static final CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

.field protected static final DELIMITER:Ljava/lang/String; = "#"

.field public static final DIM_CHANGE_ASPECT_INFO:I = 0x0

.field public static final DIM_CHANGE_BOTH:I = 0x2

.field public static final DIM_CHANGE_DIMENTION_INFO:I = 0x1

.field public static final ERROR_INTERNAL:I = -0x7cf

.field public static final ERROR_NOT_ARRIVAL_TERM:I = -0x3ea

.field public static final ERROR_NO_LICENSE:I = -0x3e9

.field public static final ERROR_OVER_PLAYCOUNT:I = -0x3ec

.field public static final ERROR_OVER_TERM:I = -0x3eb

.field public static final ERROR_OVER_TIME:I = -0x3ed

.field public static final ERROR_PARENTAL_RATE:I = -0x3ee

.field protected static final FAST_FORWARD_NO:I = 0x2

.field protected static final FAST_FORWARD_OK:I = 0x0

.field protected static final FAST_FORWARD_SCENEID:I = 0x3

.field protected static final FAST_FORWARD_UNDEFINED:I = 0x1

.field public static final FCMP4_STATE_BACKGROUND_PLAYING:I = 0xa

.field public static final FCMP4_STATE_COMPLETED:I = 0x8

.field public static final FCMP4_STATE_ERROR:I = 0x9

.field public static final FCMP4_STATE_FASTFORWARD:I = 0x6

.field public static final FCMP4_STATE_INITIALIZE_END:I = 0x1

.field public static final FCMP4_STATE_NOT_INITIALIZE:I = 0x0

.field public static final FCMP4_STATE_PAUSED:I = 0x5

.field public static final FCMP4_STATE_PLAYING:I = 0x3

.field public static final FCMP4_STATE_PLAY_READY:I = 0x2

.field public static final FCMP4_STATE_REWIND:I = 0x7

.field public static final FCMP4_STATE_STOP:I = 0x4

.field public static final FF_DISABLE_RW_DISABLE:I = 0x1

.field public static final FF_DISABLE_RW_ENABLE:I = 0x3

.field public static final FF_ENABLE_RW_DISABLE:I = 0x2

.field public static final FF_ENABLE_RW_ENABLE:I = 0x0

.field public static final FF_PERTERM_RW_DISABLE:I = 0x5

.field public static final FF_PERTERM_RW_ENABLE:I = 0x4

.field public static final INVALID_OPERATION:I = 0x1

.field static final INVALID_OPERATION_FOR_REJECT:I = 0x2

.field protected static final LISTNERTYPE_SV:I = 0x2

.field protected static final LISTNERTYPE_UI:I = 0x1

.field protected static final MP4_FILE_NAME:Ljava/lang/String; = ".mp4"

.field public static final OPERATION_SUCCESS:I = 0x0

.field public static final PLAYER_CANNOT_SYNC_START:I = 0xb

.field public static final PLAYER_CHAPTERRETURN_COMPLETE:I = 0x8

.field public static final PLAYER_CHAPTERSENDING_COMPLETE:I = 0x7

.field public static final PLAYER_ERROR_AFTER_TIME_LIMIT:I = 0x1

.field public static final PLAYER_ERROR_MEDIA_EJECT:I = 0x2

.field public static final PLAYER_ERROR_MEDIA_INTERNAL:I = 0x3

.field public static final PLAYER_ERROR_TERM_EXPIRATION:I = 0x0

.field public static final PLAYER_EXPIRATION:I = 0xa

.field public static final PLAYER_FAST_FORWARD_CHANGE:I = 0x1

.field public static final PLAYER_FAST_FORWARD_COMPLETE:I = 0x5

.field public static final PLAYER_FAST_FORWARD_TO_PLAY:I = 0x9

.field public static final PLAYER_INFO_UNKNOWN:I = 0x0

.field protected static final PLAYER_NO_TRANSIT:I = 0x63

.field public static final PLAYER_PLAY_COMPLETE:I = 0x3

.field public static final PLAYER_PLAY_ROUNDSTART:I = 0x4

.field public static final PLAYER_REWIND_CHANGE:I = 0x2

.field public static final PLAYER_REWIND_COMPLETE:I = 0x6

.field protected static final REWIND_NO:I = 0x1

.field protected static final REWIND_OK:I = 0x0

.field protected static final SLEEP_TIME:J = 0x3e8L

.field public static final STEREO_VIEW_TYPE_2D:I = 0x0

.field public static final STEREO_VIEW_TYPE_3D:I = 0x1

.field public static final TRICKPLAY_CHAPTERRETURN:I = 0x4

.field public static final TRICKPLAY_CHAPTERSENDING:I = 0x3

.field public static final TRICKPLAY_FASTFORWARDING:I = 0x1

.field public static final TRICKPLAY_REWINDING:I = 0x2

.field public static final TRICKPLAY_TEMPORARY_STOP:I = 0x0

.field protected static final WAIT_TIME:J = 0x1388L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
