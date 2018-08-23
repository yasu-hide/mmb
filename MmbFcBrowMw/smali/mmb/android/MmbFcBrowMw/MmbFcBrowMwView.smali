.class public final Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
.super Landroid/view/ViewGroup;
.source "MmbFcBrowMwView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;
    }
.end annotation


# static fields
.field private static final API_REJECT_MEDIA_PAUSE:I = 0x2

.field private static final API_REJECT_MEDIA_PLAY:I = 0x1

.field private static final API_REJECT_MEDIA_SEEKTO:I = 0x3

.field public static final AUDIO_MUTE_OFF:I = 0x0

.field public static final AUDIO_MUTE_ON:I = 0x1

.field public static final AUTHENTICATION_ERROR:I = -0x71

.field public static final BLUETOOTH_DEVICE:I = 0x1

.field public static final CERTIFICATION_ERROR:I = -0x131

.field public static final COMMUNICATION_ERROR:I = -0x64

.field public static final COMPOSITING_INTERNAL_HANDLE_DONE:I = 0x0

.field public static final COMPOSITING_INTERNAL_HANDLE_ON_GOING:I = 0x1

.field public static final COMPOSITING_INTERNAL_HANDLE_SELECTION:I = 0x2

.field public static final CONTENT_SIZE_TOO_LARGE:I = -0x72

.field private static final CRID_MAX_LENGTH:I = 0xff

.field private static final CRID_PREFIX:Ljava/lang/String; = "crid://"

.field private static final DEFAULT_USER_AGENT_FORMAT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/534.23 (KHTML, like Gecko) Mobile TmmBrowser/1.0"

.field private static final DELIMITER:Ljava/lang/String; = "#"

.field private static final DELIMITER_LENGTH:I

.field public static final ERROR_INITIALIZATION_FAILED:I = 0x2bc

.field public static final ERROR_UNINITIALIZED:I = -0x4

.field private static final FCBROWSER_FALSE:I = 0x0

.field private static final FCBROWSER_FILE_SCHEME:Ljava/lang/String; = "file:///"

.field private static final FCBROWSER_HTTP_SCHEME:Ljava/lang/String; = "http://"

.field private static final FCBROWSER_TRUE:I = 0x1

.field private static final FILENAME_MAX_LENGTH:I = 0xff

.field public static final FIRST_LANGUAGE:I = 0x0

.field public static final HTTP_ERROR_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_ERROR_BAD_REQUEST:I = 0x190

.field public static final HTTP_ERROR_CONFLICT:I = 0x199

.field public static final HTTP_ERROR_EXPECTATION_FAILED:I = 0x1a1

.field public static final HTTP_ERROR_FORBIDDEN:I = 0x193

.field public static final HTTP_ERROR_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_ERROR_GONE:I = 0x19a

.field public static final HTTP_ERROR_HTTP_VERSION_NOT_SUPPORTED:I = 0x1f9

.field public static final HTTP_ERROR_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final HTTP_ERROR_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_ERROR_METHOD_NOT_ALLOWED:I = 0x195

.field public static final HTTP_ERROR_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_ERROR_NOT_FOUND:I = 0x194

.field public static final HTTP_ERROR_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_ERROR_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_ERROR_PRECONDITION_FAILED:I = 0x19c

.field public static final HTTP_ERROR_PROXY_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final HTTP_ERROR_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field public static final HTTP_ERROR_REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_ERROR_REQUEST_TIMEOUT:I = 0x198

.field public static final HTTP_ERROR_REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final HTTP_ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_ERROR_UNAUTHORIZED:I = 0x191

.field public static final HTTP_ERROR_UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final INPUT_ERROR:I = -0x3

.field public static final INTERNAL_DEVICE:I = 0x0

.field public static final INVALID_SCHEME_ERROR:I = -0x2

.field public static final INVALID_SEQUENCE_LABEL_ERROR:I = -0x5

.field public static final INVALID_URI_ERROR:I = -0x1

.field public static final LICENSE_ERROR_COUNT_OVER:I = 0x324

.field public static final LICENSE_ERROR_IN_USE:I = 0x320

.field public static final LICENSE_ERROR_NO_LICENSE:I = 0x326

.field public static final LICENSE_ERROR_OTHERS:I = 0x325

.field public static final LICENSE_ERROR_PERIOD_OVER:I = 0x322

.field public static final LICENSE_ERROR_PERIOD_UNDER:I = 0x321

.field public static final LICENSE_ERROR_SPAN_OVER:I = 0x323

.field public static final LOADING_CANCELLED:I = 0x3e7

.field private static final MEDIA_DEFAULT_VALUE:I = 0x0

.field public static final MEDIA_ERROR_ALREADY_IN_USE:I = 0x6d

.field public static final MEDIA_ERROR_INTERNAL:I = 0x6a

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_EVENT_PLAY:Z = true

.field private static final MEDIA_EVENT_STOP:Z = false

.field private static final MEDIA_NO_PLAY:I = -0x1

.field private static final MEDIA_NO_SET_RESOURCE:I = -0x1

.field private static final MEDIA_URI_ERROR:I = -0x1

.field private static final METADATA_INITBITMAP_TIME:I = 0x0

.field private static final MMBCACASDRMMW_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbCaCasDrmMw.so"

.field private static final MMBFCBROWMW_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbFcBrowMw.so"

.field private static final MMBFCCTLCLTMW_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbFcCtlCltMw.so"

.field private static final MMBFCLICEMW_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbFcLiceMw.so"

.field private static final MMBFCMFESTMW_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbFcMfestMw.so"

.field private static final MMBPOAESMP_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbPoAesMp.so"

.field private static final MMBPOHASHMP_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbPoHashMp.so"

.field private static final MMBPOINFOMP_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbPoInfoMp.so"

.field private static final MMBPORANDMP_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbPoRandMp.so"

.field private static final MMBPOSECCLKMP_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbPoSecClkMp.so"

.field private static final MMBPOXMLMP_LIBRARY_NAME:Ljava/lang/String; = "/system/lib/libMmbPoXmlMp.so"

.field private static final MMB_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private static final MSG_EVENT_DIM_CHANGE:I = 0x4

.field private static final MSG_EVENT_ERROR:I = 0x1

.field private static final MSG_EVENT_INIT_DONE:I = 0x0

.field private static final MSG_EVENT_LOAD_COMPLETE:I = 0x2

.field private static final MSG_EVENT_SCHEME:I = 0x3

.field static final MSG_SET_DISPLAY_AND_CAPTION:I = 0xc8

.field private static final MSG_WEBKIT_AUDIO_CREATE:I = 0x68

.field private static final MSG_WEBKIT_AUDIO_EVENT_OCCURRED:I = 0x6f

.field private static final MSG_WEBKIT_AUDIO_LOAD_RESOURCE:I = 0x72

.field private static final MSG_WEBKIT_AUDIO_RELEASE:I = 0x6e

.field private static final MSG_WEBKIT_AUDIO_RESPONSE:I = 0x6a

.field private static final MSG_WEBKIT_NEW_MEDIAPLAYER:I = 0x71

.field private static final MSG_WEBKIT_VIDEO_CREATE:I = 0x67

.field private static final MSG_WEBKIT_VIDEO_ENTER_FULLSCREEN:I = 0x6b

.field private static final MSG_WEBKIT_VIDEO_EVENT_OCCURRED:I = 0x73

.field private static final MSG_WEBKIT_VIDEO_EXIT_FULLSCREEN:I = 0x6c

.field private static final MSG_WEBKIT_VIDEO_LOAD_RESOURCE:I = 0x70

.field private static final MSG_WEBKIT_VIDEO_RELAYOUT:I = 0x66

.field private static final MSG_WEBKIT_VIDEO_RELEASE:I = 0x6d

.field private static final MSG_WEBKIT_VIDEO_RESPONSE:I = 0x69

.field private static final MSG_WEBKIT_VIEW_INVALIDATE:I = 0x64

.field private static final MSG_WEBKIT_VIEW_INVALIDATE_RECT:I = 0x65

.field public static final PRIMARY_AUDIO:I = 0x0

.field private static final RENDER_IMG_LIST:I = 0xa

.field private static final RESPONSE_MEDIA_ABORT:I = 0x6

.field private static final RESPONSE_MEDIA_API_REJECTED:I = 0x15

.field private static final RESPONSE_MEDIA_BUFFER_UPDATED:I = 0xc

.field private static final RESPONSE_MEDIA_DURATION_CHANGED:I = 0x13

.field private static final RESPONSE_MEDIA_ERROR:I = 0x5

.field private static final RESPONSE_MEDIA_EXIT_FULLSCREEN:I = 0xb

.field private static final RESPONSE_MEDIA_FRAME_UPDATED:I = 0xf

.field private static final RESPONSE_MEDIA_LOAD_COMPLETE:I = 0x2

.field private static final RESPONSE_MEDIA_PAUSE_COMPLETE:I = 0x8

.field private static final RESPONSE_MEDIA_PLAYBACK_CREATED:I = 0xd

.field private static final RESPONSE_MEDIA_PLAYBACK_READY:I = 0x1

.field private static final RESPONSE_MEDIA_PLAYING_STATUS:I = 0xe

.field private static final RESPONSE_MEDIA_PLAY_COMPLETE:I = 0x9

.field private static final RESPONSE_MEDIA_PLAY_END:I = 0x3

.field private static final RESPONSE_MEDIA_RATE_CHANGED:I = 0x12

.field private static final RESPONSE_MEDIA_SEEK_COMPLETE:I = 0xa

.field private static final RESPONSE_MEDIA_SIZE_CHANGED:I = 0x14

.field private static final RESPONSE_MEDIA_STOP_COMPLETE:I = 0x7

.field private static final RESPONSE_MEDIA_TOTAL_TIME:I = 0x4

.field private static final RESPONSE_MEDIA_TRICK_ENABLED:I = 0x10

.field private static final RESPONSE_MEDIA_VOLUME_CHANGED:I = 0x11

.field private static final RES_IMG_LIST:I = 0x12

.field public static final SECONDARY_AUDIO:I = 0x1

.field public static final SECOND_LANGUAGE:I = 0x1

.field private static final SEQUENCE_LABEL_MAX_LENGTH:I = 0x3c

.field public static final STEREO_AUDIO:I = 0x2

.field static final TARGET_STATE_CREATED:I = 0x1

.field static final TARGET_STATE_ERROR:I = 0x8

.field static final TARGET_STATE_PAUSE:I = 0x6

.field static final TARGET_STATE_PLAYING:I = 0x3

.field static final TARGET_STATE_PLAY_END:I = 0x4

.field static final TARGET_STATE_PLAY_READY:I = 0x2

.field static final TARGET_STATE_RESUME:I = 0x7

.field static final TARGET_STATE_STOP:I = 0x5

.field public static final TLS_DISABLED_SSL_DISABLED:I = 0x2

.field public static final TLS_ENABLED_SSL_DISABLED:I = 0x1

.field public static final TLS_ENABLED_SSL_ENABLED:I = 0x0

.field public static final TLS_SSL_ERROR:I = -0x12c

.field public static final TMM_CTLCLT_MODULE_ERROR:I = 0x2c0

.field public static final TMM_FC_CONTENT_READ_FAILED:I = 0x2bf

.field public static final TMM_LICENSE_MODULE_ERROR:I = 0x2be

.field public static final TMM_MANIFEST_PARSING_FAILED:I = 0x2bd

.field public static final TMM_PARENTAL_LOCK_ERROR:I = 0x2c1

.field private static final URI_MAX_LENGTH:I = 0x1ff

.field private static final VIDEOVIEW_DEFAULT_HEIGHT:I = 0x1

.field private static final VIDEOVIEW_DEFAULT_WIDTH:I = 0x1

.field private static final VIDEOVIEW_NORMAL_PLAYRATE:I = 0x1

.field public static final VIDEO_DIMENSION_2D:I = 0x0

.field public static final VIDEO_DIMENSION_3D:I = 0x1

.field static log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

.field private static mCurrentUri:Ljava/lang/String;

.field private static mUserAgent:Ljava/lang/String;

.field private static mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

.field private static stopTry:I


# instance fields
.field private final MEDIA_ERROR_AFTER_TIME_LIMIT:I

.field private final MEDIA_ERROR_BEFORE_TIME_LIMIT:I

.field private final MEDIA_ERROR_COUNT_LIMIT:I

.field private final MEDIA_ERROR_LICENSE_IN_USE:I

.field private final MEDIA_ERROR_PARENTAL_LOCK:I

.field private final MEDIA_ERROR_TERM_EXPIRED:I

.field private audioHW:I

.field private audioMute:I

.field private captionLang:I

.field private context:Landroid/content/Context;

.field private densityDpi:I

.field private fullScreenMode:Z

.field private fullScreenVideoViewId:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hashMapAudio:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;",
            ">;"
        }
    .end annotation
.end field

.field private hashMapVideoView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private isDestroy:Z

.field private isDispCaption:Z

.field private isInactiveMode:Z

.field private isNewInstance:Z

.field private isPlayingMedia:Z

.field private loadUri:Ljava/lang/String;

.field private mBrowViewEditor:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

.field private mEii:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;

.field private mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

.field private mediaId:I

.field private metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

.field private mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field private onEventOccurredListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

.field private playMediaId:I

.field private res:Landroid/content/res/Resources;

.field private rotateBackupWebkitFrameBitmap:Landroid/graphics/Bitmap;

.field private sapMode:I

.field setResourcedMediaId:I

.field private tOnDoubleTapListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;

.field private tOnGestureListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;

.field private tOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;

.field private videoFrameBitmap:Landroid/graphics/Bitmap;

.field private webkitFrameBitmap:Landroid/graphics/Bitmap;

.field private webkitFrameView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

.field webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

.field private webkitUnremovedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    const-string v0, "content://com.nttdocomo.mmb.android.mmbsv/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MMB_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 203
    const/4 v0, 0x0

    sput v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    .line 217
    new-instance v0, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    invoke-direct {v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;-><init>()V

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    .line 219
    sput-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mCurrentUri:Ljava/lang/String;

    .line 220
    sput-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mUserAgent:Ljava/lang/String;

    .line 234
    sput-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 244
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->DELIMITER_LENGTH:I

    .line 271
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getLogMode()Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbSetDebuggable(Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;)V

    .line 274
    const-string v0, "/system/lib/libMmbFcBrowMw.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 204
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 205
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitUnremovedBitmap:Landroid/graphics/Bitmap;

    .line 206
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->rotateBackupWebkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 207
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    .line 216
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mBrowViewEditor:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    .line 222
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    .line 223
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaId:I

    .line 224
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 225
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 227
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenVideoViewId:I

    .line 231
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingMedia:Z

    .line 235
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .line 236
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-direct {v0, p0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    .line 255
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 256
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->captionLang:I

    .line 257
    iput-boolean v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDispCaption:Z

    .line 258
    const/4 v0, 0x2

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->sapMode:I

    .line 259
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    .line 260
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    .line 263
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    .line 264
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    .line 265
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    .line 266
    const-string v0, "about:blank"

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadUri:Ljava/lang/String;

    .line 267
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isInactiveMode:Z

    .line 268
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    .line 4839
    const/16 v0, 0x66

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_BEFORE_TIME_LIMIT:I

    .line 4840
    const/16 v0, 0x67

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_AFTER_TIME_LIMIT:I

    .line 4841
    const/16 v0, 0x68

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_TERM_EXPIRED:I

    .line 4842
    const/16 v0, 0x69

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_COUNT_LIMIT:I

    .line 4843
    const/16 v0, 0x6b

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_LICENSE_IN_USE:I

    .line 4844
    const/16 v0, 0x6c

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_PARENTAL_LOCK:I

    .line 328
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    .line 329
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initMmbFcBrowMwView()V

    .line 330
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcBrowMwView(Context cxt)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 205
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitUnremovedBitmap:Landroid/graphics/Bitmap;

    .line 206
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->rotateBackupWebkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 207
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    .line 216
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mBrowViewEditor:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    .line 222
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    .line 223
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaId:I

    .line 224
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 225
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 227
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenVideoViewId:I

    .line 231
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingMedia:Z

    .line 235
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .line 236
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-direct {v0, p0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    .line 255
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 256
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->captionLang:I

    .line 257
    iput-boolean v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDispCaption:Z

    .line 258
    const/4 v0, 0x2

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->sapMode:I

    .line 259
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    .line 260
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    .line 263
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    .line 264
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    .line 265
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    .line 266
    const-string v0, "about:blank"

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadUri:Ljava/lang/String;

    .line 267
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isInactiveMode:Z

    .line 268
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    .line 4839
    const/16 v0, 0x66

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_BEFORE_TIME_LIMIT:I

    .line 4840
    const/16 v0, 0x67

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_AFTER_TIME_LIMIT:I

    .line 4841
    const/16 v0, 0x68

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_TERM_EXPIRED:I

    .line 4842
    const/16 v0, 0x69

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_COUNT_LIMIT:I

    .line 4843
    const/16 v0, 0x6b

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_LICENSE_IN_USE:I

    .line 4844
    const/16 v0, 0x6c

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_PARENTAL_LOCK:I

    .line 344
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    .line 345
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initMmbFcBrowMwView()V

    .line 346
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcBrowMwView(Context cxt, AttributeSet attrs)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 359
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 205
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitUnremovedBitmap:Landroid/graphics/Bitmap;

    .line 206
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->rotateBackupWebkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 207
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    .line 216
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mBrowViewEditor:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    .line 222
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    .line 223
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaId:I

    .line 224
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 225
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 227
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenVideoViewId:I

    .line 231
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingMedia:Z

    .line 235
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .line 236
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-direct {v0, p0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    .line 255
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 256
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->captionLang:I

    .line 257
    iput-boolean v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDispCaption:Z

    .line 258
    const/4 v0, 0x2

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->sapMode:I

    .line 259
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    .line 260
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    .line 263
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    .line 264
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    .line 265
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    .line 266
    const-string v0, "about:blank"

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadUri:Ljava/lang/String;

    .line 267
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isInactiveMode:Z

    .line 268
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    .line 4839
    const/16 v0, 0x66

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_BEFORE_TIME_LIMIT:I

    .line 4840
    const/16 v0, 0x67

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_AFTER_TIME_LIMIT:I

    .line 4841
    const/16 v0, 0x68

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_TERM_EXPIRED:I

    .line 4842
    const/16 v0, 0x69

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_COUNT_LIMIT:I

    .line 4843
    const/16 v0, 0x6b

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_LICENSE_IN_USE:I

    .line 4844
    const/16 v0, 0x6c

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MEDIA_ERROR_PARENTAL_LOCK:I

    .line 361
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    .line 362
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initMmbFcBrowMwView()V

    .line 363
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcBrowMwView(Context cxt, AttributeSet attrs, int defStyle)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private CopyDefaultSettingFolder(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "aAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 4229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/MmbFcBrowMw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4230
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4231
    .local v0, "defaultsettingdirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4232
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4235
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private CopyImageSrcForFCBrowser(Landroid/content/pm/ApplicationInfo;)Z
    .locals 23
    .param p1, "aAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 4239
    if-nez p1, :cond_0

    .line 4240
    const/16 v21, 0x0

    .line 4330
    :goto_0
    return v21

    .line 4243
    :cond_0
    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/MmbFcBrowMw"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4244
    .local v15, "path":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/image_ex/render_android"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4245
    .local v16, "rendersrcdir":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/image_ex/resource"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4247
    .local v17, "ressrcdir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 4248
    .local v9, "listrenderfiles":[Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 4250
    .local v10, "listresfiles":[Ljava/io/File;
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    array-length v0, v9

    move/from16 v21, v0

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    array-length v0, v10

    move/from16 v21, v0

    const/16 v22, 0x12

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 4251
    const/16 v21, 0x0

    goto :goto_0

    .line 4254
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 4255
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    .line 4258
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v22, "image_ex/render_android"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4259
    .local v5, "filelist":[Ljava/lang/String;
    array-length v7, v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 4262
    .local v7, "ifilecnt":I
    const/4 v8, 0x0

    .line 4263
    .local v8, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 4264
    .local v11, "os":Ljava/io/OutputStream;
    const/4 v13, 0x0

    .line 4268
    .local v13, "outfile":Ljava/io/File;
    const/4 v6, 0x0

    .local v6, "i":I
    move-object v14, v13

    .end local v13    # "outfile":Ljava/io/File;
    .local v14, "outfile":Ljava/io/File;
    move-object v12, v11

    .end local v11    # "os":Ljava/io/OutputStream;
    .local v12, "os":Ljava/io/OutputStream;
    :goto_1
    if-ge v6, v7, :cond_2

    .line 4269
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "image_ex/render_android/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v5, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4270
    .local v20, "strfilenamesrc":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v5, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4271
    .local v19, "strdestfile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 4273
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4274
    .end local v14    # "outfile":Ljava/io/File;
    .restart local v13    # "outfile":Ljava/io/File;
    :try_start_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4276
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v18

    .line 4277
    .local v18, "size":I
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 4279
    .local v2, "buffer":[B
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    .line 4280
    invoke-virtual {v11, v2}, Ljava/io/OutputStream;->write([B)V

    .line 4282
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 4283
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4268
    add-int/lit8 v6, v6, 0x1

    move-object v14, v13

    .end local v13    # "outfile":Ljava/io/File;
    .restart local v14    # "outfile":Ljava/io/File;
    move-object v12, v11

    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .line 4287
    .end local v2    # "buffer":[B
    .end local v18    # "size":I
    .end local v19    # "strdestfile":Ljava/lang/String;
    .end local v20    # "strfilenamesrc":Ljava/lang/String;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v22, "image_ex/resource"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 4288
    array-length v7, v5

    .line 4290
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_3

    .line 4291
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "image_ex/resource/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v5, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4292
    .restart local v20    # "strfilenamesrc":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v5, v6

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4293
    .restart local v19    # "strdestfile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 4295
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4296
    .end local v14    # "outfile":Ljava/io/File;
    .restart local v13    # "outfile":Ljava/io/File;
    :try_start_5
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4299
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v18

    .line 4300
    .restart local v18    # "size":I
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 4302
    .restart local v2    # "buffer":[B
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    .line 4303
    invoke-virtual {v11, v2}, Ljava/io/OutputStream;->write([B)V

    .line 4305
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 4306
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4290
    add-int/lit8 v6, v6, 0x1

    move-object v14, v13

    .end local v13    # "outfile":Ljava/io/File;
    .restart local v14    # "outfile":Ljava/io/File;
    move-object v12, v11

    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    goto :goto_2

    .line 4313
    .end local v2    # "buffer":[B
    .end local v18    # "size":I
    .end local v19    # "strdestfile":Ljava/lang/String;
    .end local v20    # "strfilenamesrc":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 4314
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 4316
    :cond_4
    if-eqz v12, :cond_5

    .line 4317
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    move-object v13, v14

    .end local v14    # "outfile":Ljava/io/File;
    .restart local v13    # "outfile":Ljava/io/File;
    move-object v11, v12

    .line 4323
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :cond_6
    :goto_3
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 4319
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v13    # "outfile":Ljava/io/File;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v14    # "outfile":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 4320
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v13, v14

    .end local v14    # "outfile":Ljava/io/File;
    .restart local v13    # "outfile":Ljava/io/File;
    move-object v11, v12

    .line 4322
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 4309
    .end local v3    # "e":Ljava/io/IOException;
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v13    # "outfile":Ljava/io/File;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v14    # "outfile":Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v13, v14

    .end local v14    # "outfile":Ljava/io/File;
    .restart local v13    # "outfile":Ljava/io/File;
    move-object v11, v12

    .line 4310
    .end local v12    # "os":Ljava/io/OutputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :goto_4
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 4313
    if-eqz v8, :cond_7

    .line 4314
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 4316
    :cond_7
    if-eqz v11, :cond_6

    .line 4317
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 4319
    :catch_2
    move-exception v3

    .line 4320
    .local v3, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 4324
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "filelist":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "ifilecnt":I
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "listrenderfiles":[Ljava/io/File;
    .end local v10    # "listresfiles":[Ljava/io/File;
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v13    # "outfile":Ljava/io/File;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "rendersrcdir":Ljava/io/File;
    .end local v17    # "ressrcdir":Ljava/io/File;
    :catch_3
    move-exception v4

    .line 4325
    .local v4, "e2":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4330
    .end local v4    # "e2":Ljava/io/FileNotFoundException;
    :goto_5
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 4312
    .restart local v5    # "filelist":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "ifilecnt":I
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "listrenderfiles":[Ljava/io/File;
    .restart local v10    # "listresfiles":[Ljava/io/File;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v14    # "outfile":Ljava/io/File;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "rendersrcdir":Ljava/io/File;
    .restart local v17    # "ressrcdir":Ljava/io/File;
    :catchall_0
    move-exception v21

    move-object v13, v14

    .end local v14    # "outfile":Ljava/io/File;
    .restart local v13    # "outfile":Ljava/io/File;
    move-object v11, v12

    .line 4313
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :goto_6
    if-eqz v8, :cond_8

    .line 4314
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 4316
    :cond_8
    if-eqz v11, :cond_9

    .line 4317
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    .line 4321
    :cond_9
    :goto_7
    :try_start_d
    throw v21
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 4326
    .end local v5    # "filelist":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "ifilecnt":I
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "listrenderfiles":[Ljava/io/File;
    .end local v10    # "listresfiles":[Ljava/io/File;
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v13    # "outfile":Ljava/io/File;
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "rendersrcdir":Ljava/io/File;
    .end local v17    # "ressrcdir":Ljava/io/File;
    :catch_4
    move-exception v3

    .line 4327
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 4319
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "filelist":[Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "ifilecnt":I
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "listrenderfiles":[Ljava/io/File;
    .restart local v10    # "listresfiles":[Ljava/io/File;
    .restart local v11    # "os":Ljava/io/OutputStream;
    .restart local v13    # "outfile":Ljava/io/File;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "rendersrcdir":Ljava/io/File;
    .restart local v17    # "ressrcdir":Ljava/io/File;
    :catch_5
    move-exception v3

    .line 4320
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_7

    .line 4312
    .end local v3    # "e":Ljava/io/IOException;
    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v19    # "strdestfile":Ljava/lang/String;
    .restart local v20    # "strfilenamesrc":Ljava/lang/String;
    :catchall_1
    move-exception v21

    move-object v11, v12

    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    goto :goto_6

    .end local v19    # "strdestfile":Ljava/lang/String;
    .end local v20    # "strfilenamesrc":Ljava/lang/String;
    :catchall_2
    move-exception v21

    goto :goto_6

    .line 4309
    .end local v11    # "os":Ljava/io/OutputStream;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v19    # "strdestfile":Ljava/lang/String;
    .restart local v20    # "strfilenamesrc":Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v11, v12

    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    goto :goto_4

    :catch_7
    move-exception v3

    goto :goto_4
.end method

.method static synthetic access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    return v0
.end method

.method static synthetic access$1002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    return p1
.end method

.method static synthetic access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitAudioReady(I)V

    return-void
.end method

.method static synthetic access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitAudioCompletion(I)V

    return-void
.end method

.method static synthetic access$1300()Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    return-object v0
.end method

.method static synthetic access$1302(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 110
    sput-object p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    return-object p0
.end method

.method static synthetic access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    return v0
.end method

.method static synthetic access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    return v0
.end method

.method static synthetic access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    return p1
.end method

.method static synthetic access$1600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleTextAfterCursor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIZZZ)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnKeyDown(IIZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Ljava/lang/String;III)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnIMSetComposition(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnIMConfirmComposition(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnIMFinishComposition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    return v0
.end method

.method static synthetic access$2202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    return p1
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    sput-object p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getCurrentDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onEventOccurredListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    return-object v0
.end method

.method static synthetic access$2602(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    return v0
.end method

.method static synthetic access$2802(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    return p1
.end method

.method static synthetic access$2900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitVideoViewCreate(I)V

    return-void
.end method

.method static synthetic access$3000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitAudioCreate(I)V

    return-void
.end method

.method static synthetic access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IIIII)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeResponseMedia(IIIII)V

    return-void
.end method

.method static synthetic access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenVideoViewId:I

    return v0
.end method

.method static synthetic access$3202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenVideoViewId:I

    return p1
.end method

.method static synthetic access$3300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    return-object v0
.end method

.method static synthetic access$3302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    .prologue
    .line 110
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    return-object p1
.end method

.method static synthetic access$3400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    return-object v0
.end method

.method static synthetic access$3600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    return-object v0
.end method

.method static synthetic access$3700()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    return v0
.end method

.method static synthetic access$3702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 110
    sput p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    return p0
.end method

.method static synthetic access$3708()I
    .locals 2

    .prologue
    .line 110
    sget v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    return v0
.end method

.method static synthetic access$3802(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingMedia:Z

    return p1
.end method

.method static synthetic access$3900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    return v0
.end method

.method static synthetic access$4000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    return v0
.end method

.method static synthetic access$4100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeDisplayInit()V

    return-void
.end method

.method static synthetic access$4200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    return-object v0
.end method

.method static synthetic access$4300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->rotateBackupWebkitFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 110
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->rotateBackupWebkitFrameBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    return v0
.end method

.method static synthetic access$4600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;IFFFFFF)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F

    .prologue
    .line 110
    invoke-direct/range {p0 .. p7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnEvent(IFFFFFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$6000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitExitFullscreen(I)V

    return-void
.end method

.method static synthetic access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 110
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getCurrentDefaultUserAgent()Ljava/lang/String;
    .locals 10

    .prologue
    .line 579
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 580
    .local v4, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 582
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 583
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 584
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    :goto_0
    const-string v7, "; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "language":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 592
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "country":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 595
    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    .end local v1    # "country":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 603
    .local v5, "model":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 604
    const-string v7, "; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    :cond_1
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 609
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 610
    const-string v7, " Build/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    :cond_2
    const-string v7, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/534.23 (KHTML, like Gecko) Mobile TmmBrowser/1.0"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 586
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    .end local v5    # "model":Ljava/lang/String;
    :cond_3
    const-string v7, "1.0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 599
    .restart local v3    # "language":Ljava/lang/String;
    :cond_4
    const-string v7, "en"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static getLogMode()Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;
    .locals 8

    .prologue
    .line 279
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 280
    .local v4, "spClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v2, v6

    .line 282
    .local v2, "paramTypes":[Ljava/lang/Class;
    const-string v6, "get"

    invoke-virtual {v4, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 283
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.mmb.tmmdebuglog"

    aput-object v7, v3, v6

    .line 284
    .local v3, "params":[Ljava/lang/Object;
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 285
    .local v5, "value":Ljava/lang/String;
    const-string v6, "exist"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

    .line 289
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 285
    .restart local v1    # "getMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    .restart local v3    # "params":[Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_0
    sget-object v6, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "failed to decide policy to output log by system property"

    invoke-virtual {v6, v7, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    sget-object v6, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog$MmbOutLogMode;

    goto :goto_0
.end method

.method private static final getLowerCaseCrid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "aUri"    # Ljava/lang/String;

    .prologue
    .line 3732
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 3743
    .end local p0    # "aUri":Ljava/lang/String;
    .local v0, "crid":Ljava/lang/String;
    .local v1, "delimAndLater":Ljava/lang/String;
    .local v2, "delimPos":I
    :cond_0
    :goto_0
    return-object p0

    .line 3736
    .end local v0    # "crid":Ljava/lang/String;
    .end local v1    # "delimAndLater":Ljava/lang/String;
    .end local v2    # "delimPos":I
    .restart local p0    # "aUri":Ljava/lang/String;
    :cond_1
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3737
    .restart local v2    # "delimPos":I
    if-gez v2, :cond_2

    .line 3738
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3741
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3742
    .restart local v0    # "crid":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3743
    .restart local v1    # "delimAndLater":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private initMmbFcBrowMwView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3639
    iput-object p0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 3640
    new-instance v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-direct {v2, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    .line 3641
    new-instance v1, Landroid/view/SurfaceView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 3642
    .local v1, "sv":Landroid/view/SurfaceView;
    invoke-virtual {p0, v1, v3, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->addView(Landroid/view/View;II)V

    .line 3643
    invoke-virtual {p0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setFocusableInTouchMode(Z)V

    .line 3644
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3646
    :try_start_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.nttdocomo.mmb.android.MmbFcBrowMw.res"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->res:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3651
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    .line 3652
    return-void

    .line 3648
    :catch_0
    move-exception v0

    .line 3649
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initializeFileSystemForFCBrowser()V
    .locals 2

    .prologue
    .line 4224
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4225
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->CopyDefaultSettingFolder(Landroid/content/pm/ApplicationInfo;)Z

    .line 4226
    return-void
.end method

.method private isValidCrid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3656
    if-nez p1, :cond_1

    .line 3666
    :cond_0
    :goto_0
    return v1

    .line 3659
    :cond_1
    const/16 v2, 0xff

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_0

    .line 3666
    const/4 v1, 0x1

    goto :goto_0

    .line 3662
    :catch_0
    move-exception v0

    .line 3663
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isValidFilename(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aFilename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3671
    if-nez p1, :cond_1

    .line 3681
    :cond_0
    :goto_0
    return v1

    .line 3674
    :cond_1
    const/16 v2, 0xff

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_0

    .line 3681
    const/4 v1, 0x1

    goto :goto_0

    .line 3677
    :catch_0
    move-exception v0

    .line 3678
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isValidSequenceLabel(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aSeqLabel"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3686
    if-nez p1, :cond_1

    .line 3696
    :cond_0
    :goto_0
    return v1

    .line 3689
    :cond_1
    const/16 v2, 0x3c

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_0

    .line 3696
    const/4 v1, 0x1

    goto :goto_0

    .line 3692
    :catch_0
    move-exception v0

    .line 3693
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isValidUri(Ljava/lang/String;)Z
    .locals 7
    .param p1, "aUri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3701
    if-nez p1, :cond_1

    .line 3728
    :cond_0
    :goto_0
    return v4

    .line 3704
    :cond_1
    const/16 v5, 0x1ff

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 3708
    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3709
    .local v1, "delimiterindex":I
    if-gez v1, :cond_3

    .line 3710
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isValidCrid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3728
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 3714
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3715
    .local v0, "crid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isValidCrid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3719
    sget v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->DELIMITER_LENGTH:I

    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3720
    .local v3, "filename":Ljava/lang/String;
    invoke-direct {p0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isValidFilename(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 3724
    .end local v0    # "crid":Ljava/lang/String;
    .end local v1    # "delimiterindex":I
    .end local v3    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3725
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private native nativeCanGoBack()Z
.end method

.method private native nativeCanGoForward()Z
.end method

.method private native nativeClearCache(Z)V
.end method

.method private native nativeClearCookie()V
.end method

.method private native nativeDeleteResumePageInfo()V
.end method

.method private native nativeDisplayInit()V
.end method

.method private native nativeDisplayOnSizeChanged(II)V
.end method

.method private native nativeGetCharacterEncoding()Ljava/lang/String;
.end method

.method private native nativeGetCoreBuildNumber()I
.end method

.method private native nativeGetCoreInfo()Ljava/lang/String;
.end method

.method private native nativeGetCoreVersion()I
.end method

.method private native nativeGetCurrentUri()V
.end method

.method private native nativeGetCurrentUserAgent()V
.end method

.method private native nativeGetScale()F
.end method

.method private native nativeGetTlsSslSupport()I
.end method

.method private native nativeGoBack()V
.end method

.method private native nativeGoForward()V
.end method

.method private native nativeHandleOnEvent(IFFFFFF)Z
.end method

.method private native nativeHandleOnIMConfirmComposition(Ljava/lang/String;II)Z
.end method

.method private native nativeHandleOnIMFinishComposition()Z
.end method

.method private native nativeHandleOnIMSetComposition(Ljava/lang/String;III)Z
.end method

.method private native nativeHandleOnKeyDown(IIZZZ)Z
.end method

.method private native nativeHandleOnKeyUp(IIZZZ)Z
.end method

.method private native nativeHandleOnMultiTouch(IIIII)Z
.end method

.method private native nativeHandleTextAfterCursor(I)Ljava/lang/String;
.end method

.method private native nativeHandleTextBeforeCursor(I)Ljava/lang/String;
.end method

.method private native nativeHasFocusNextSubmit()Z
.end method

.method private native nativeHasFocusNextTextfield()Z
.end method

.method private native nativeIsPaused()Z
.end method

.method private native nativeLoadRequest(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native nativeLoadRequestWithResuming(Ljava/lang/String;)Z
.end method

.method private native nativeMediaInit()V
.end method

.method private native nativeOwklInit()V
.end method

.method private native nativeOwklTerminate()V
.end method

.method private native nativePauseMedia()V
.end method

.method private native nativePauseView(Z)V
.end method

.method private native nativeReload()V
.end method

.method private native nativeResponseMedia(IIIII)V
.end method

.method private native nativeResumeView()V
.end method

.method private native nativeSetCharacterEncoding(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;)V
.end method

.method private native nativeSetCookieEnabled(Z)V
.end method

.method private native nativeSetInitialScale(I)V
.end method

.method private native nativeSetJsEnabled(Z)V
.end method

.method private native nativeSetRootPath(Ljava/lang/String;)V
.end method

.method private native nativeSetSendRefererEnabled(Z)V
.end method

.method private native nativeSetTlsSslSupport(I)V
.end method

.method private native nativeSetUserAgent(Ljava/lang/String;)V
.end method

.method private native nativeSetVideoCaptionEnable(Z)V
.end method

.method private native nativeStopLoading()V
.end method

.method private native nativeZoomIn()V
.end method

.method private native nativeZoomOut()V
.end method

.method private webkitAudioCompletion(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3007
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitAudioCompletion id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3008
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3009
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_1

    .line 3020
    :cond_0
    :goto_0
    return-void

    .line 3012
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaState(I)V

    .line 3013
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6a

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3014
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3015
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getLoop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3016
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6f

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v6, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3017
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitAudioCreate(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aIsTrickplay"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 2822
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitAudioCreate uri : %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 2823
    if-nez p1, :cond_1

    .line 2979
    :cond_0
    :goto_0
    return v1

    .line 2827
    :cond_1
    const-string v3, "crid://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2831
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaId:I

    .line 2833
    .local v1, "id":I
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;-><init>(Landroid/content/Context;)V

    .line 2834
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setUri(Ljava/lang/String;)V

    .line 2835
    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setAudioId(I)V

    .line 2836
    invoke-virtual {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMmbFcBrowMwView(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    .line 2837
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setTrickplay(Z)V

    .line 2839
    invoke-virtual {v0, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaState(I)V

    .line 2840
    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;

    invoke-direct {v3, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$2;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    invoke-virtual {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V

    .line 2856
    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$3;

    invoke-direct {v3, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$3;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    invoke-virtual {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V

    .line 2869
    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;

    invoke-direct {v3, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$4;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    invoke-virtual {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V

    .line 2881
    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;

    invoke-direct {v3, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$5;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    invoke-virtual {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V

    .line 2954
    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;

    invoke-direct {v3, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$6;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;I)V

    invoke-virtual {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V

    .line 2973
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    monitor-enter v4

    .line 2974
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2975
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2977
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2978
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2975
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private webkitAudioCreate(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3334
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitAudioCreate id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3335
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3336
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_0

    .line 3342
    :goto_0
    return-void

    .line 3339
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6a

    const/16 v4, 0xd

    invoke-static {v2, v3, v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3340
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitAudioCurrentPosition(I)I
    .locals 6
    .param p1, "aId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3081
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitAudioCurrentPosition id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3082
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3083
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_0

    .line 3087
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getCurrentPosition()I

    move-result v1

    goto :goto_0
.end method

.method private webkitAudioGetDuration(I)I
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3098
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitAudioGetDuration id : %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3099
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3100
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_1

    .line 3111
    :cond_0
    :goto_0
    return v1

    .line 3104
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getDuration()I

    move-result v1

    .line 3106
    .local v1, "duration":I
    if-lez v1, :cond_0

    .line 3107
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v4, 0x6a

    const/16 v5, 0x13

    invoke-static {v3, v4, v5, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3108
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitAudioGetVolume(I)Z
    .locals 8
    .param p1, "aId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3253
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "webkitAudioGetVolume id : %d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3254
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3255
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 3256
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x6a

    const/16 v6, 0x11

    invoke-static {v4, v5, v6, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3257
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3261
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private webkitAudioLoadResource(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3030
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitAudioLoadResource id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3031
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3032
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 3033
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->resetAudioState()V

    .line 3035
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x72

    invoke-static {v2, v3, p1, v6, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3036
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3037
    return-void
.end method

.method private webkitAudioMediaData(III)V
    .locals 5
    .param p1, "aId"    # I
    .param p2, "aMediaCB"    # I
    .param p3, "aMediaData"    # I

    .prologue
    .line 3323
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitAudioMediaData id : %d, mediaCB : %d, mediaData : %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3324
    return-void
.end method

.method private webkitAudioPauseAudio(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3181
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitAudioPauseAudio id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3182
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3183
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 3198
    :cond_0
    :goto_0
    return v3

    .line 3186
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isPlaying()Z

    move-result v1

    .line 3187
    .local v1, "isplaying":Z
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->pause()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3191
    const/4 v5, -0x1

    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 3192
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaState(I)V

    .line 3193
    if-ne v4, v1, :cond_2

    .line 3194
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x6f

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v3, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3195
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    move v3, v4

    .line 3198
    goto :goto_0
.end method

.method private webkitAudioPlay(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3123
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitAudioPlay id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3124
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3125
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 3139
    :cond_0
    :goto_0
    return v3

    .line 3128
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isPlaying()Z

    move-result v1

    .line 3130
    .local v1, "isplaying":Z
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->start()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3133
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaState(I)V

    .line 3134
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 3135
    if-nez v1, :cond_2

    .line 3136
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x6f

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v3, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3137
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    move v3, v4

    .line 3139
    goto :goto_0
.end method

.method private webkitAudioReady(I)V
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/16 v8, 0x6a

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3352
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitAudioReady id : %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3353
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3354
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_0

    .line 3363
    :goto_0
    return-void

    .line 3358
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0xc

    invoke-direct {p0, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitAudioTotalByte(I)I

    move-result v4

    invoke-static {v2, v8, v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3359
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3360
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {v2, v8, v7, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3361
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitAudioRegisterNotify(III)V
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aMediaCB"    # I
    .param p3, "aMediaData"    # I

    .prologue
    const/4 v6, 0x1

    .line 3060
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitAudioRegisterNotify id : %d, mediaCB : %d, mediaData : %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3061
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3062
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_0

    .line 3071
    :goto_0
    return-void

    .line 3066
    :cond_0
    monitor-enter v0

    .line 3067
    :try_start_0
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaCB(I)V

    .line 3068
    invoke-virtual {v0, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaData(I)V

    .line 3069
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setRegisterMedia(Z)V

    .line 3070
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private webkitAudioRelease(II)V
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aFlags"    # I

    .prologue
    const/4 v6, 0x0

    .line 3047
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitAudioRelease id : %d, %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3048
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3049
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3050
    return-void
.end method

.method private webkitAudioResumeAudio(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3209
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitAudioResumeAudio id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3210
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3211
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 3224
    :cond_0
    :goto_0
    return v3

    .line 3214
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isPlaying()Z

    move-result v1

    .line 3215
    .local v1, "isplaying":Z
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->resume()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3218
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 3219
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaState(I)V

    .line 3220
    if-nez v1, :cond_2

    .line 3221
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x6f

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v3, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3222
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    move v3, v4

    .line 3224
    goto :goto_0
.end method

.method private webkitAudioSeekTo(II)Z
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aMsec"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3290
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitAudioSeekTo id : %d, msec : %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3291
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3292
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_1

    .line 3300
    :cond_0
    :goto_0
    return v1

    .line 3296
    :cond_1
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->seekTo(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 3300
    goto :goto_0
.end method

.method private webkitAudioSetLoop(IZ)V
    .locals 6
    .param p1, "aId"    # I
    .param p2, "aLoop"    # Z

    .prologue
    .line 3366
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitAudioSetLoop id : %d, loop : %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3367
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3368
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 3369
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setLoop(Z)V

    .line 3371
    :cond_0
    return-void
.end method

.method private webkitAudioSetMute(IZ)Z
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aMute"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3272
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitAudioSetMute id : %d, mute : %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3273
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3274
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 3275
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMute(Z)V

    .line 3279
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private webkitAudioSetVolume(IF)Z
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aVol"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3235
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitAudioSetVolume id : %d, voi : %f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3236
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3237
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 3238
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setVolume(F)V

    .line 3242
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private webkitAudioStopAudio(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3150
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitAudioStopAudio id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3151
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3152
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getMediaState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 3170
    :cond_0
    :goto_0
    return v3

    .line 3156
    :cond_1
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x6a

    const/4 v7, 0x7

    invoke-static {v5, v6, v7, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3157
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v5, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3158
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isPlaying()Z

    move-result v1

    .line 3159
    .local v1, "isplaying":Z
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isStopable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3163
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->stopPlayback()Z

    .line 3164
    const/4 v5, -0x1

    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 3165
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaState(I)V

    .line 3166
    if-ne v4, v1, :cond_2

    .line 3167
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x6f

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v3, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3168
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v3, v4

    .line 3170
    goto :goto_0
.end method

.method private webkitAudioTotalByte(I)I
    .locals 5
    .param p1, "aId"    # I

    .prologue
    .line 3311
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitAudioTotalByte id : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3312
    const v0, 0x6c800

    return v0
.end method

.method private webkitCanPauseMedia()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3429
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitGetPlayingMedia"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3430
    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    if-ne v3, v5, :cond_1

    .line 3444
    :cond_0
    :goto_0
    return v1

    .line 3433
    :cond_1
    iget-boolean v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v2, v3, :cond_2

    .line 3434
    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    if-eq v5, v3, :cond_0

    move v1, v2

    .line 3435
    goto :goto_0

    .line 3440
    :cond_2
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3441
    .local v0, "tvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    move v1, v2

    .line 3442
    goto :goto_0
.end method

.method private webkitChangeBitmapBuffer(II)Ljava/lang/Object;
    .locals 5
    .param p1, "aW"    # I
    .param p2, "aH"    # I

    .prologue
    .line 1571
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitChangeBitmapBuffer : w(%d),h(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->lock()V

    .line 1575
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1577
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 1580
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitUnremovedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitUnremovedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1582
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitUnremovedBitmap:Landroid/graphics/Bitmap;

    .line 1585
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    .line 1590
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 1587
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    throw v0
.end method

.method private webkitDrawLock(Z)V
    .locals 5
    .param p1, "aLock"    # Z

    .prologue
    .line 1621
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitDrawLock : %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1622
    if-eqz p1, :cond_0

    .line 1623
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->lock()V

    .line 1626
    :goto_0
    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    goto :goto_0
.end method

.method private webkitEnterFullscreen(IZZ)V
    .locals 9
    .param p1, "aId"    # I
    .param p2, "aLoop"    # Z
    .param p3, "aQuirksMode"    # Z

    .prologue
    const/16 v8, 0x6b

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2572
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitEnterFullscreen id : %d, loop : %b quirksMode : %b "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2573
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-nez v1, :cond_0

    .line 2575
    if-ne v6, p3, :cond_1

    .line 2576
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v8, p1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2581
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2583
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 2579
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v8, p1, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private webkitExitFullscreen(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2593
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitExitFullscreen id : %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2594
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v6, v1, :cond_0

    .line 2595
    iput-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    .line 2596
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2597
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2599
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private webkitGetDeviceDpi()I
    .locals 6

    .prologue
    .line 1645
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1646
    .local v0, "densityDpi":I
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitGetDeviceDpi %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1648
    return v0
.end method

.method private webkitGetPlayMedia()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3392
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "webkitGetPlayMedia"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3393
    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    if-ne v4, v6, :cond_1

    .line 3417
    :cond_0
    :goto_0
    return v2

    .line 3404
    :cond_1
    iget-boolean v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v3, v4, :cond_2

    .line 3405
    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    if-eq v6, v4, :cond_0

    move v2, v3

    .line 3406
    goto :goto_0

    .line 3411
    :cond_2
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 3412
    .local v1, "tvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v1, :cond_0

    .line 3413
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x69

    const/16 v6, 0xe

    invoke-static {v4, v5, v6, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3414
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    move v2, v3

    .line 3415
    goto :goto_0
.end method

.method private webkitGetPrntlRate()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1660
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitGetPrntlRate"

    invoke-virtual {v1, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1662
    const/16 v8, -0x64

    .line 1663
    .local v8, "prntlRate":I
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1664
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-array v2, v10, [Ljava/lang/String;

    const-string v1, "parentalRate"

    aput-object v1, v2, v4

    .line 1665
    .local v2, "fields":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1668
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbSeMngMw ExIF In : ContentResolver.query() %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MMB_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1669
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->MMB_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1670
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "MmbSeMngMw ExIF Out : ContentResolver.query()"

    invoke-virtual {v1, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1671
    if-eqz v6, :cond_2

    .line 1672
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-ne v10, v1, :cond_1

    .line 1673
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1674
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitGetPrntlRate prntlRate : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1684
    :goto_0
    if-eqz v6, :cond_0

    .line 1685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1688
    :cond_0
    :goto_1
    return v8

    .line 1676
    :cond_1
    :try_start_1
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Cursor is empty"

    invoke-virtual {v1, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1681
    :catch_0
    move-exception v7

    .line 1682
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Failed to obtain parentalRate from MmbSeMngMw\'s content provider"

    invoke-virtual {v1, v3, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1684
    if-eqz v6, :cond_0

    .line 1685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1679
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Cursor is null"

    invoke-virtual {v1, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1684
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 1685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private webkitGetRewindEnable(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2636
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitGetRewindEnable id : %d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2637
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v5, :cond_1

    .line 2656
    :cond_0
    :goto_0
    return v3

    .line 2641
    :cond_1
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2642
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v1, :cond_2

    .line 2643
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2644
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 2648
    .end local v0    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    :cond_2
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 ExIF In : getRewindEnable()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2649
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v5}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getRewindEnable()B

    move-result v2

    .line 2650
    .local v2, "rewindable":B
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 ExIF Out : getRewindEnable()"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2651
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_3

    move v3, v4

    .line 2652
    goto :goto_0

    .line 2653
    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_0

    goto :goto_0
.end method

.method private webkitGetThumbnailUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1743
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF In : new MmbFcContMwClient()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1744
    new-instance v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-direct {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;-><init>()V

    .line 1745
    .local v3, "mmbFcContMwClient":Lmmb/android/MmbFcContMw/MmbFcContMwClient;
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF Out : new MmbFcContMwClient()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1746
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF In : new MmbFcContMwClientListener ()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1747
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    .line 1764
    .local v0, "aListener":Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF Out : new MmbFcContMwClientListener ()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1765
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF In : MmbFcContMwClient.registListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v3, v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->registListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    .line 1767
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF Out : MmbFcContMwClient.registListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1768
    const/4 v4, 0x0

    .line 1769
    .local v4, "mmbFcContMwContentsInformationBase":Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    const/16 v6, 0x23

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1770
    .local v1, "delimIndex":I
    const/4 v5, 0x0

    .line 1771
    .local v5, "uri":Ljava/lang/String;
    if-ltz v1, :cond_0

    .line 1772
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1775
    :cond_0
    :try_start_0
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF In : getContentsDetail()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1776
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v6, v7}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->getContentsDetail(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-result-object v4

    .line 1777
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF Out : getContentsDetail()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1778
    if-eqz v4, :cond_1

    iget-object v6, v4, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v6, :cond_1

    iget-object v6, v4, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->titleImage:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1781
    iget-object v6, v4, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->titleImage:Ljava/lang/String;

    .line 1782
    if-eqz v5, :cond_2

    .line 1783
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "webkitGetThumbnailUri URI:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    :cond_1
    :goto_0
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF In : close()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1793
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "MmbFcContMwClient ExIF Out : close()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1794
    return-object v5

    .line 1785
    :cond_2
    :try_start_1
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "webkitGetThumbnailUri URI is null"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V
    :try_end_1
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1787
    :catch_0
    move-exception v2

    .line 1788
    .local v2, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;->printStackTrace()V

    goto :goto_0
.end method

.method private webkitGetTrickPlayArea(I[[I)V
    .locals 18
    .param p1, "aId"    # I
    .param p2, "aData"    # [[I

    .prologue
    .line 1867
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "webkitGetTrickPlayArea id : %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1868
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v13, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1871
    :cond_1
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF In : getFastForwardEnable() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1872
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v13}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnable()B

    move-result v5

    .line 1873
    .local v5, "fastforwardinformation":B
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF Out : getFastForwardEnable() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1875
    and-int/lit8 v13, v5, 0x3

    packed-switch v13, :pswitch_data_0

    .line 1937
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1938
    .local v3, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v3, :cond_7

    .line 1939
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v14, 0x69

    const/16 v15, 0x10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1940
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v13, v10}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1877
    .end local v3    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v10    # "msg":Landroid/os/Message;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1878
    .restart local v3    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v3, :cond_3

    .line 1879
    const/4 v13, 0x0

    aget-object v13, p2, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 1880
    const/4 v13, 0x0

    aget-object v13, p2, v13

    const/4 v14, 0x1

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getDuration()I

    move-result v15

    aput v15, v13, v14

    goto :goto_1

    .line 1883
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 1884
    .local v2, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v2, :cond_2

    .line 1885
    const/4 v13, 0x0

    aget-object v13, p2, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 1886
    const/4 v13, 0x0

    aget-object v13, p2, v13

    const/4 v14, 0x1

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getDuration()I

    move-result v15

    aput v15, v13, v14

    goto :goto_1

    .line 1891
    .end local v2    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .end local v3    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :pswitch_1
    const/4 v7, 0x0

    .line 1892
    .local v7, "index":I
    const/4 v9, 0x0

    .line 1893
    .local v9, "isvideocontent":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .local v1, "aChapterIdList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;>;"
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF In : getChapterIdList() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1895
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v13, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getChapterIdList(Ljava/util/List;)V

    .line 1896
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF Out : getChapterIdList() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1897
    const/4 v3, 0x0

    .line 1898
    .restart local v3    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    const/4 v2, 0x0

    .line 1899
    .restart local v2    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    check-cast v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1900
    .restart local v3    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v3, :cond_5

    .line 1901
    const/4 v9, 0x1

    .line 1910
    :goto_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 1911
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF In : getFastForwardEnableOnChapter() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1912
    sget-object v14, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;

    invoke-virtual {v13}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->getChapterId()I

    move-result v13

    invoke-virtual {v14, v13}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnableOnChapter(I)Z

    move-result v4

    .line 1913
    .local v4, "fastforwardenableonchapter":Z
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF Out : getFastForwardEnableOnChapter() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1914
    if-nez v4, :cond_4

    .line 1915
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;

    invoke-virtual {v13}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->getSequenceLabelId()I

    move-result v12

    .line 1916
    .local v12, "seqlabelid":I
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;

    invoke-virtual {v13}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->getChapterId()I

    move-result v11

    .line 1917
    .local v11, "seqchapterid":I
    new-instance v8, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;

    invoke-direct {v8}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;-><init>()V

    .line 1918
    .local v8, "interval":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF In : getIntervalOnChapter() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1919
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v13, v12, v11, v8}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getIntervalOnChapter(IILmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;)V

    .line 1920
    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v14, "Mp4 ExIF Out : getIntervalOnChapter() 2"

    invoke-virtual {v13, v14}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1921
    aget-object v13, p2, v7

    const/4 v14, 0x0

    invoke-virtual {v8}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->getStartTime()I

    move-result v15

    aput v15, v13, v14

    .line 1922
    aget-object v13, p2, v7

    const/4 v14, 0x1

    invoke-virtual {v8}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;->getEndTime()I

    move-result v15

    aput v15, v13, v14

    .line 1923
    const/4 v13, 0x1

    if-ne v13, v9, :cond_6

    .line 1924
    aget-object v13, p2, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    aget-object v14, p2, v7

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v3, v13, v14}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->addTrickPlayArea(II)V

    .line 1928
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 1910
    .end local v8    # "interval":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;
    .end local v11    # "seqchapterid":I
    .end local v12    # "seqlabelid":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1903
    .end local v4    # "fastforwardenableonchapter":Z
    .end local v6    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    check-cast v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 1904
    .restart local v2    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v2, :cond_0

    .line 1907
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1926
    .restart local v4    # "fastforwardenableonchapter":Z
    .restart local v6    # "i":I
    .restart local v8    # "interval":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;
    .restart local v11    # "seqchapterid":I
    .restart local v12    # "seqlabelid":I
    :cond_6
    aget-object v13, p2, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    aget-object v14, p2, v7

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v2, v13, v14}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->addTrickPlayArea(II)V

    goto :goto_4

    .line 1944
    .end local v1    # "aChapterIdList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;>;"
    .end local v2    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .end local v4    # "fastforwardenableonchapter":Z
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "interval":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;
    .end local v9    # "isvideocontent":Z
    .end local v11    # "seqchapterid":I
    .end local v12    # "seqlabelid":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 1945
    .restart local v2    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v2, :cond_0

    .line 1946
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v14, 0x6a

    const/16 v15, 0x10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1947
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v13, v10}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1875
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private webkitGetTrickPlayEnable(I)I
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1831
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitGetTrickPlayEnable id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1832
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v5, :cond_1

    .line 1856
    :cond_0
    :goto_0
    return v3

    .line 1835
    :cond_1
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 ExIF In : getFastForwardEnable() 3"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1836
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v5}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnable()B

    move-result v5

    and-int/lit8 v5, v5, 0x3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1837
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "Mp4 ExIF Out : getFastForwardEnable() 3-1"

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    move v3, v4

    .line 1838
    goto :goto_0

    .line 1839
    :cond_2
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnable()B

    move-result v4

    and-int/lit8 v4, v4, 0x3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 1840
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : getFastForwardEnable() 3-2"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0

    .line 1843
    :cond_3
    const/4 v3, 0x0

    .line 1844
    .local v3, "index":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1845
    .local v0, "aChapterIdList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;>;"
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF In : getChapterIdList() 3"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1846
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v4, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getChapterIdList(Ljava/util/List;)V

    .line 1847
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : getChapterIdList() 3"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1848
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1849
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF In : getFastForwardEnableOnChapter() 3"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1850
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;

    invoke-virtual {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;->getChapterId()I

    move-result v4

    invoke-virtual {v5, v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnableOnChapter(I)Z

    move-result v1

    .line 1851
    .local v1, "fastforwardenableonchapter":Z
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : getFastForwardEnableOnChapter() 3"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1852
    if-nez v1, :cond_4

    .line 1853
    add-int/lit8 v3, v3, 0x1

    .line 1848
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private webkitInvalidate()V
    .locals 2

    .prologue
    .line 1543
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitInvalidate"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1544
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendEmptyMessage(I)Z

    .line 1545
    return-void
.end method

.method private webkitInvalidateRect(IIII)V
    .locals 5
    .param p1, "aX"    # I
    .param p2, "aY"    # I
    .param p3, "aW"    # I
    .param p4, "aH"    # I

    .prologue
    const/4 v4, 0x0

    .line 1555
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitInvalidateRect"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1556
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1557
    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1558
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x65

    invoke-static {v2, v3, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1559
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1561
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private webkitIsSeekAble(IZI)Z
    .locals 14
    .param p1, "aId"    # I
    .param p2, "aIsSeekForword"    # Z
    .param p3, "aCurrentPosition"    # I

    .prologue
    .line 1959
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "webkitIsSeekAble id : %d, isSeekForword : %b, currentPosition : %d "

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1960
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v9, :cond_0

    .line 1961
    const/4 v9, 0x0

    .line 2038
    :goto_0
    return v9

    .line 1964
    :cond_0
    iget-object v9, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1965
    .local v8, "trickplaycheckdvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v8, :cond_1

    .line 1966
    invoke-virtual {v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isTrickplay()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1967
    const/4 v9, 0x0

    goto :goto_0

    .line 1971
    :cond_1
    iget-object v9, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 1972
    .local v7, "trickplaycheckaudio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v7, :cond_2

    .line 1973
    invoke-virtual {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isTrickplay()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1974
    const/4 v9, 0x0

    goto :goto_0

    .line 1978
    :cond_2
    if-nez p2, :cond_4

    .line 1979
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "Mp4 ExIF In : getRewindEnable() 2"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1980
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v9}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getRewindEnable()B

    move-result v5

    .line 1981
    .local v5, "isrewindenable":B
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "Mp4 ExIF Out : getRewindEnable() 2"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1982
    and-int/lit8 v9, v5, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 1983
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "webkitIsSeekAble Rewindable Infomation 0x1"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1984
    const/4 v9, 0x0

    goto :goto_0

    .line 1986
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 1988
    .end local v5    # "isrewindenable":B
    :cond_4
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "Mp4 ExIF In : getFastForwardEnable() 3"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1989
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v9}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getFastForwardEnable()B

    move-result v3

    .line 1990
    .local v3, "fastforwardinformation":B
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "Mp4 ExIF Out : getFastForwardEnable() 3"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1991
    and-int/lit8 v9, v3, 0x3

    packed-switch v9, :pswitch_data_0

    .line 2038
    :pswitch_0
    const/4 v9, 0x1

    goto :goto_0

    .line 1993
    :pswitch_1
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "webkitIsSeekAble Fast Forward Information 0x0"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1994
    const/4 v9, 0x1

    goto :goto_0

    .line 1996
    :pswitch_2
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "webkitIsSeekAble Fast Forward Information 0x2"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1997
    const/4 v9, 0x0

    goto :goto_0

    .line 1999
    :pswitch_3
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v10, "webkitIsSeekAble Fast Forward Information 0x3"

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2000
    const/4 v6, 0x0

    .line 2001
    .local v6, "trickplayarea":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 2002
    .local v2, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    iget-object v9, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    check-cast v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2003
    .restart local v2    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v2, :cond_7

    .line 2004
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getTrickPlayAreaSize()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 2005
    invoke-virtual {v2, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getTrickPlayArea(I)Landroid/graphics/Point;

    move-result-object v6

    .line 2006
    if-eqz v6, :cond_5

    .line 2007
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "webkitIsSeekAble Video View Trick Play : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2008
    iget v9, v6, Landroid/graphics/Point;->x:I

    move/from16 v0, p3

    if-lt v0, v9, :cond_5

    iget v9, v6, Landroid/graphics/Point;->y:I

    move/from16 v0, p3

    if-gt v0, v9, :cond_5

    .line 2009
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "webkitIsSeekAble CurrentPosition : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2010
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2004
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2014
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2017
    .end local v4    # "i":I
    :cond_7
    iget-object v9, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2018
    .local v1, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v1, :cond_8

    .line 2019
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2021
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getTrickPlayAreaSize()I

    move-result v9

    if-ge v4, v9, :cond_a

    .line 2022
    invoke-virtual {v1, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->getTrickPlayArea(I)Landroid/graphics/Point;

    move-result-object v6

    .line 2023
    if-eqz v6, :cond_9

    .line 2024
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "webkitIsSeekAble Audio Trick Play : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ~ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2025
    iget v9, v6, Landroid/graphics/Point;->x:I

    move/from16 v0, p3

    if-lt v0, v9, :cond_9

    iget v9, v6, Landroid/graphics/Point;->y:I

    move/from16 v0, p3

    if-gt v0, v9, :cond_9

    .line 2026
    sget-object v9, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "webkitIsSeekAble CurrentPosition : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2027
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2021
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2031
    :cond_a
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1991
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private webkitMetaDataRetrive(IZLjava/lang/String;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;
    .locals 9
    .param p1, "aId"    # I
    .param p2, "aMetaThumbnail"    # Z
    .param p3, "aUri"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1701
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitMetaDataRetrive id : %d, metaThumbnail : %b, uri : %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1703
    const/4 v0, 0x0

    .line 1705
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1707
    .local v2, "metaret":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v2, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1708
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 1709
    .local v1, "metaduration":Ljava/lang/String;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;I)I

    .line 1711
    if-ne p2, v8, :cond_0

    .line 1712
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1713
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;I)I

    .line 1714
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$602(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;I)I

    .line 1715
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-static {v3, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1718
    :cond_0
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    return-object v3
.end method

.method private webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "aEventType"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aObj0"    # Ljava/lang/Object;
    .param p4, "aObj1"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1506
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitOnEventOccurred eventType : %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1507
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onEventOccurredListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    if-eqz v2, :cond_0

    .line 1508
    packed-switch p1, :pswitch_data_0

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1510
    :pswitch_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1514
    :pswitch_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1515
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1519
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {v2, v8, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1520
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1524
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    new-array v1, v8, [Ljava/lang/Object;

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    .line 1525
    .local v1, "objs":[Ljava/lang/Object;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/4 v3, 0x3

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1526
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private webkitReLayoutVideo(IFIIII)V
    .locals 9
    .param p1, "aId"    # I
    .param p2, "aNewScale"    # F
    .param p3, "aX"    # I
    .param p4, "aY"    # I
    .param p5, "aW"    # I
    .param p6, "aH"    # I

    .prologue
    .line 2444
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "webkitReLayoutVideo id : %d, newScale : %f, x : %d, y : %d, w : %d, h : %d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2445
    const/4 v4, 0x1

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v4, v5, :cond_1

    .line 2462
    :cond_0
    :goto_0
    return-void

    .line 2448
    :cond_1
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2449
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 2453
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p3, p5

    add-int v5, p4, p6

    invoke-direct {v3, p3, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2454
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x66

    const/4 v6, 0x0

    invoke-static {v4, v5, p1, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2455
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2457
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2458
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x69

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2459
    .local v2, "msg2":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2460
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaUpdate(Z)V

    goto :goto_0
.end method

.method private webkitSetInactive(IZ)V
    .locals 8
    .param p1, "aId"    # I
    .param p2, "aIsInactive"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2043
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2045
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v1, :cond_2

    .line 2046
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitSetInactive video id : %d, aIsInactive : %b"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2048
    if-ne p2, v6, :cond_1

    .line 2049
    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->suspend()Z

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2052
    :cond_1
    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->resumeForSuspend()Z

    goto :goto_0

    .line 2056
    :cond_2
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2057
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 2058
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitSetInactive audio id : %d, aIsInactive : %b"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2060
    if-ne p2, v6, :cond_3

    .line 2061
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->suspend()Z

    goto :goto_0

    .line 2064
    :cond_3
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->resumeForSuspend()Z

    goto :goto_0
.end method

.method private webkitSetLoop(IZ)V
    .locals 6
    .param p1, "aId"    # I
    .param p2, "aLoop"    # Z

    .prologue
    .line 1636
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitSetLoop id : %d, loop : %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1637
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1638
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setLoop(Z)V

    .line 1641
    :cond_0
    return-void
.end method

.method private webkitSetPlayRate(II)V
    .locals 5
    .param p1, "aId"    # I
    .param p2, "aSpeed"    # I

    .prologue
    .line 2624
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitSetPlayRate id : %d, speed : %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2625
    return-void
.end method

.method private webkitSetUnremovedBitmapBuffer(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "aBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1602
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitSetUnremovedBitmapBuffer"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->lock()V

    .line 1606
    :try_start_0
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitUnremovedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    .line 1610
    return-void

    .line 1608
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    throw v0
.end method

.method private webkitVideoGetCurrentFrame(ILjava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .param p1, "aId"    # I
    .param p2, "aUri"    # Ljava/lang/String;
    .param p3, "aPosition"    # I

    .prologue
    const/4 v0, 0x0

    .line 1805
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitVideoGetCurrentFrame id : %d, uri : %s, position : %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1807
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1808
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1809
    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    .line 1811
    :cond_0
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v1, :cond_1

    .line 1819
    :goto_0
    return-object v0

    .line 1814
    :cond_1
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : getsCutOnePicture()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1815
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getsCutOnePicture()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    .line 1816
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: getsCutOnePicture()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1819
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->videoFrameBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private webkitVideoGetThumbnail(I[I)V
    .locals 8
    .param p1, "aId"    # I
    .param p2, "aPixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1729
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitVideoGetThumbnail id : %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1730
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)I

    move-result v3

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)I

    move-result v6

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;)I

    move-result v7

    move-object v1, p2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1733
    :cond_0
    return-void
.end method

.method private webkitVideoViewCreate(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aIsTrickplay"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 2080
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitVideoViewCreate uri : %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 2081
    if-nez p1, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return v1

    .line 2085
    :cond_1
    const-string v3, "crid://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2089
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaId:I

    .line 2091
    .local v1, "id":I
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;-><init>(Landroid/content/Context;)V

    .line 2092
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    invoke-virtual {v0, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 2093
    invoke-virtual {v0, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaUpdate(Z)V

    .line 2094
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setTrickplay(Z)V

    .line 2096
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    monitor-enter v4

    .line 2097
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2099
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v4, 0x67

    invoke-static {v3, v4, v1, v6, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2100
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2098
    .end local v2    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private webkitVideoViewCreate(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2483
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewCreate id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 2484
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2485
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2491
    :goto_0
    return-void

    .line 2488
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x69

    const/16 v4, 0xd

    invoke-static {v2, v3, v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2489
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitVideoViewCurrentPosition(I)I
    .locals 6
    .param p1, "aId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2196
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewCurrentPosition id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2197
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2198
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2202
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getCurrentPosition()I

    move-result v1

    goto :goto_0
.end method

.method private webkitVideoViewGetDuration(I)I
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2213
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitVideoViewGetDuration id : %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2214
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2215
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v1, :cond_1

    .line 2226
    :cond_0
    :goto_0
    return v0

    .line 2219
    :cond_1
    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getDuration()I

    move-result v0

    .line 2221
    .local v0, "duration":I
    if-lez v0, :cond_0

    .line 2222
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v4, 0x69

    const/16 v5, 0x13

    invoke-static {v3, v4, v5, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2223
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitVideoViewGetVolume(I)Z
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2375
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitVideoViewGetVolume id : %d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2376
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2377
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 2383
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private webkitVideoViewHeight(I)I
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2180
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewHeight id : %d"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2181
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2182
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2185
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoHeight()I

    move-result v1

    goto :goto_0
.end method

.method private webkitVideoViewLoadResource(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2112
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewLoadResource id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2113
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2114
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 2115
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->resetVideoState()V

    .line 2117
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x70

    invoke-static {v2, v3, p1, v6, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2118
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2119
    return-void
.end method

.method private webkitVideoViewMediaData(III)V
    .locals 5
    .param p1, "aId"    # I
    .param p2, "aMediaCB"    # I
    .param p3, "aMediaData"    # I

    .prologue
    .line 2472
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitVideoViewMediaData id : %d, mediaCB : %d, mediaData : %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2473
    return-void
.end method

.method private webkitVideoViewPauseVideo(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2303
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitVideoViewPauseVideo id : %d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2304
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2305
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    if-ne v3, v5, :cond_2

    :cond_0
    move v3, v4

    .line 2320
    :cond_1
    :goto_0
    return v3

    .line 2308
    :cond_2
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isPlaying()Z

    move-result v1

    .line 2309
    .local v1, "isplaying":Z
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->pause()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v3, v4

    .line 2310
    goto :goto_0

    .line 2313
    :cond_4
    const/4 v5, -0x1

    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 2314
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 2316
    if-ne v3, v1, :cond_1

    .line 2317
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x73

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v4, v4, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2318
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitVideoViewPlay(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2237
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitVideoViewPlay id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2238
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2239
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    if-ne v4, v5, :cond_1

    .line 2256
    :cond_0
    :goto_0
    return v3

    .line 2243
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isPlaying()Z

    move-result v1

    .line 2244
    .local v1, "isplaying":Z
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 2245
    invoke-virtual {v0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaUpdate(Z)V

    .line 2246
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->start()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2250
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 2252
    if-nez v1, :cond_2

    .line 2253
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x73

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v3, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2254
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    move v3, v4

    .line 2256
    goto :goto_0
.end method

.method private webkitVideoViewRegisterNotify(III)V
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aMediaCB"    # I
    .param p3, "aMediaData"    # I

    .prologue
    const/4 v6, 0x1

    .line 2142
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitVideoViewRegisterNotify id : %d, mediaCB : %d, mediaData : %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2143
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2144
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2153
    :goto_0
    return-void

    .line 2148
    :cond_0
    monitor-enter v0

    .line 2149
    :try_start_0
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaCB(I)V

    .line 2150
    invoke-virtual {v0, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaData(I)V

    .line 2151
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setRegisterMedia(Z)V

    .line 2152
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private webkitVideoViewRelease(II)V
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aFlags"    # I

    .prologue
    const/4 v6, 0x0

    .line 2129
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitVideoViewRelease id : %d, %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 2130
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v2, 0x6d

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2131
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2132
    return-void
.end method

.method private webkitVideoViewResumeVideo(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2331
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitVideoViewResumeVideo id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2332
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2333
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    if-ne v4, v5, :cond_1

    .line 2346
    :cond_0
    :goto_0
    return v3

    .line 2336
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isPlaying()Z

    move-result v1

    .line 2337
    .local v1, "isplaying":Z
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->resume()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2340
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 2341
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 2342
    if-nez v1, :cond_2

    .line 2343
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x73

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v3, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2344
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    move v3, v4

    .line 2346
    goto :goto_0
.end method

.method private webkitVideoViewSeekTo(II)Z
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aMsec"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2412
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitVideoViewSeekTo id : %d, msec : %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2413
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2414
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_1

    .line 2421
    :cond_0
    :goto_0
    return v1

    .line 2418
    :cond_1
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->seekTo(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2421
    goto :goto_0
.end method

.method private webkitVideoViewSetLoop(IZ)V
    .locals 6
    .param p1, "aId"    # I
    .param p2, "aLoop"    # Z

    .prologue
    .line 2609
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitVideoViewSetLoop id : %d, loop : %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2610
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2611
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 2612
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setLoop(Z)V

    .line 2614
    :cond_0
    return-void
.end method

.method private webkitVideoViewSetMute(IZ)Z
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aMute"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2394
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitVideoViewSetMute id : %d, mute : %b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2395
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2396
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 2397
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMute(Z)V

    .line 2401
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private webkitVideoViewSetVolume(IF)Z
    .locals 7
    .param p1, "aId"    # I
    .param p2, "aVol"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2357
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "webkitVideoViewSetVolume id : %d, vol : %f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2358
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2359
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 2360
    invoke-virtual {v0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setVolume(F)V

    .line 2364
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private webkitVideoViewStopVideo(I)Z
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2267
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "webkitVideoViewStopVideo id : %d"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2268
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2269
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    if-ne v4, v5, :cond_1

    .line 2292
    :cond_0
    :goto_0
    return v3

    .line 2273
    :cond_1
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isPlaying()Z

    move-result v1

    .line 2274
    .local v1, "isplaying":Z
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x69

    const/4 v7, 0x7

    invoke-static {v5, v6, v7, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2275
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v5, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2277
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isStopable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2281
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->stopPlayback()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2285
    const/4 v5, -0x1

    iput v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    .line 2286
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 2288
    if-ne v4, v1, :cond_2

    .line 2289
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v6, 0x73

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v3, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2290
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v3, v4

    .line 2292
    goto :goto_0
.end method

.method private webkitVideoViewTotalByte(I)I
    .locals 5
    .param p1, "aId"    # I

    .prologue
    .line 2432
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "webkitVideoViewTotalByte id : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2433
    const v0, 0x6c800

    return v0
.end method

.method private webkitVideoViewWidth(I)I
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2163
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewWidth id : %d"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2164
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2165
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2169
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoWidth()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "canGoBack"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeCanGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 2

    .prologue
    .line 497
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "canGoForward"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeCanGoForward()Z

    move-result v0

    return v0
.end method

.method public clearCache(Z)V
    .locals 5
    .param p1, "aIncludeDiskFiles"    # Z

    .prologue
    .line 774
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "clearCache includeDiskFiles : %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 775
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeClearCache(Z)V

    .line 776
    return-void
.end method

.method public clearCookie()V
    .locals 2

    .prologue
    .line 810
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "clearCookie"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 811
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeClearCookie()V

    .line 812
    return-void
.end method

.method public deleteResumePageInfo()V
    .locals 2

    .prologue
    .line 921
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "deleteResumePageInfo"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 922
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeDeleteResumePageInfo()V

    .line 923
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "destroy()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    .line 378
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeOwklTerminate()V

    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    .line 380
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 381
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 382
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaReset(Z)V

    .line 384
    :cond_0
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v1, :cond_1

    .line 385
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : reset() 6"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 386
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 387
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out : reset() 6"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 388
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : release() 6"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 389
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 390
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out : release() 6"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x0

    sput-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_1
    monitor-exit p0

    return-void

    .line 376
    .end local v0    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAudioMute()I
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    return v0
.end method

.method getAudioOutDev()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    return v0
.end method

.method getCaptionLang()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->captionLang:I

    return v0
.end method

.method public getCharacterEncoding()Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;
    .locals 3

    .prologue
    .line 1177
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "getCharacterEncoding"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGetCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "charcterEncoding":Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_8:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 1196
    :goto_0
    return-object v1

    .line 1182
    :cond_0
    const-string v1, "UTF-16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_16:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1184
    :cond_1
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->US_ASCII:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1186
    :cond_2
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1187
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_8859_1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1188
    :cond_3
    const-string v1, "Shift_JIS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1189
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->SHIFT_JIS:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1190
    :cond_4
    const-string v1, "EUC-JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1191
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->EUC_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1192
    :cond_5
    const-string v1, "ISO-2022-JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1193
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_2022_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1196
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCoreBuildNumber()I
    .locals 2

    .prologue
    .line 1219
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getCoreBuildNumber"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1220
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGetCoreBuildNumber()I

    move-result v0

    return v0
.end method

.method public getCoreInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1231
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getCoreInfo"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1232
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGetCoreInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoreVersion()I
    .locals 2

    .prologue
    .line 1207
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getCoreVersion"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1208
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGetCoreVersion()I

    move-result v0

    return v0
.end method

.method public getDensity()I
    .locals 5

    .prologue
    .line 1335
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getDensity aDensity : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1336
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    return v0
.end method

.method getLoadUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadUri:Ljava/lang/String;

    return-object v0
.end method

.method getParentalRate()I
    .locals 1

    .prologue
    .line 1494
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitGetPrntlRate()I

    move-result v0

    return v0
.end method

.method getSapModeValue()I
    .locals 1

    .prologue
    .line 998
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->sapMode:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 521
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getScale"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 522
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGetScale()F

    move-result v0

    return v0
.end method

.method public getTlsSslSupport()I
    .locals 2

    .prologue
    .line 822
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getTlsSslSupport"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 823
    const/4 v0, 0x2

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getUri"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGetCurrentUri()V

    .line 549
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mCurrentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 560
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getUserAgent"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGetCurrentUserAgent()V

    .line 562
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method getVideoCaptionEnableVaule()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDispCaption:Z

    return v0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 485
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "goBack"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGoBack()V

    .line 487
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 509
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "goForward"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeGoForward()V

    .line 511
    return-void
.end method

.method hasFocusNextSubmit()Z
    .locals 1

    .prologue
    .line 3489
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHasFocusNextSubmit()Z

    move-result v0

    return v0
.end method

.method hasFocusNextTextfield()Z
    .locals 1

    .prologue
    .line 3485
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHasFocusNextTextfield()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initialize()V
    .locals 3

    .prologue
    .line 1141
    monitor-enter p0

    :try_start_0
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "initialize"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1142
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    .line 1143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    .line 1144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    .line 1145
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnGestureListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;

    .line 1146
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnDoubleTapListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;

    .line 1147
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnGestureListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->gestureDetector:Landroid/view/GestureDetector;

    .line 1149
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1150
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->gestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnDoubleTapListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnDoubleTapListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1151
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$1;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;

    .line 1153
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initializeFileSystemForFCBrowser()V

    .line 1155
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->addView(Landroid/view/View;)V

    .line 1157
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->initMmbFcBrowMwViewDialog(Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    .line 1158
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->initMmbFcBrowMwViewEditor(Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mBrowViewEditor:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;

    .line 1159
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEditor;->setOnInputTypeChangeHandler(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$OnInputTypeChangeHandler;)V

    .line 1160
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->initMmbFcBrowMwGeolocationService(Landroid/content/Context;)V

    .line 1162
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->metadata:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMetaData;

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/MmbFcBrowMw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetRootPath(Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeOwklInit()V

    .line 1166
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeMediaInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    monitor-exit p0

    return-void

    .line 1141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 762
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "isPaused"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeIsPaused()Z

    move-result v0

    return v0
.end method

.method public isPlayingAudio()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingMedia:Z

    return v0
.end method

.method public loadRequest(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aSequenceLabel"    # Ljava/lang/String;
    .param p3, "aEnableTrickPlay"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 417
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "loadRequest uri : %s, sequenceLabel : %s, enableTrickPlay : %b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v7

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 418
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isValidSequenceLabel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    const/4 v1, -0x5

    invoke-direct {p0, v7, v1, v6, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 438
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isValidUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    const/4 v1, -0x1

    invoke-direct {p0, v7, v1, v6, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_1
    invoke-static {p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getLowerCaseCrid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 427
    const-string v1, "crid://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    const/4 v1, -0x2

    invoke-direct {p0, v7, v1, v6, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_2
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    if-nez v1, :cond_3

    .line 432
    const/4 v1, -0x4

    invoke-direct {p0, v7, v1, v6, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    :cond_3
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->requestLayout()V

    .line 436
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendEmptyMessage(I)Z

    .line 437
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadUri:Ljava/lang/String;

    .line 438
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeLoadRequest(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public loadRequestWithResuming(Ljava/lang/String;)Z
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1091
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "loadRequestWithResuming crid : %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1092
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isValidCrid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1093
    const/4 v1, -0x1

    invoke-direct {p0, v5, v1, v4, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 1108
    :goto_0
    return v0

    .line 1096
    :cond_0
    invoke-static {p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getLowerCaseCrid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1097
    const-string v1, "crid://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1098
    const/4 v1, -0x2

    invoke-direct {p0, v5, v1, v4, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1101
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialized:Z

    if-nez v1, :cond_2

    .line 1102
    const/4 v1, -0x4

    invoke-direct {p0, v5, v1, v4, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1105
    :cond_2
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->requestLayout()V

    .line 1106
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendEmptyMessage(I)Z

    .line 1107
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadUri:Ljava/lang/String;

    .line 1108
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeLoadRequestWithResuming(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 2

    .prologue
    .line 3458
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "onCheckIsTextEditor()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3459
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "aNewConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1360
    invoke-static {}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->onConfigurationChanged()V

    .line 1361
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "aOutAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 3471
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "onCreateInputConnection()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 3472
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 3473
    const-string v0, "Composer Test"

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 3474
    monitor-enter p0

    .line 3475
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;->getInputType()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3476
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->tOnInputTypeChangeHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$TOnInputTypeChangeHandler;->getImeOption()I

    move-result v0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3477
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3479
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mEii:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;

    if-nez v0, :cond_0

    .line 3480
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;

    invoke-direct {v0, p0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;Landroid/view/View;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mEii:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;

    .line 3481
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mEii:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$EditableInputConnection;

    return-object v0

    .line 3477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onDimChangeEvent(IILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V
    .locals 12
    .param p1, "aId"    # I
    .param p2, "aWhat"    # I
    .param p3, "aVideoFrameInfo"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x69

    const/16 v9, 0x14

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2764
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onDimChangeEvent id : %d, aWhat : %d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2765
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2766
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2793
    :goto_0
    :sswitch_0
    return-void

    .line 2769
    :cond_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2778
    :sswitch_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {v2, v10, v9, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2779
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2771
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getStereoViewType()I

    move-result v3

    invoke-static {v2, v8, v3, v7, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2772
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2773
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {v2, v10, v9, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2774
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2783
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getStereoViewType()I

    move-result v3

    invoke-static {v2, v8, v3, v7, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2784
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2769
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method onInfoEvent(III)V
    .locals 9
    .param p1, "aId"    # I
    .param p2, "aEvt"    # I
    .param p3, "aExtra"    # I

    .prologue
    .line 2669
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "onInfoEvent video id : %d, evt : %d extra : %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2670
    const/16 v4, 0x2bc

    if-ne p2, v4, :cond_1

    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    if-ne v4, v5, :cond_1

    .line 2671
    :cond_0
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF In : reset() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2672
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 2673
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : reset() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2674
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF In : release() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2675
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 2676
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : release() 1"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2677
    const/4 v4, 0x0

    sput-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 2678
    const/4 v4, -0x1

    iput v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    .line 2679
    const/4 v4, 0x1

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    if-ne v4, v5, :cond_1

    .line 2680
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF In : new MmbFcMp4MwPlayer() 3"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2681
    new-instance v4, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-direct {v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;-><init>()V

    sput-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 2682
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "Mp4 ExIF Out : new MmbFcMp4MwPlayer() 3"

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2683
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isNewInstance:Z

    .line 2686
    :cond_1
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2687
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_3

    .line 2749
    :cond_2
    :goto_0
    :sswitch_0
    return-void

    .line 2690
    :cond_3
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2700
    :sswitch_1
    const/4 v4, 0x1

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    if-eqz v4, :cond_2

    .line 2701
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V

    goto :goto_0

    .line 2692
    :sswitch_2
    const/4 v4, 0x1

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    if-eqz v4, :cond_4

    .line 2693
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    const/16 v5, 0xbb8

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    .line 2695
    :cond_4
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x69

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2696
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2706
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    const/4 v4, 0x1

    iget-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    if-eqz v4, :cond_5

    .line 2707
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mc:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    const/16 v5, 0xbb8

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    .line 2709
    :cond_5
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x69

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2710
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2714
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_4
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v5, "MmbFcMp4MwPlayer.MEDIA_INFO_REACH_CANNOT_FORWARD_TRICKPLAY_INTERVAL id : %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2715
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x69

    const/16 v6, 0x12

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2716
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2724
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_5
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoViewTargetState()I

    move-result v2

    .line 2725
    .local v2, "rejectedstate":I
    const/4 v3, 0x0

    .line 2726
    .local v3, "respondrejected":I
    sparse-switch v2, :sswitch_data_1

    .line 2738
    :goto_1
    if-eqz v3, :cond_6

    .line 2739
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v5, 0x69

    const/16 v6, 0x15

    invoke-static {v4, v5, v6, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2740
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v4, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2742
    .end local v1    # "msg":Landroid/os/Message;
    :cond_6
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->recoverRejectedState()V

    goto/16 :goto_0

    .line 2728
    :sswitch_6
    const/4 v3, 0x1

    .line 2729
    goto :goto_1

    .line 2731
    :sswitch_7
    const/4 v3, 0x2

    .line 2732
    goto :goto_1

    .line 2735
    :sswitch_8
    const/4 v3, 0x3

    goto :goto_1

    .line 2690
    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_1
        0x2bd -> :sswitch_3
        0x2c0 -> :sswitch_4
        0x2c3 -> :sswitch_0
        0x2c5 -> :sswitch_0
        0x2c7 -> :sswitch_2
        0x2cd -> :sswitch_5
    .end sparse-switch

    .line 2726
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x9 -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 1462
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnKeyDown(IIZZZ)Z

    move-result v0

    if-ne v6, v0, :cond_0

    move v0, v6

    .line 1466
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "aKeyCode"    # I
    .param p2, "aEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 1478
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnKeyUp(IIZZZ)Z

    move-result v0

    if-ne v6, v0, :cond_0

    move v0, v6

    .line 1482
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "aChanged"    # Z
    .param p2, "aLeft"    # I
    .param p3, "aTop"    # I
    .param p4, "aRight"    # I
    .param p5, "aBottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 1387
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1388
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    if-eqz v1, :cond_0

    .line 1389
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-nez v1, :cond_1

    .line 1390
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v4, v4, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->layout(IIII)V

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;

    invoke-virtual {v1, v4, v4, v4, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitFrameView;->layout(IIII)V

    .line 1393
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenVideoViewId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1394
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->hideMediaController()V

    .line 1395
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v4, v4, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->layout(IIII)V

    .line 1396
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->showMediaController(Z)V

    goto :goto_0
.end method

.method onSeekCompleteEvent(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2802
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onSeekCompleteEvent id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2803
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2804
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2809
    :goto_0
    return-void

    .line 2807
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x69

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2808
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onSeekCompleteEventAudio(I)V
    .locals 7
    .param p1, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2990
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "onSeekCompleteEventAudio id : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2991
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 2992
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-nez v0, :cond_0

    .line 2997
    :goto_0
    return-void

    .line 2995
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6a

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2996
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "aW"    # I
    .param p2, "aH"    # I
    .param p3, "aOldw"    # I
    .param p4, "aOldh"    # I

    .prologue
    .line 1365
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1371
    if-ne p1, p3, :cond_2

    if-eq p2, p4, :cond_0

    .line 1372
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->lock()V

    .line 1374
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1375
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitFrameBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->rotateBackupWebkitFrameBitmap:Landroid/graphics/Bitmap;

    .line 1378
    :cond_3
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeDisplayOnSizeChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mLock:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitReentrance;->unlock()V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1414
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 1415
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1450
    :goto_0
    return v2

    .line 1418
    :cond_0
    monitor-enter p0

    .line 1419
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_4

    .line 1420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 1421
    .local v16, "pointcount":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v3, v2, 0xff

    .line 1422
    .local v3, "action":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v4, v2

    .line 1423
    .local v4, "x":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .line 1425
    .local v5, "y":I
    const-wide/16 v8, 0x1

    cmp-long v2, v16, v8

    if-lez v2, :cond_1

    .line 1426
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v6, v2

    .line 1427
    .local v6, "x2":I
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v7, v2

    .line 1429
    .local v7, "y2":I
    packed-switch v3, :pswitch_data_0

    .line 1436
    :pswitch_0
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1448
    .end local v3    # "action":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "x2":I
    .end local v7    # "y2":I
    .end local v16    # "pointcount":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v3    # "action":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .restart local v6    # "x2":I
    .restart local v7    # "y2":I
    .restart local v16    # "pointcount":J
    :pswitch_1
    move-object/from16 v2, p0

    .line 1434
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnMultiTouch(IIIII)Z

    move-result v2

    monitor-exit p0

    goto :goto_0

    .line 1439
    .end local v6    # "x2":I
    .end local v7    # "y2":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 1440
    .local v18, "result":Z
    const/4 v2, 0x1

    if-ne v3, v2, :cond_3

    .line 1441
    const/16 v9, 0xa

    int-to-float v10, v4

    int-to-float v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnEvent(IFFFFFF)Z

    .line 1446
    :cond_2
    :goto_1
    const/4 v2, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1443
    :cond_3
    const/4 v2, 0x3

    if-ne v3, v2, :cond_2

    .line 1444
    const/16 v9, 0xb

    int-to-float v10, v4

    int-to-float v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeHandleOnEvent(IFFFFFF)Z

    goto :goto_1

    .line 1448
    .end local v3    # "action":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v16    # "pointcount":J
    .end local v18    # "result":Z
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1429
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public pauseMedia()V
    .locals 2

    .prologue
    .line 749
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "pauseMedia"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 750
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativePauseMedia()V

    .line 751
    return-void
.end method

.method public pauseView(I)V
    .locals 3
    .param p1, "aForceMediaRelease"    # I

    .prologue
    const/4 v2, 0x1

    .line 705
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "pauseView"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 706
    iput-boolean v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isInactiveMode:Z

    .line 707
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->getInt()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 708
    invoke-virtual {p0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->pauseView(Z)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_BACKGROUND_PLAY:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->getInt()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->pauseView(Z)V

    goto :goto_0

    .line 713
    :cond_2
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_NO_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->getInt()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 714
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativePauseMedia()V

    goto :goto_0
.end method

.method public pauseView(Z)V
    .locals 10
    .param p1, "aForceMediaRelease"    # Z

    .prologue
    const/16 v9, 0x14

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 637
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "pauseView"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 638
    iput-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isInactiveMode:Z

    .line 639
    if-ne v5, p1, :cond_6

    .line 640
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 641
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v1, :cond_2

    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v3, :cond_2

    .line 642
    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isStopable()Z

    move-result v3

    if-ne v5, v3, :cond_1

    .line 643
    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->stopPlayback()Z

    move-result v3

    if-eq v5, v3, :cond_0

    sget v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    if-ge v3, v9, :cond_0

    .line 644
    sget v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    .line 645
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v4, 0x6d

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 646
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 694
    .end local v1    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 649
    .restart local v1    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :cond_0
    sput v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    .line 661
    :goto_1
    iput-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    .line 662
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativePauseView(Z)V

    goto :goto_0

    .line 652
    :cond_1
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF In : reset() 4"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 653
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 654
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF Out : reset() 4"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 655
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF In : release() 4"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 656
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 657
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF Out : release() 4"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 658
    sput-object v7, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 659
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    goto :goto_1

    .line 666
    :cond_2
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 667
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_4

    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v3, :cond_4

    .line 668
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->isStopable()Z

    move-result v3

    if-ne v5, v3, :cond_5

    .line 669
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->stopPlayback()Z

    move-result v3

    if-eq v5, v3, :cond_3

    sget v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    if-ge v3, v9, :cond_3

    .line 670
    sget v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    .line 671
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v4, 0x6e

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 672
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 675
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    sput v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopTry:I

    .line 688
    :cond_4
    :goto_2
    iput-boolean v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    .line 689
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativePauseView(Z)V

    goto :goto_0

    .line 678
    :cond_5
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF In : reset() 5"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 679
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 680
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF Out : reset() 5"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 681
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF In : release() 5"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 682
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->release()V

    .line 683
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Mp4 ExIF Out : release() 5"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 684
    sput-object v7, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 685
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    goto :goto_2

    .line 692
    .end local v0    # "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    .end local v1    # "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    :cond_6
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativePauseView(Z)V

    goto/16 :goto_0
.end method

.method public refreshPageWithCharEncoding(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;)V
    .locals 2
    .param p1, "aEncoding"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .prologue
    .line 798
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "refreshPageWithCharEncoding"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 799
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetCharacterEncoding(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;)V

    .line 800
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 461
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "reload"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeReload()V

    .line 463
    return-void
.end method

.method public resumeView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 727
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "resumeView"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 728
    iput-boolean v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isInactiveMode:Z

    .line 729
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeResumeView()V

    .line 730
    iput-boolean v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDestroy:Z

    .line 731
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v2, :cond_0

    .line 732
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendEmptyMessage(I)Z

    .line 735
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 736
    .local v1, "w":F
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 737
    .local v0, "h":F
    float-to-int v2, v1

    float-to-int v3, v0

    invoke-direct {p0, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeDisplayOnSizeChanged(II)V

    .line 738
    return-void
.end method

.method public setAudioMute(I)V
    .locals 7
    .param p1, "aMute"    # I

    .prologue
    .line 1058
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "setAudioMute aMute : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1059
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    .line 1060
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1061
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v1, :cond_1

    .line 1062
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setAudioMute(I)V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 1067
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 1068
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioMute:I

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setAudioMute(I)V

    goto :goto_0
.end method

.method public setAudioOutDev(I)V
    .locals 7
    .param p1, "aAudioHW"    # I

    .prologue
    .line 1022
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "setAudioOutDev aAudioHW : %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1023
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1024
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    .line 1025
    if-eqz v1, :cond_1

    .line 1026
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setAudioOutDev(I)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 1031
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 1032
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->audioHW:I

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setAudioOutDev(I)V

    goto :goto_0
.end method

.method setCaptionLang(I)V
    .locals 0
    .param p1, "aLanguageType"    # I

    .prologue
    .line 963
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->captionLang:I

    .line 964
    return-void
.end method

.method public setCookieEnabled(Z)V
    .locals 5
    .param p1, "aFlags"    # Z

    .prologue
    .line 786
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setCookieEnabled flags : %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 787
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetCookieEnabled(Z)V

    .line 788
    return-void
.end method

.method public setDensity(I)V
    .locals 5
    .param p1, "aDensity"    # I

    .prologue
    .line 1282
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setDensity aDensity : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1283
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->densityDpi:I

    .line 1284
    return-void
.end method

.method public setInitialScale(I)V
    .locals 5
    .param p1, "aScaleInPercent"    # I

    .prologue
    .line 535
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setInitialScale scaleInPercent : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetInitialScale(I)V

    .line 537
    return-void
.end method

.method public setJsEnabled(Z)V
    .locals 5
    .param p1, "aFlags"    # Z

    .prologue
    .line 403
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setJsEnabled flags : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetJsEnabled(Z)V

    .line 405
    return-void
.end method

.method public setOnEventOccurredListener(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;)V
    .locals 2
    .param p1, "aListener"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    .prologue
    .line 870
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setOnEventOccurredListener"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 871
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onEventOccurredListener:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;

    .line 872
    return-void
.end method

.method public setSapMode(I)V
    .locals 7
    .param p1, "aSapMode"    # I

    .prologue
    .line 976
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "setSapMode aSapMode : %d, id : %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 977
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->sapMode:I

    .line 978
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 979
    .local v1, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v1, :cond_1

    .line 980
    invoke-virtual {v1, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setSapMode(I)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 985
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setSapMode(I)V

    goto :goto_0
.end method

.method setSapModeValue(I)V
    .locals 0
    .param p1, "aSapMode"    # I

    .prologue
    .line 1009
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->sapMode:I

    .line 1010
    return-void
.end method

.method public setSendRefererEnabled(Z)V
    .locals 5
    .param p1, "aFlags"    # Z

    .prologue
    .line 625
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setSendRefererEnabled flags : %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 626
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetSendRefererEnabled(Z)V

    .line 627
    return-void
.end method

.method public setTlsSslSupport(I)V
    .locals 5
    .param p1, "aMode"    # I

    .prologue
    .line 834
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setTlsSslSupport flags : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 4
    .param p1, "aUserAgent"    # Ljava/lang/String;

    .prologue
    .line 573
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setUserAgent userAgent : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetUserAgent(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public setVideoCaptionEnable(Z)V
    .locals 6
    .param p1, "aEnable"    # Z

    .prologue
    .line 882
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "setVideoCaptionEnable enable : %b, id : %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 883
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeSetVideoCaptionEnable(Z)V

    .line 884
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDispCaption:Z

    .line 885
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 886
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setDispCaption(Z)V

    .line 889
    :cond_0
    return-void
.end method

.method setVideoCaptionEnableVaule(Z)V
    .locals 0
    .param p1, "aEnable"    # Z

    .prologue
    .line 910
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isDispCaption:Z

    .line 911
    return-void
.end method

.method public setVideoCaptionLanguage(I)V
    .locals 6
    .param p1, "aLanguageType"    # I

    .prologue
    .line 936
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "setVideoCaptionLanguage languageType : %d, id : %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 937
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->captionLang:I

    .line 938
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 939
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setCaptionLang(I)V

    .line 942
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 449
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "stopLoading"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeStopLoading()V

    .line 451
    return-void
.end method

.method webkitAudioError(II)V
    .locals 6
    .param p1, "aAudioId"    # I
    .param p2, "aWhat"    # I

    .prologue
    const/4 v5, 0x0

    .line 3374
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitAudioError"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 3375
    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, v5, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 3376
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapAudio:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;

    .line 3377
    .local v0, "audio":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;
    if-eqz v0, :cond_0

    .line 3378
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwAudio;->setMediaState(I)V

    .line 3379
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x6a

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3380
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3382
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method webkitVideoViewCompletion(I)V
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2521
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewCompletion id : %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2522
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2523
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_1

    .line 2540
    :cond_0
    :goto_0
    return-void

    .line 2527
    :cond_1
    iget-boolean v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->fullScreenMode:Z

    if-ne v7, v2, :cond_2

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isLoop()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isQuirksMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2528
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitExitFullscreen(I)V

    .line 2531
    :cond_2
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v2

    if-eq v2, v8, :cond_3

    .line 2532
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x69

    invoke-static {v2, v3, v8, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2533
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2535
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isLoop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2536
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x73

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v6, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2537
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method webkitVideoViewError(III)V
    .locals 8
    .param p1, "aVideoViewId"    # I
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2550
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewError"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2551
    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->playMediaId:I

    if-ne v2, p1, :cond_0

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingAudio()Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 2552
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x73

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v5, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2553
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2556
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, v6, p2, v7, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitOnEventOccurred(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 2557
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2558
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz v0, :cond_1

    .line 2559
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0x69

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2560
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2562
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method webkitVideoViewReady(I)V
    .locals 9
    .param p1, "aId"    # I

    .prologue
    const/16 v8, 0x69

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2501
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "webkitVideoViewReady id : %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2502
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->hashMapVideoView:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 2503
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 2511
    :goto_0
    return-void

    .line 2506
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    const/16 v3, 0xc

    invoke-direct {p0, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitVideoViewTotalByte(I)I

    move-result v4

    invoke-static {v2, v8, v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2507
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2508
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-static {v2, v8, v7, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2509
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public zoomIn()V
    .locals 2

    .prologue
    .line 846
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "zoomIn"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeZoomIn()V

    .line 848
    return-void
.end method

.method public zoomOut()V
    .locals 2

    .prologue
    .line 858
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "zoomOut"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->nativeZoomOut()V

    .line 860
    return-void
.end method
