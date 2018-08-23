.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
.super Landroid/view/SurfaceView;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$TOnGestureListener;
    }
.end annotation


# static fields
.field private static final DEFALUT_VOLUME:F = 0.5f

.field private static final DIM_CHANGE_ASPECT_INFO:I = 0x1

.field private static final DIM_CHANGE_BOTH_INFO:I = 0x3

.field private static final DIM_CHANGE_STEREO_INFO:I = 0x2

.field private static final DIM_CHANGE_SURFACE_CHANGE_COMPLETE:I = 0x64

.field static final STATE_CHAPTER_FAST_FOWRARD_COMPLETE:I = 0xc

.field static final STATE_CHAPTER_REWIND_COMPLETE:I = 0xd

.field static final STATE_ERROR:I = -0x1

.field static final STATE_FAST_FORWARD_COMPLETE:I = 0xa

.field static final STATE_IDLE:I = 0x0

.field static final STATE_PAUSED:I = 0x4

.field static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RESUME:I = 0x7

.field static final STATE_REWIND_COMPLETE:I = 0xb

.field static final STATE_SEEK_START:I = 0x9

.field static final STATE_SUSPEND:I = 0x6

.field static final STATE_SUSPEND_UNSUPPORTED:I = 0x8


# instance fields
.field private canPause:Z

.field private canSeekBack:Z

.field private canSeekForward:Z

.field private context:Landroid/content/Context;

.field private curPosition:I

.field private currentState:I

.field private duration:I

.field gestureDetector:Landroid/view/GestureDetector;

.field private loop:Z

.field private mCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

.field mDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

.field private mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

.field mInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

.field mPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

.field private mediaController:Landroid/widget/MediaController;

.field private mute:Z

.field private onCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

.field private onDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

.field private onErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

.field private onInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

.field private onPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

.field private onSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

.field private seekWhenPrepared:I

.field private strUri:Ljava/lang/String;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceWidth:I

.field private targetState:I

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

.field private uri:Landroid/net/Uri;

.field private videoHeight:I

.field private videoWidth:I

.field private volume:F


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;Landroid/content/Context;)V
    .locals 2
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1158
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1159
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1126
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1127
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1128
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->curPosition:I

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1677
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 1943
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$2;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .line 2000
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$3;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .line 2023
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$4;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$4;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .line 2043
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$5;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .line 2121
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$6;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .line 2155
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$7;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .line 1160
    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->context:Landroid/content/Context;

    .line 1161
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->initVideoView()V

    .line 1162
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VideoView(Context aContext)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    return v0
.end method

.method static synthetic access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 1095
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    return p1
.end method

.method static synthetic access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    return v0
.end method

.method static synthetic access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 1095
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    return p1
.end method

.method static synthetic access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceWidth:I

    return v0
.end method

.method static synthetic access$1202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 1095
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$1300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHeight:I

    return v0
.end method

.method static synthetic access$1302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 1095
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoWidth:I

    return v0
.end method

.method static synthetic access$1402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 1095
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoWidth:I

    return p1
.end method

.method static synthetic access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoHeight:I

    return v0
.end method

.method static synthetic access$1502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 1095
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoHeight:I

    return p1
.end method

.method static synthetic access$1600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->seekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$1800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 1095
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->canPause:Z

    return p1
.end method

.method static synthetic access$2302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 1095
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->canSeekBack:Z

    return p1
.end method

.method static synthetic access$2402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 1095
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->canSeekForward:Z

    return p1
.end method

.method static synthetic access$2500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    return-object v0
.end method

.method static synthetic access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    return-object v0
.end method

.method static synthetic access$2800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    return-object v0
.end method

.method static synthetic access$2900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    return-object v0
.end method

.method static synthetic access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isSetDelayable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    return-object v0
.end method

.method static synthetic access$3100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    return-object v0
.end method

.method static synthetic access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .prologue
    .line 1095
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1095
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 2185
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 2186
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 2187
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 2188
    .local v0, "anchorview":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 2189
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 2191
    .end local v0    # "anchorview":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 2187
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1732
    iput v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoWidth:I

    .line 1733
    iput v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoHeight:I

    .line 1734
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1736
    invoke-virtual {p0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setFocusable(Z)V

    .line 1737
    invoke-virtual {p0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setFocusableInTouchMode(Z)V

    .line 1739
    iput v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1740
    iput v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1742
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$TOnGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$TOnGestureListener;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$1;)V

    .line 1743
    .local v0, "tOnGestureListener":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$TOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->gestureDetector:Landroid/view/GestureDetector;

    .line 1744
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 2194
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInPlaybackState() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eq v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 2194
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2195
    goto :goto_1
.end method

.method private isSetDelayable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 2199
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSetDelayable() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 2200
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 2199
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2200
    goto :goto_1
.end method

.method private openVideo()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1848
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->uri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1852
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1853
    .local v5, "i":Landroid/content/Intent;
    const-string v6, "command"

    const-string v7, "pause"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1856
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : reset() 3"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1857
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 1858
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: reset() 3"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1859
    iput v9, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1865
    const/4 v1, 0x0

    .line 1866
    .local v1, "delemeterIndex":I
    :try_start_0
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setOnPreparedListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1867
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V

    .line 1868
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setOnPreparedListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1869
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setOnInfoListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1870
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V

    .line 1871
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setOnInfoListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1872
    const/4 v6, -0x1

    iput v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    .line 1873
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setOnCompletionListener() 3"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1874
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V

    .line 1875
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setOnCompletionListener() 3"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1876
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setOnErrorListener() 2"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1877
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V

    .line 1878
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setOnErrorListener() 2"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1879
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setOnDimChangeListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1880
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V

    .line 1881
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setOnDimChangeListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1882
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setOnSeekCompleteListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1883
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V

    .line 1884
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out : setOnSeekCompleteListener()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1886
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setParentalRate()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1887
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v7

    invoke-virtual {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getParentalRate()I

    move-result v7

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setParentalRate(I)V

    .line 1888
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setParentalRate()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1890
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->strUri:Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1891
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->strUri:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, "crid":Ljava/lang/String;
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->strUri:Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1893
    .local v4, "filename":Ljava/lang/String;
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setDataSource()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1894
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v4, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1895
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setDataSource()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1896
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setResumePlaying()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1897
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setResumePlaying(Z)V

    .line 1898
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out : setResumePlaying()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1899
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setDisplay() 1"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1900
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1901
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setDisplay() 1"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1902
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$2000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-result-object v6

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1903
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setCaptionDisplay() 1"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1904
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$2000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-result-object v7

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setCaptionDisplay(Landroid/view/SurfaceHolder;)V

    .line 1905
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setCaptionDisplay() 1"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1907
    :cond_2
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setCaptionLang() 2"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1908
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v7

    invoke-virtual {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getCaptionLang()I

    move-result v7

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setCaptionLang(I)V

    .line 1909
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setCaptionLang() 2"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1910
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : setAudioStreamType()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1911
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioStreamType(I)V

    .line 1912
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: setAudioStreamType()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1913
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v6

    iget v6, v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1916
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF In : prepareAsync()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1917
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->prepareAsync()V

    .line 1918
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "Mp4 ExIF Out: prepareAsync()"

    invoke-virtual {v6, v7}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1919
    const/4 v6, 0x1

    iput v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1920
    const/4 v6, 0x2

    iput v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1921
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->attachMediaController()V

    .line 1922
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isSetDataSource:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 1923
    .end local v0    # "crid":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1924
    .local v3, "ex":Ljava/io/IOException;
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1925
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1926
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v7

    invoke-interface {v6, v7, v10, v9}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    .line 1927
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "failed in openVideo()"

    invoke-virtual {v6, v7, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1929
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1930
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1931
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1932
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v7

    invoke-interface {v6, v7, v10, v9}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    .line 1933
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "failed in openVideo()"

    invoke-virtual {v6, v7, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1935
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 1936
    .local v2, "e":Ljava/lang/IllegalStateException;
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1937
    iput v8, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1938
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    iget-object v7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v7

    invoke-interface {v6, v7, v10, v9}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;->onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z

    .line 1939
    sget-object v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v7, "failed in openVideo()"

    invoke-virtual {v6, v7, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 3
    .param p1, "aCleartargetstate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1835
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VIdeoView release"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1837
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : reset() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1838
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 1839
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: reset() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1840
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1841
    if-eqz p1, :cond_0

    .line 1842
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1845
    :cond_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 1173
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->canPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->canSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->canSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 2206
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 3

    .prologue
    .line 1231
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1232
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    if-ne v1, v2, :cond_0

    .line 1233
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : getCurrentPosition()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1234
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getCurrentPosition()I

    move-result v0

    .line 1235
    .local v0, "result":I
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out : getCurrentPosition()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1236
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->curPosition:I

    .line 1241
    .end local v0    # "result":I
    :goto_0
    return v0

    .line 1239
    :cond_0
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->curPosition:I

    goto :goto_0

    .line 1241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 1252
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1253
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    if-lez v0, :cond_0

    .line 1254
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    .line 1266
    :goto_0
    return v0

    .line 1257
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1258
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : getDuration()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    .line 1260
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: getDuration()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1262
    :cond_1
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    goto :goto_0

    .line 1265
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    .line 1266
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->strUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 1596
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 1585
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoWidth:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1512
    const/high16 v0, -0x40800000    # -1.0f

    .line 1514
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->volume:F

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1277
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return v1

    .line 1280
    :cond_1
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF In : isPlaying() 1"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1281
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isPlaying()Z

    move-result v0

    .line 1282
    .local v0, "isplaying":Z
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "Mp4 ExIF Out : isPlaying() 1"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1283
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isReachPlayEnd()Z
    .locals 2

    .prologue
    .line 1217
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->duration:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->curPosition:I

    if-ne v0, v1, :cond_0

    .line 1218
    const/4 v0, 0x1

    .line 1220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaControlHide()V
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 1656
    :cond_0
    return-void
.end method

.method public mediaControlShow(Z)V
    .locals 1
    .param p1, "aIsPlaying"    # Z

    .prologue
    .line 1640
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 1643
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "aNewConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x4

    .line 1773
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1774
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VideoView.onConfigurationChanged()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1788
    :cond_0
    :goto_0
    return-void

    .line 1779
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isFullScreenMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1783
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    if-ne v0, v2, :cond_0

    .line 1784
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setDisplay() 4"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1786
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out : setDisplay() 4"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1747
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->gestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    .line 1748
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1768
    :goto_0
    return v1

    .line 1752
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1754
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1768
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1757
    :pswitch_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_1

    .line 1758
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 1754
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "aHasWindowFocus"    # Z

    .prologue
    const/4 v5, 0x4

    .line 1793
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 1794
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VideoView.onWindowFocusChanged() hasWindowFocus=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1795
    if-eqz p1, :cond_0

    .line 1796
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v0

    iget v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-ne v0, v5, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : drawLastFrame() 3"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->drawLastFrame()V

    .line 1799
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out : drawLastFrame() 3"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1802
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1294
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : isPlaying() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1296
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->isPlaying()Z

    move-result v0

    .line 1297
    .local v0, "isplaying":Z
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out : isPlaying() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1298
    if-eqz v0, :cond_0

    .line 1299
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : pause()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->pause()V

    .line 1301
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: pause()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1302
    const/4 v1, 0x4

    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1306
    .end local v0    # "isplaying":Z
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "aCleartargetstate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1666
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1667
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : reset() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->reset()V

    .line 1669
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: reset() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1670
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    .line 1671
    if-eqz p1, :cond_0

    .line 1672
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1675
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1413
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-ne v0, v1, :cond_1

    .line 1414
    const/4 v0, 0x7

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-ne v0, v1, :cond_2

    .line 1418
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : start() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->start()V

    .line 1420
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: start() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1421
    const/4 v0, 0x3

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    goto :goto_0

    .line 1424
    :cond_2
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1425
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->openVideo()V

    goto :goto_0
.end method

.method public resumeForSuspend()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1338
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1348
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1342
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : resume()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->resume()V

    .line 1344
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: resume()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1345
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1346
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "aMilliSec"    # I

    .prologue
    .line 1358
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    const/16 v0, 0x9

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1360
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : seekTo()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->seekTo(I)V

    .line 1362
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: seekTo()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1363
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->seekWhenPrepared:I

    .line 1367
    :goto_0
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->curPosition:I

    .line 1368
    return-void

    .line 1365
    :cond_0
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->seekWhenPrepared:I

    goto :goto_0
.end method

.method public setLoop(Z)V
    .locals 2
    .param p1, "aLoop"    # Z

    .prologue
    .line 1548
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1549
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setLoop"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setLooping(Z)V

    .line 1551
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out : setLoop"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1553
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "aController"    # Landroid/widget/MediaController;

    .prologue
    .line 1600
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 1604
    :cond_0
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaController:Landroid/widget/MediaController;

    .line 1605
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->attachMediaController()V

    .line 1606
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "aMute"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1525
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1528
    :cond_0
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mute:Z

    .line 1529
    const/4 v0, 0x1

    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mute:Z

    if-ne v0, v1, :cond_1

    .line 1530
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setVolume() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setVolume(FF)V

    .line 1532
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: setVolume() 2"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0

    .line 1534
    :cond_1
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setVolume() 3"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1535
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->volume:F

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->volume:F

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setVolume(FF)V

    .line 1536
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: setVolume() 3"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .prologue
    .line 1613
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onCompletionListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .line 1614
    return-void
.end method

.method public setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .prologue
    .line 1625
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onDimChangeListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .line 1626
    return-void
.end method

.method public setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .prologue
    .line 1617
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onErrorListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .line 1618
    return-void
.end method

.method public setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .prologue
    .line 1621
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onInfoListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .line 1622
    return-void
.end method

.method public setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .prologue
    .line 1609
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onPreparedListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .line 1610
    return-void
.end method

.method public setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .prologue
    .line 1629
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->onSeekCompleteListener:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .line 1630
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "aUri"    # Ljava/lang/String;

    .prologue
    .line 1464
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->strUri:Ljava/lang/String;

    .line 1465
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0
    .param p1, "aHeight"    # I

    .prologue
    .line 1574
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoHeight:I

    .line 1575
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "aPath"    # Ljava/lang/String;

    .prologue
    .line 1437
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setUri(Ljava/lang/String;)V

    .line 1438
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1439
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 1449
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->uri:Landroid/net/Uri;

    .line 1450
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->seekWhenPrepared:I

    .line 1451
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->openVideo()V

    .line 1452
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->requestLayout()V

    .line 1453
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->invalidate()V

    .line 1454
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0
    .param p1, "aWidth"    # I

    .prologue
    .line 1563
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->videoWidth:I

    .line 1564
    return-void
.end method

.method public setVolume(F)V
    .locals 4
    .param p1, "aVol"    # F

    .prologue
    .line 1486
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1489
    :cond_1
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 1490
    const/4 p1, 0x0

    .line 1495
    :cond_2
    :goto_1
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->volume:F

    .line 1496
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-result-object v0

    invoke-direct {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1497
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setVolume() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->volume:F

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->volume:F

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setVolume(FF)V

    .line 1499
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: setVolume() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_3
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 1492
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 1378
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : try to start()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : start() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->start()V

    .line 1382
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: start() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1383
    const/4 v0, 0x3

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1385
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1395
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1396
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : stop()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->stop()V

    .line 1398
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: stop()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1400
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1401
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->curPosition:I

    .line 1403
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1317
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    if-ne v0, v2, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : suspend()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->suspend()V

    .line 1324
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: suspend()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1325
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->targetState:I

    .line 1326
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->currentState:I

    goto :goto_0
.end method
