.class public Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;
.source "MmbFcControllerSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$13;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;",
        ">;",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;"
    }
.end annotation


# static fields
.field private static final MMBFC_WAKELOCK_LOCK:Ljava/lang/Object;


# instance fields
.field protected drmRmpiOutCtrlInfo:[B

.field protected isOnPauseProcess:Z

.field protected mAsyncType:I

.field protected mAudioSapMode:I

.field mAudioState:I

.field protected mCaptionFlag:Z

.field protected mCaptionHolder:Landroid/view/SurfaceHolder;

.field protected mCaptionMode:I

.field protected mErrInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFcEventMulticaster:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

.field protected mFcHandler:Landroid/os/Handler;

.field protected mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

.field protected mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field protected mMediaScheme:Z

.field protected mOpenDateTime:J

.field protected mPlaySpeed:I

.field protected mPosition:I

.field protected mPositionFlag:Z

.field protected mPositionThread:Ljava/lang/Thread;

.field protected mPrepareFlag:Z

.field protected mResultInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mResumeFlag:Z

.field protected mSyncPlayFlag:Z

.field private mUiServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field protected mVideoHolder:Landroid/view/SurfaceHolder;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field protected strCrid:Ljava/lang/String;

.field protected strEntityId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->MMBFC_WAKELOCK_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 4
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x63

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 104
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcEventMulticaster:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResultInfo:Ljava/util/Map;

    .line 119
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    .line 124
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionFlag:Z

    .line 129
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPrepareFlag:Z

    .line 134
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionFlag:Z

    .line 144
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionMode:I

    .line 149
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioSapMode:I

    .line 155
    const/16 v0, 0xa

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAsyncType:I

    .line 160
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResumeFlag:Z

    .line 165
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mMediaScheme:Z

    .line 170
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mErrInfo:Ljava/util/List;

    .line 190
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->drmRmpiOutCtrlInfo:[B

    .line 200
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isOnPauseProcess:Z

    .line 210
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioState:I

    .line 226
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcHandler:Landroid/os/Handler;

    .line 232
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInIdleSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInIdleSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 234
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 236
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PREPARED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPreparedSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPreparedSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 238
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 240
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPausedSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPausedSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 242
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->FASTFORWARD:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInFastForwardSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInFastForwardSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 244
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->REWIND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInRewindSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInRewindSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 246
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStoppedSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStoppedSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 248
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 251
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->ERROR:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInErrorSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInErrorSv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 253
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInBackgroundPlaySv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInBackgroundPlaySv;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 256
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    .line 262
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->transit(Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcEventListener()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->movePlayStateOnChangeState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setCompleteEventPlayBackgroud(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->backgroundPictCtl(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setWakeLock(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v0

    return-object v0
.end method

.method private backgroundPictCtl(Z)V
    .locals 7
    .param p1, "aPictDisp"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3479
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    const/high16 v1, 0x80000

    const/4 v3, 0x0

    move v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 3489
    return-void
.end method

.method private canAudioDeviceMute()Z
    .locals 2

    .prologue
    .line 1807
    const/4 v0, 0x0

    .line 1808
    .local v0, "result":Z
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioState:I

    if-nez v1, :cond_0

    .line 1809
    const/4 v0, 0x1

    .line 1814
    :cond_0
    return v0
.end method

.method private clearAudioMuteByDevice(Landroid/content/Intent;)V
    .locals 6
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1762
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v1

    .line 1764
    .local v1, "audioFlg":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->canAudioDeviceMute()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1767
    :cond_0
    if-nez v1, :cond_2

    .line 1768
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1769
    .local v0, "audio":Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1770
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setAudioMuteOff()V

    .line 1771
    const/4 v2, 0x0

    .line 1772
    .local v2, "setParam":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1773
    const/4 v2, 0x1

    .line 1779
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setAudioOutDev(I)V

    .line 1785
    .end local v0    # "audio":Landroid/media/AudioManager;
    .end local v2    # "setParam":I
    :cond_2
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioState:I

    .line 1789
    return-void
.end method

.method private createThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 2974
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$11;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$11;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getFcEventListener()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    .locals 1

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcEventMulticaster:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

    .line 3024
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
    return-object v0
.end method

.method private getFcHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initFcPlayerData()V
    .locals 4

    .prologue
    const/16 v3, 0x63

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3082
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionHolder:Landroid/view/SurfaceHolder;

    .line 3083
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mVideoHolder:Landroid/view/SurfaceHolder;

    .line 3084
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    .line 3085
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPlaySpeed:I

    .line 3086
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mOpenDateTime:J

    .line 3087
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPosition:I

    .line 3088
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionFlag:Z

    .line 3089
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPrepareFlag:Z

    .line 3090
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionFlag:Z

    .line 3091
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResumeFlag:Z

    .line 3092
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mMediaScheme:Z

    .line 3093
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    .line 3094
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionMode:I

    .line 3095
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioSapMode:I

    .line 3100
    return-void
.end method

.method private isMatchServiceContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Z
    .locals 2
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 3061
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mUiServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 3066
    .local v0, "matchflg":Z
    :goto_0
    return v0

    .line 3061
    .end local v0    # "matchflg":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePlayStateOnChangeState(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 2575
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 2577
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$13;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$library$filecast$MmbFcPlayerStateSv:[I

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2612
    :cond_0
    :goto_0
    return-void

    .line 2581
    :pswitch_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getRoundPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2583
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    goto :goto_0

    .line 2586
    :cond_1
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    goto :goto_0

    .line 2592
    :pswitch_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getRoundPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->handlerPosition(I)V

    .line 2595
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    goto :goto_0

    .line 2601
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 2603
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    goto :goto_0

    .line 2604
    :cond_3
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 2606
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    goto :goto_0

    .line 2577
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCompleteEvent()V
    .locals 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V

    .line 2203
    return-void
.end method

.method private setCompleteEventPlayBackgroud(Z)V
    .locals 12
    .param p1, "aRoundPlay"    # Z

    .prologue
    const/4 v11, 0x0

    .line 2224
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 2227
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFileDuration()I

    move-result v8

    .line 2233
    .local v8, "intmsec":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getSequenceLabel(I)I

    move-result v9

    .line 2242
    .local v9, "intresid":I
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2252
    .local v2, "lngtime":J
    const/16 v1, 0x66

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 2260
    if-eqz p1, :cond_1

    .line 2262
    const/4 v6, 0x4

    .line 2265
    .local v6, "code":I
    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 2271
    .local v10, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getSequenceLabel(I)I

    move-result v9

    .line 2280
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2290
    const/16 v1, 0x65

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 2307
    :goto_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$6;

    invoke-direct {v4, p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2326
    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    .line 2328
    const/4 v1, 0x3

    if-ne v6, v1, :cond_0

    .line 2329
    invoke-direct {p0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->backgroundPictCtl(Z)V

    .line 2330
    invoke-direct {p0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setWakeLock(Z)V

    .line 2335
    :cond_0
    return-void

    .line 2298
    .end local v6    # "code":I
    .end local v10    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    :cond_1
    const/4 v6, 0x3

    .line 2301
    .restart local v6    # "code":I
    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 2303
    .restart local v10    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    div-int/lit16 v7, v8, 0x3e8

    .line 2305
    .local v7, "intintsec":I
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->handlerPosition(I)V

    goto :goto_0
.end method

.method private setDimChangeEvent()V
    .locals 2

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V

    .line 2764
    return-void
.end method

.method private setErrorEvent()V
    .locals 2

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V

    .line 2932
    return-void
.end method

.method private setPositionEvent()V
    .locals 1

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2950
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 2951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    .line 2957
    :cond_0
    return-void
.end method

.method private setSeekCompleteEvent()V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$7;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$7;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V

    .line 2375
    return-void
.end method

.method private setStateChangeEvent()V
    .locals 2

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$8;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V

    .line 2558
    return-void
.end method

.method private setWakeLock(Z)V
    .locals 6
    .param p1, "aWakeLockFlag"    # Z

    .prologue
    .line 3442
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->MMBFC_WAKELOCK_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 3444
    if-eqz p1, :cond_1

    .line 3445
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3447
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "WakeLock Partial"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 3449
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3459
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3463
    return-void

    .line 3451
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3452
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3453
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mWakelock:Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3456
    :catch_0
    move-exception v0

    .line 3457
    .local v0, "err":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Exception by PowerManager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3459
    .end local v0    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    return-object v0
.end method


# virtual methods
.method public addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V
    .locals 1
    .param p1, "aState"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    .param p2, "aObject"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    .prologue
    .line 295
    move-object v0, p2

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    invoke-virtual {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->setController(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    .line 304
    invoke-super {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    .line 312
    return-void
.end method

.method public bridge synthetic addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    .prologue
    .line 63
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->addStateObject(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V

    return-void
.end method

.method protected checkCurrentState(Z)V
    .locals 2
    .param p1, "aCheckInit"    # Z

    .prologue
    .line 1863
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$13;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$library$filecast$MmbFcPlayerStateSv:[I

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1883
    :cond_0
    return-void

    .line 1869
    :pswitch_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1872
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1874
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1863
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs checkParamNullAndEmpty([Ljava/lang/Object;)V
    .locals 5
    .param p1, "aParams"    # [Ljava/lang/Object;

    .prologue
    .line 1900
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1902
    .local v3, "object":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 1904
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 1908
    :cond_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1910
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 1900
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1916
    .end local v3    # "object":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method protected controlThread(Z)V
    .locals 1
    .param p1, "aStart"    # Z

    .prologue
    .line 3377
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionFlag:Z

    .line 3380
    if-eqz p1, :cond_1

    .line 3382
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 3384
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->createThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    .line 3386
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3400
    :cond_0
    :goto_0
    return-void

    .line 3391
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 3393
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPositionThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method public drawLastFrame()V
    .locals 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->drawLastFrame()V

    .line 1472
    :cond_0
    return-void
.end method

.method public end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->backgroundPictCtl(Z)V

    .line 573
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setWakeLock(Z)V

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->end()V

    .line 588
    return-void
.end method

.method public getChapterInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1202
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getChapterInfo()Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1212
    .local v1, "lsresult":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;>;"
    return-object v1

    .line 1213
    .end local v1    # "lsresult":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerChapterInfoSv;>;"
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1215
    throw v0
.end method

.method public getCurrentPlayPosition()I
    .locals 5

    .prologue
    .line 899
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getCurrentPlayPosition()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 908
    .local v1, "intresult":I
    return v1

    .line 909
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 910
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    throw v0
.end method

.method protected getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .locals 2

    .prologue
    .line 3418
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 3426
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    return-object v0
.end method

.method public getFileDuration()I
    .locals 5

    .prologue
    .line 933
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getFileDuration()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 942
    .local v1, "intresult":I
    return v1

    .line 943
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 944
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    throw v0
.end method

.method public getModuleState()I
    .locals 2

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getModuleState()I

    move-result v0

    .line 986
    .local v0, "intresult":I
    return v0
.end method

.method public getPlaySpeed()I
    .locals 5

    .prologue
    .line 1046
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getPlaySpeed()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1055
    .local v1, "intresult":I
    return v1

    .line 1056
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    throw v0
.end method

.method public getRoundPlaying()Z
    .locals 5

    .prologue
    .line 1124
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getRoundPlaying()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1133
    .local v0, "blnresult":Z
    return v0

    .line 1134
    .end local v0    # "blnresult":Z
    :catch_0
    move-exception v1

    .line 1135
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    throw v1
.end method

.method public getTrickPlayEnable()I
    .locals 5

    .prologue
    .line 1164
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getTrickPlayEnable()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1173
    .local v1, "intresult":I
    return v1

    .line 1174
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    throw v0
.end method

.method public getVideoHeight()I
    .locals 5

    .prologue
    .line 1237
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getVideoHeight()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1246
    .local v1, "intresult":I
    return v1

    .line 1247
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    throw v0
.end method

.method public getVideoWidth()I
    .locals 5

    .prologue
    .line 1271
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getVideoWidth()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1280
    .local v1, "intresult":I
    return v1

    .line 1281
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 1282
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    throw v0
.end method

.method protected handlerPosition(I)V
    .locals 3
    .param p1, "aPosition"    # I

    .prologue
    .line 3337
    move v0, p1

    .line 3340
    .local v0, "intintsec":I
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPosition:I

    .line 3342
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$12;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$12;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3359
    return-void
.end method

.method protected isPlayState()Z
    .locals 3

    .prologue
    .line 3259
    const/4 v0, 0x0

    .line 3261
    .local v0, "matchflag":Z
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$13;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$library$filecast$MmbFcPlayerStateSv:[I

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 3275
    :goto_0
    return v0

    .line 3267
    :pswitch_0
    const/4 v0, 0x1

    .line 3268
    goto :goto_0

    .line 3261
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isPrepareState()Z
    .locals 3

    .prologue
    .line 3236
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PREPARED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3241
    .local v0, "matchflag":Z
    return v0
.end method

.method public isResumeInfoExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1085
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->isResumeInfoExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1094
    .local v0, "blnresult":Z
    return v0

    .line 1095
    .end local v0    # "blnresult":Z
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    throw v1

    .line 1098
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 1099
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    throw v1
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 8
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 1617
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->checkParamNullAndEmpty([Ljava/lang/Object;)V

    .line 1620
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1622
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$3;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1642
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isPlayState()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    if-ne v5, v6, :cond_4

    .line 1646
    :cond_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getUsbConnectState(Landroid/content/Intent;)I

    move-result v4

    .line 1649
    .local v4, "state":I
    if-eq v7, v4, :cond_3

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isConnectedIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1651
    :cond_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setAudioMuteByDevice()V

    .line 1661
    .end local v4    # "state":I
    :cond_4
    :goto_0
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    .line 1663
    const/4 v3, 0x0

    .line 1666
    .local v3, "saveDevice":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    move-object v3, v0

    .line 1667
    iget v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-ne v5, v7, :cond_5

    .line 1668
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$4;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1696
    .end local v3    # "saveDevice":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :cond_5
    :goto_1
    return-void

    .line 1653
    .restart local v4    # "state":I
    :cond_6
    const/4 v5, 0x2

    if-eq v5, v4, :cond_7

    :try_start_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1656
    :cond_7
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->clearAudioMuteByDevice(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1689
    .end local v4    # "state":I
    :catch_0
    move-exception v1

    .line 1690
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1685
    .end local v1    # "err":Ljava/lang/Exception;
    .restart local v3    # "saveDevice":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :catch_1
    move-exception v2

    .line 1686
    .local v2, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 4
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1577
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isMatchServiceContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1583
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->end()V

    .line 1588
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->initFcPlayerData()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1591
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 1592
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 3
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v2, 0x0

    .line 1531
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isOnPauseProcess:Z

    .line 1534
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isMatchServiceContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1537
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    .line 1538
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setWakeLock(Z)V

    .line 1539
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->backgroundPictCtl(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isOnPauseProcess:Z

    .line 1557
    return-void

    .line 1544
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->suspend()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1551
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isOnPauseProcess:Z

    throw v0
.end method

.method public notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 3
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    const/4 v2, 0x0

    .line 1492
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mUiServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 1495
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    .line 1497
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setWakeLock(Z)V

    .line 1498
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->backgroundPictCtl(Z)V

    .line 1512
    :goto_0
    return-void

    .line 1503
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->resume()V

    goto :goto_0
.end method

.method protected notifyPosition()V
    .locals 3

    .prologue
    .line 3292
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    if-eqz v2, :cond_0

    .line 3296
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getCurrentPosition()I

    move-result v1

    .line 3301
    .local v1, "intmsec":I
    div-int/lit16 v0, v1, 0x3e8

    .line 3303
    .local v0, "intintsec":I
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPosition:I

    if-ne v2, v0, :cond_1

    .line 3324
    .end local v0    # "intintsec":I
    .end local v1    # "intmsec":I
    :cond_0
    :goto_0
    return-void

    .line 3316
    .restart local v0    # "intintsec":I
    .restart local v1    # "intmsec":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->handlerPosition(I)V

    goto :goto_0
.end method

.method public play()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 332
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->play()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    throw v0

    .line 339
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    throw v0
.end method

.method protected prepare()V
    .locals 8

    .prologue
    const/16 v7, 0x63

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3118
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mVideoHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionHolder:Landroid/view/SurfaceHolder;

    if-nez v3, :cond_1

    .line 3122
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3210
    :catch_0
    move-exception v0

    .line 3211
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3213
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3129
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 3138
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setCaptionDisplay(Landroid/view/SurfaceHolder;)V

    .line 3147
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->prepare()V

    .line 3152
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioSapMode:I

    if-eq v3, v7, :cond_2

    .line 3158
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioSapMode:I

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setSapMode(I)V

    .line 3163
    const/16 v3, 0x63

    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioSapMode:I

    .line 3166
    :cond_2
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionMode:I

    if-ne v3, v7, :cond_3

    .line 3167
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v2

    .line 3169
    .local v2, "prpreference":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getCaptionDisplay()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionFlag:Z

    .line 3172
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionFlag:Z

    if-eqz v3, :cond_3

    .line 3173
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getCaptionLanguage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3175
    .local v1, "language":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionMode:I

    .line 3176
    packed-switch v1, :pswitch_data_0

    .line 3191
    .end local v1    # "language":I
    .end local v2    # "prpreference":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    iget-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionFlag:Z

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDispCaption(Z)V

    .line 3196
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionFlag:Z

    if-eqz v3, :cond_4

    .line 3201
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionMode:I

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setCaptionLang(I)V

    .line 3207
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionFlag:Z

    .line 3208
    const/16 v3, 0x63

    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionMode:I

    .line 3219
    return-void

    .restart local v2    # "prpreference":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    :cond_5
    move v3, v5

    .line 3169
    goto :goto_0

    .line 3178
    .restart local v1    # "language":I
    :pswitch_1
    const/4 v3, 0x1

    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionMode:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetFcMp4Content()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 715
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->drmRmpiOutCtrlInfo:[B

    .line 718
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->backgroundPictCtl(Z)V

    .line 720
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setWakeLock(Z)V

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->resetFcMp4Content()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    throw v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->resume()V

    .line 642
    return-void
.end method

.method public seek(I)I
    .locals 5
    .param p1, "aMsec"    # I

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 511
    .local v1, "intresult":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->seek(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    throw v0
.end method

.method setAudioMuteByDevice()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1711
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 1713
    .local v0, "audioFlg":I
    if-nez v0, :cond_1

    .line 1714
    const/4 v1, 0x0

    .line 1715
    .local v1, "setParam":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFwServiceContextSv:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1716
    const/4 v1, 0x1

    .line 1722
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setAudioOutDev(I)V

    .line 1729
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioState:I

    .line 1747
    .end local v1    # "setParam":I
    :goto_0
    return-void

    .line 1733
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->canAudioDeviceMute()Z

    move-result v2

    if-ne v3, v2, :cond_2

    .line 1738
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setAudioMute(I)V

    .line 1743
    :cond_2
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAudioState:I

    goto :goto_0
.end method

.method protected setAudioMuteOff()V
    .locals 3

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getAudioMute()I

    move-result v0

    .line 1834
    .local v0, "intmute":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 1839
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setAudioMute(I)V

    .line 1844
    :cond_0
    return-void
.end method

.method public setAudioSapMode(I)V
    .locals 4
    .param p1, "aMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 865
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->setAudioSapMode(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 879
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    throw v0

    .line 872
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 873
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    throw v0
.end method

.method public setCaption(I)V
    .locals 4
    .param p1, "aMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 827
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->setCaption(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 841
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    throw v0

    .line 834
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 835
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    throw v0
.end method

.method public setCaptionDisplay(Landroid/view/SurfaceHolder;Z)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aChangeFlg"    # Z

    .prologue
    .line 1384
    if-eqz p2, :cond_1

    .line 1385
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isPlayState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setCaptionDisplay(Landroid/view/SurfaceHolder;)V

    .line 1416
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCaptionHolder:Landroid/view/SurfaceHolder;

    .line 1421
    return-void

    .line 1396
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;

    .prologue
    const/4 v1, 0x1

    .line 1301
    if-nez p1, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcEventMulticaster:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;->removeListener(I)V

    .line 1310
    :goto_0
    return-void

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcEventMulticaster:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

    invoke-virtual {v0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;->addListener(ILcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;)V

    goto :goto_0
.end method

.method public setFcMp4Content(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p4, "aScheduleEnable"    # Z
    .param p5, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 679
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->setFcMp4Content(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/ServiceFcPlayerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 700
    return-void

    .line 684
    :catch_0
    move-exception v6

    .line 685
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/ServiceFcPlayerException;
    const-string v0, "%s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    throw v6

    .line 687
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/ServiceFcPlayerException;
    :catch_1
    move-exception v6

    .line 688
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v0, "%s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    throw v6

    .line 690
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v6

    .line 691
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v0, "%s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    throw v6

    .line 693
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v6

    .line 694
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v0, "%s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v7

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    throw v6
.end method

.method protected setFcMp4Event()V
    .locals 0

    .prologue
    .line 1948
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setSeekCompleteEvent()V

    .line 1957
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setCompleteEvent()V

    .line 1966
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setDimChangeEvent()V

    .line 1975
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setErrorEvent()V

    .line 1984
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setStateChangeEvent()V

    .line 1993
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setPositionEvent()V

    .line 2001
    return-void
.end method

.method public setResumePlaying(Z)V
    .locals 4
    .param p1, "aResumeFlag"    # Z

    .prologue
    .line 759
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->setResumePlaying(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    throw v0
.end method

.method public setRoundPlaying(Z)V
    .locals 4
    .param p1, "aMode"    # Z

    .prologue
    .line 792
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->setRoundPlaying(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    throw v0
.end method

.method public setVideoDisplay(Landroid/view/SurfaceHolder;Z)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aChangeFlg"    # Z

    .prologue
    .line 1328
    if-eqz p2, :cond_1

    .line 1329
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->isPlayState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1360
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mVideoHolder:Landroid/view/SurfaceHolder;

    .line 1365
    return-void

    .line 1340
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFcHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setVideoView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;)V
    .locals 2
    .param p1, "aView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;

    .prologue
    const/4 v1, 0x2

    .line 1437
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcEventMulticaster:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;->removeListener(I)V

    .line 1438
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcEventMulticaster:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;

    invoke-virtual {v0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventMulticasterSv;->addListener(ILcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;)V

    .line 1443
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aMode"    # I

    .prologue
    .line 1009
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->setWakeMode(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    return-void

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    throw v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 545
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->start()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    throw v0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->backgroundPictCtl(Z)V

    .line 364
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setWakeLock(Z)V

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->stop()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    throw v0

    .line 377
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 378
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    throw v0
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->suspend()V

    .line 615
    return-void
.end method

.method public trickplay(II)I
    .locals 5
    .param p1, "aKind"    # I
    .param p2, "aExtra"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 421
    const/4 v1, 0x0

    .line 425
    .local v1, "intresult":I
    packed-switch p1, :pswitch_data_0

    .line 469
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    throw v0

    .line 432
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->pause()I

    move-result v1

    .line 486
    :goto_0
    return v1

    .line 440
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->fastForward(I)I

    move-result v1

    .line 441
    goto :goto_0

    .line 448
    :pswitch_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->rewind(I)I

    move-result v1

    .line 449
    goto :goto_0

    .line 456
    :pswitch_3
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->chapterForward()I

    move-result v1

    .line 457
    goto :goto_0

    .line 464
    :pswitch_4
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->stateObject()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->chapterRewind()I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 465
    goto :goto_0

    .line 477
    :catch_1
    move-exception v0

    .line 478
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    throw v0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
