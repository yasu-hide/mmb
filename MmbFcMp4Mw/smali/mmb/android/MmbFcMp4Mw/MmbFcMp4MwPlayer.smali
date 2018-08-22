.class public Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
.super Ljava/lang/Object;
.source "MmbFcMp4MwPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;,
        Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;,
        Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_MUTE_OFF:I = 0x0

.field public static final AUDIO_MUTE_ON:I = 0x1

.field public static final BLUETOOTH_DEVICE:I = 0x1

.field private static final DIM_CHANGE:I = 0x12c

.field public static final DIM_CHANGE_ASPECT_INFO:I = 0x1

.field public static final DIM_CHANGE_BOTH_INFO:I = 0x3

.field public static final DIM_CHANGE_STEREO_INFO:I = 0x2

.field public static final DIM_CHANGE_SURFACE_CHANGE_COMPLETE:I = 0x64

.field public static final FIRST_LANGUAGE:I = 0x0

.field public static final H264_ASPECT_16_9:I = 0x0

.field public static final H264_ASPECT_4_3:I = 0x1

.field public static final H264_STEREOVIEW_2D:I = 0x0

.field public static final H264_STEREOVIEW_3D:I = 0x1

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMmbFcMp4MwPlayer"

.field public static final INTERNAL_DEVICE:I = 0x0

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_AFTER_TIME_LIMIT:I = 0x67

.field public static final MEDIA_ERROR_ALREADY_IN_USE:I = 0x6d

.field public static final MEDIA_ERROR_BEFORE_TIME_LIMIT:I = 0x66

.field public static final MEDIA_ERROR_COUNT_LIMIT:I = 0x69

.field public static final MEDIA_ERROR_INTERNAL:I = 0x6a

.field public static final MEDIA_ERROR_LICENCE_IN_USE:I = 0x6b

.field public static final MEDIA_ERROR_NO_LICENCE:I = 0x65

.field public static final MEDIA_ERROR_PARENTAL_LOCK:I = 0x6c

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TERM_EXPIRED:I = 0x68

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_CANNOT_FORWARD_TRICKPLAY:I = 0x2c3

.field public static final MEDIA_INFO_CANNOT_REVERSE_TRICKPLAY:I = 0x2c2

.field public static final MEDIA_INFO_CANNOT_SYNC_START:I = 0x2ce

.field public static final MEDIA_INFO_CHANGE_SEQUENCE_LABEL:I = 0x2c6

.field public static final MEDIA_INFO_CHANGE_TYPE:I = 0x2ca

.field public static final MEDIA_INFO_CHAPTER_FAST_FORWARD_COMPLETE:I = 0x2c8

.field public static final MEDIA_INFO_CHAPTER_FAST_FORWARD_TO_END:I = 0x2cb

.field public static final MEDIA_INFO_CHAPTER_REWIND_COMPLETE:I = 0x2c9

.field public static final MEDIA_INFO_COMMAND_REJECT:I = 0x2cd

.field public static final MEDIA_INFO_EXPIRED:I = 0x2c1

.field public static final MEDIA_INFO_FAST_FORWARD_COMPLETE:I = 0x2be

.field public static final MEDIA_INFO_FAST_FORWARD_TO_END:I = 0x2c4

.field public static final MEDIA_INFO_ILLEGAL_STATE:I = 0x2cc

.field public static final MEDIA_INFO_PAUSE_COMPLETE:I = 0x2bd

.field public static final MEDIA_INFO_REACH_CANNOT_FORWARD_TRICKPLAY_INTERVAL:I = 0x2c0

.field public static final MEDIA_INFO_REWIND_COMPLETE:I = 0x2bf

.field public static final MEDIA_INFO_REWIND_TO_TOP:I = 0x2c5

.field public static final MEDIA_INFO_START_COMPLETE:I = 0x2c7

.field public static final MEDIA_INFO_STOP_COMPLETE:I = 0x2bc

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field public static final PRIMARY_AUDIO:I = 0x0

.field public static final SECONDARY_AUDIO:I = 0x1

.field public static final SECOND_LANGUAGE:I = 0x1

.field public static final STEREO_AUDIO:I = 0x2


# instance fields
.field private log:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

.field private mCaptionCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;

.field private mCaptionHolder:Landroid/view/SurfaceHolder;

.field private mCaptionSurface:Landroid/view/Surface;

.field private mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

.field private mNativeContext:I

.field private mOnCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

.field private mOnDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

.field private mOnErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

.field private mOnInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

.field private mOnPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

.field private mOnSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mVideoCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;

.field private mVideoSurface:Landroid/view/Surface;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mvideoHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    const-string v0, "/system/lib/libmmbfcmp4mw_jni.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->native_init()V

    .line 456
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    invoke-direct {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;-><init>()V

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->log:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    .line 420
    new-instance v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;

    invoke-direct {v1, p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;-><init>(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;

    .line 425
    new-instance v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;

    invoke-direct {v1, p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;-><init>(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;

    .line 440
    iput-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 467
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 468
    new-instance v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;-><init>(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    .line 480
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->native_setup(Ljava/lang/Object;)V

    .line 481
    return-void

    .line 469
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 470
    new-instance v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;-><init>(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    goto :goto_0

    .line 472
    :cond_1
    iput-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _chapterForward()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _chapterRewind()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _drawLastFrame(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _fastForward()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _fastForward(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _getAudioMute()I
.end method

.method private native _getChapterIdList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _getCurrentPosition()I
.end method

.method private native _getDuration()I
.end method

.method private native _getFastForwardEnable()B
.end method

.method private native _getFastForwardEnableOnChapter(I)Z
.end method

.method private native _getIntervalOnChapter(IILjava/lang/Object;)V
.end method

.method private native _getRewindEnable()B
.end method

.method private native _getSequenceLabel(I)I
.end method

.method private native _getSequenceLabelList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _getVideoHeight()I
.end method

.method private native _getVideoWidth()I
.end method

.method private native _getsCutOnePicture()Landroid/graphics/Bitmap;
.end method

.method private native _isLooping()Z
.end method

.method private native _isPlaying()Z
.end method

.method private native _isResumeInfoExist(Ljava/lang/String;)Z
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _resume()V
.end method

.method private native _rewind()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _rewind(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setAudioMute(I)V
.end method

.method private native _setAudioOutDev(I)V
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setCaptionLang(I)V
.end method

.method private native _setCaptionSurface(IIII)V
.end method

.method private native _setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDispCaption(Z)V
.end method

.method private native _setLooping(Z)V
.end method

.method private native _setParentalRate(I)V
.end method

.method private native _setResumePlaying(Z)V
.end method

.method private native _setSapMode(I)V
.end method

.method private native _setVideoSurface(IIII)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _suspend()V
.end method

.method private native _syncStart(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$002(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 38
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$100(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;IIII)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setVideoSurface(IIII)V

    return-void
.end method

.method static synthetic access$1000(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1100(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    return-object v0
.end method

.method static synthetic access$1200(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    return-object v0
.end method

.method static synthetic access$1300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->updateSurfaceScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->log:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;

    return-object v0
.end method

.method static synthetic access$400(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$402(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 38
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$500(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;IIII)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setCaptionSurface(IIII)V

    return-void
.end method

.method static synthetic access$600(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$700(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stayAwake(Z)V

    return-void
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "aMmbFcMp4MwPlayer_ref"    # Ljava/lang/Object;
    .param p1, "aWhat"    # I
    .param p2, "aArg1"    # I
    .param p3, "aArg2"    # I
    .param p4, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 1336
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "aMmbFcMp4MwPlayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 1337
    .local v1, "mp":Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    if-nez v1, :cond_1

    .line 1344
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v2, v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 1341
    iget-object v2, v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1342
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    invoke-virtual {v2, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "aAwake"    # Z

    .prologue
    .line 996
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 997
    if-eqz p1, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1003
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mStayAwake:Z

    .line 1004
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->updateSurfaceScreenOn()V

    .line 1005
    return-void

    .line 999
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 748
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 749
    iget-object v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mStayAwake:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 751
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    iget-boolean v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mStayAwake:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 754
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 749
    goto :goto_0

    :cond_3
    move v1, v2

    .line 752
    goto :goto_1
.end method


# virtual methods
.method public native _getLeftVolume()F
.end method

.method public native _getRightVolume()F
.end method

.method public native _setTrickPlayForceDisable()V
.end method

.method public chapterForward()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_chapterForward()V

    .line 1147
    return-void
.end method

.method public chapterRewind()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_chapterRewind()V

    .line 1157
    return-void
.end method

.method public drawLastFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_drawLastFrame(I)V

    .line 1190
    return-void
.end method

.method public drawLastFrame(I)V
    .locals 0
    .param p1, "aMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_drawLastFrame(I)V

    .line 1180
    return-void
.end method

.method public fastForward()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_fastForward()V

    .line 1127
    return-void
.end method

.method public fastForward(I)V
    .locals 0
    .param p1, "aSpeed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_fastForward(I)V

    .line 1105
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1361
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->native_finalize()V

    .line 1362
    return-void
.end method

.method public getAudioMute()I
    .locals 1

    .prologue
    .line 618
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getAudioMute()I

    move-result v0

    return v0
.end method

.method public getChapterIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "aChapterIdList":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwChapterIdInfo;>;"
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getChapterIdList(Ljava/util/List;)V

    .line 522
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getDuration()I

    move-result v0

    return v0
.end method

.method public getFastForwardEnable()B
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getFastForwardEnable()B

    move-result v0

    return v0
.end method

.method public getFastForwardEnableOnChapter(I)Z
    .locals 1
    .param p1, "aChapterId"    # I

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getFastForwardEnableOnChapter(I)Z

    move-result v0

    return v0
.end method

.method public getIntervalOnChapter(IILmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;)V
    .locals 0
    .param p1, "aSeqLabelId"    # I
    .param p2, "aChapterId"    # I
    .param p3, "aInterval"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwInterval;

    .prologue
    .line 532
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getIntervalOnChapter(IILjava/lang/Object;)V

    .line 533
    return-void
.end method

.method public getLeftVolume()F
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getLeftVolume()F

    move-result v0

    return v0
.end method

.method public getRewindEnable()B
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getRewindEnable()B

    move-result v0

    return v0
.end method

.method public getRightVolume()F
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getRightVolume()F

    move-result v0

    return v0
.end method

.method public getSequenceLabel(I)I
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getSequenceLabel(I)I

    move-result v0

    return v0
.end method

.method public getSequenceLabelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "aSeqLabelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getSequenceLabelList(Ljava/util/List;)V

    .line 562
    return-void
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 600
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getsCutOnePicture()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1248
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_getsCutOnePicture()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_isPlaying()Z

    move-result v0

    return v0
.end method

.method public isResumeInfoExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_isResumeInfoExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stayAwake(Z)V

    .line 1092
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_pause()V

    .line 1093
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 954
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_prepare()V

    .line 955
    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 966
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_prepareAsync()V

    .line 967
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1012
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stayAwake(Z)V

    .line 1013
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->updateSurfaceScreenOn()V

    .line 1014
    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .line 1015
    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .line 1016
    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .line 1017
    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .line 1018
    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .line 1019
    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .line 1020
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_release()V

    .line 1021
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 975
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stayAwake(Z)V

    .line 976
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_reset()V

    .line 978
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mEventHandler:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;

    invoke-virtual {v0, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 979
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 981
    iput-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    .line 983
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 985
    iput-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    .line 987
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_resume()V

    .line 1044
    return-void
.end method

.method public rewind()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1136
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_rewind()V

    .line 1137
    return-void
.end method

.method public rewind(I)V
    .locals 0
    .param p1, "aSpeed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_rewind(I)V

    .line 1117
    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .param p1, "aMsec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_seekTo(I)V

    .line 1169
    return-void
.end method

.method public setAudioMute(I)V
    .locals 0
    .param p1, "aMute"    # I

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setAudioMute(I)V

    .line 936
    return-void
.end method

.method public setAudioOutDev(I)V
    .locals 0
    .param p1, "aAudioHW"    # I

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setAudioOutDev(I)V

    .line 928
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "aStreamType"    # I

    .prologue
    .line 870
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setAudioStreamType(I)V

    .line 871
    return-void
.end method

.method public setCaptionDisplay(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 764
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    if-eq v1, p1, :cond_1

    .line 765
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 768
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    .line 769
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 770
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$CaptionSurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 773
    :cond_1
    if-eqz p1, :cond_3

    .line 774
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionSurface:Landroid/view/Surface;

    .line 775
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 776
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 777
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setCaptionSurface(IIII)V

    .line 782
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->updateSurfaceScreenOn()V

    .line 783
    return-void

    .line 780
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mCaptionSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public setCaptionLang(I)V
    .locals 0
    .param p1, "aLang"    # I

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setCaptionLang(I)V

    .line 912
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setDataSource(Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aSeqLabel"    # Ljava/lang/String;
    .param p3, "aPtime"    # I
    .param p4, "aUseLicenceFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0, p1, p2, p3, p4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setDataSource(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 678
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aFilePath"    # Ljava/lang/String;
    .param p3, "aUseLicenceFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 665
    return-void
.end method

.method public setDelayTime(JJ)V
    .locals 0
    .param p1, "aAudioDelayTime"    # J
    .param p3, "aVideoDelayTime"    # J

    .prologue
    .line 921
    return-void
.end method

.method public setDispCaption(Z)V
    .locals 0
    .param p1, "aDisp"    # Z

    .prologue
    .line 902
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setDispCaption(Z)V

    .line 903
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 694
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    if-eq v1, p1, :cond_1

    .line 695
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 698
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    .line 699
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mvideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoCreatedCallback:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer$VideoSurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 703
    :cond_1
    if-eqz p1, :cond_3

    .line 704
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoSurface:Landroid/view/Surface;

    .line 705
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 706
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 707
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setVideoSurface(IIII)V

    .line 712
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->updateSurfaceScreenOn()V

    .line 713
    return-void

    .line 710
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mVideoSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "aLooping"    # Z

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setLooping(Z)V

    .line 850
    return-void
.end method

.method public setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .prologue
    .line 1215
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .line 1216
    return-void
.end method

.method public setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .prologue
    .line 1241
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .line 1242
    return-void
.end method

.method public setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .prologue
    .line 1224
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .line 1225
    return-void
.end method

.method public setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .prologue
    .line 1206
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .line 1207
    return-void
.end method

.method public setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .prologue
    .line 1198
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .line 1199
    return-void
.end method

.method public setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .prologue
    .line 1233
    iput-object p1, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mOnSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .line 1234
    return-void
.end method

.method public setParentalRate(I)V
    .locals 0
    .param p1, "aPrtlRate"    # I

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setParentalRate(I)V

    .line 944
    return-void
.end method

.method public setResumePlaying(Z)V
    .locals 0
    .param p1, "aResumePlaying"    # Z

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setResumePlaying(Z)V

    .line 859
    return-void
.end method

.method public setSapMode(I)V
    .locals 0
    .param p1, "aSapMode"    # I

    .prologue
    .line 894
    invoke-direct {p0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setSapMode(I)V

    .line 895
    return-void
.end method

.method public setTrickPlayForceDisable()V
    .locals 0

    .prologue
    .line 684
    invoke-virtual {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setTrickPlayForceDisable()V

    .line 685
    return-void
.end method

.method public setVolume(FF)V
    .locals 0
    .param p1, "aLeftVolume"    # F
    .param p2, "aRightVolume"    # F

    .prologue
    .line 885
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_setVolume(FF)V

    .line 886
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aMode"    # I

    .prologue
    .line 828
    const/4 v1, 0x0

    .line 829
    .local v1, "washeld":Z
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 830
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    const/4 v1, 0x1

    .line 832
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 834
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 836
    :cond_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 837
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 838
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 839
    if-eqz v1, :cond_2

    .line 840
    iget-object v2, p0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 842
    :cond_2
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stayAwake(Z)V

    .line 1058
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_start()V

    .line 1059
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1079
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stayAwake(Z)V

    .line 1080
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_stop()V

    .line 1081
    return-void
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 1033
    invoke-direct {p0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_suspend()V

    .line 1034
    return-void
.end method

.method public syncStart(J)V
    .locals 1
    .param p1, "aOpenDateTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1068
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stayAwake(Z)V

    .line 1069
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->_syncStart(J)V

    .line 1070
    return-void
.end method
