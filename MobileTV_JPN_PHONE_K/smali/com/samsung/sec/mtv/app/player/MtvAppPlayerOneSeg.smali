.class public Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
.super Ljava/lang/Object;
.source "MtvAppPlayerOneSeg.java"

# interfaces
.implements Landroid/broadcast/IMtvOneSegServiceListener;
.implements Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;,
        Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    }
.end annotation


# static fields
.field private static final CHNL_FAILURE_DELAY:I = 0x1388

.field private static final CHNL_RETRY_CANCEL:I = 0x11

.field private static final CHNL_RETRY_CNT:I = 0x5

.field private static final CHNL_RETRY_DELAY:I = 0x1388

.field private static final DEL_TV_FILE:I = 0x10

.field private static final REC_CANCEL:I = 0x2

.field private static final REC_CONTINUED:I = 0x4

.field private static final REC_START:I = 0x1

.field private static final REC_STOP:I = 0x3

.field private static final SEEK_PAUSE_DONE:I = 0x1

.field private static final SEEK_RESUME_DONE:I = 0x100

.field private static final SEEK_SEEK_DONE:I = 0x10

.field private static final SEEK_SEEK_PROGRESS:I = 0x1000

.field private static final SEEK_STARTED:I = 0x0

.field private static final SIGNAL_LOW_CNT:I = 0x3

.field private static final SIGNAL_UPDATE_FREQ:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "MtvAppPlayerOneSeg"

.field private static final TVLINK_AFFIL_DEL:I = 0x5

.field private static final TVLINK_BROADCAST_AREA_DEL:I = 0x6

.field public static final TVLINK_DEL:I = 0x3

.field private static final TVLINK_DEL_ALL:I = 0x4

.field private static final TVLINK_START:I = 0x1

.field private static final TVLINK_STOP:I = 0x2

.field private static final WAIT_BEFORE_NOSIGANL:I = 0x2710

.field private static mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private static mLowSigCnt:I

.field private static mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

.field private static mOpStatus:Z

.field private static volatile mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

.field private static mPlayer:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

.field private static mRetryCnt:I

.field private static mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;


# instance fields
.field private mPlayerHdlr:Landroid/os/Handler;

.field private final mPlayerHdlrCB:Landroid/os/Handler$Callback;

.field private final mRetryChnlSearch:Ljava/lang/Runnable;

.field private final mRunnableLowSignal:Ljava/lang/Runnable;

.field private final mRunnablePostOpenFailure:Ljava/lang/Runnable;

.field private final mRunnableUpdateSignal:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayer:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    .line 66
    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 67
    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    .line 69
    sput v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    .line 71
    sput v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mLowSigCnt:I

    .line 122
    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .line 124
    sput-boolean v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOpStatus:Z

    .line 126
    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v3, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    .line 1043
    new-instance v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlrCB:Landroid/os/Handler$Callback;

    .line 2711
    new-instance v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$2;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$2;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryChnlSearch:Ljava/lang/Runnable;

    .line 2723
    new-instance v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$3;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$3;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableLowSignal:Ljava/lang/Runnable;

    .line 2748
    new-instance v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$4;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$4;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnablePostOpenFailure:Ljava/lang/Runnable;

    .line 2775
    new-instance v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$5;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$5;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableUpdateSignal:Ljava/lang/Runnable;

    .line 134
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "Constructor Called"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtvAppPlayerOneSeg"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "Starting the thread"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-direct {v1, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;)V

    sput-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .line 142
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlrCB:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    .line 144
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "Successfully Instantiated Constrcutor"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextParams(IIIIZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleSignalUpdate(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleOpenFailure(Z)V

    return-void
.end method

.method static synthetic access$1400()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .prologue
    .line 55
    sput-object p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleClose(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->resetApp()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleRetryChnlSearch(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handlePendingCommand(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleBuffering(III)V

    return-void
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mLowSigCnt:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleLowSignal(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IILcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p4, "x4"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleLocalPlayback(IILcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIILjava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 55
    sput-object p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getPendingOpStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOpStatus(Z)V

    return-void
.end method

.method static synthetic access$900()Landroid/broadcast/oneseg/MtvOneSegService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    return-object v0
.end method

.method static synthetic access$902(Landroid/broadcast/oneseg/MtvOneSegService;)Landroid/broadcast/oneseg/MtvOneSegService;
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 55
    sput-object p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    return-object p0
.end method

.method private flushPlayerThreadMsg()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2935
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2937
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Flushing all the messages from  Signal Thread"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2940
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2941
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Flushing all the messages from PlayerOneSeg ThreadQ "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2946
    :goto_0
    return-void

    .line 2944
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Thread Handler. No point of flushing the messages from PlayerOneSeg ThreadQ!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayer:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    if-nez v0, :cond_0

    .line 153
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "PlayerOneSeg Instance is null, Instantiating the constructor"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayer:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    .line 156
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayer:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    return-object v0
.end method

.method private getPendingOpStatus()Z
    .locals 1

    .prologue
    .line 2810
    sget-boolean v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOpStatus:Z

    return v0
.end method

.method private handleBuffering(III)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "bufStatus"    # I
    .param p3, "progPercent"    # I

    .prologue
    .line 2372
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 2373
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering Status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    packed-switch p2, :pswitch_data_0

    .line 2394
    :goto_0
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 2398
    :goto_1
    return-void

    .line 2377
    :pswitch_0
    const/16 p2, 0x6006

    .line 2379
    goto :goto_0

    .line 2382
    :pswitch_1
    const/16 p2, 0x6007

    .line 2384
    goto :goto_0

    .line 2387
    :pswitch_2
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Got Buffering End from OneSegService "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    const/16 p2, 0x6008

    .line 2390
    goto :goto_0

    .line 2396
    :cond_0
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "App is still running - Dnt Crash Yet?!?!?!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2375
    nop

    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleClose(Z)Z
    .locals 7
    .param p1, "bReset"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2676
    const/4 v6, 0x0

    .line 2678
    .local v6, "bClose":Z
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    if-eqz v0, :cond_2

    .line 2679
    if-ne p1, v5, :cond_0

    .line 2680
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleLowSignal(Z)V

    .line 2681
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleSignalUpdate(Z)V

    .line 2682
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleRetryChnlSearch(Z)V

    .line 2684
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v0, :cond_0

    .line 2685
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-virtual {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->close()Z

    move-result v6

    .line 2689
    :cond_0
    if-nez v6, :cond_1

    .line 2690
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Successfully closed the playback session "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$3002(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Z)Z

    .line 2692
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->reset()V

    .line 2694
    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    const/16 v2, 0x500e

    const/16 v3, 0x6005

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    .line 2696
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handlePendingCommand(I)Z

    .line 2702
    const/4 v6, 0x1

    .line 2708
    :cond_1
    :goto_0
    return v6

    .line 2705
    :cond_2
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Parameters mCurContext ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] mPendingParam ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Cannot close the session!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleLocalPlayback(IILcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;I)Z
    .locals 12
    .param p1, "curCommand"    # I
    .param p2, "status"    # I
    .param p3, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p4, "extraInfo"    # I

    .prologue
    .line 2500
    const/4 v11, 0x0

    .line 2501
    .local v11, "bLocalPB":Z
    const/16 v1, 0x5000

    .line 2502
    .local v1, "newCommand":I
    const/16 v3, 0x6004

    .line 2503
    .local v3, "curStatus":I
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    .line 2505
    .local v2, "curOperation":I
    packed-switch v2, :pswitch_data_0

    .line 2528
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Command ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in handling commands in local playback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    .end local v1    # "newCommand":I
    .end local v3    # "curStatus":I
    :goto_0
    return v11

    .line 2508
    .restart local v1    # "newCommand":I
    .restart local v3    # "curStatus":I
    :pswitch_0
    const/16 v0, 0xc9

    if-ne p2, v0, :cond_0

    .line 2509
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success in ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 2511
    const/16 v3, 0x6005

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    .line 2517
    .end local v1    # "newCommand":I
    .end local v3    # "curStatus":I
    :goto_1
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handlePendingCommand(I)Z

    goto :goto_0

    .line 2513
    .restart local v1    # "newCommand":I
    .restart local v3    # "curStatus":I
    :cond_0
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure in ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    const/4 v5, 0x1

    move-object v0, p0

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextParams(IIIIZ)V

    goto :goto_1

    .line 2523
    :pswitch_1
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v7

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v8

    move-object v4, p0

    move v5, v2

    move v6, p2

    move v9, p1

    move/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleSeek(IIIIII)Z

    goto :goto_0

    .line 2505
    :pswitch_data_0
    .packed-switch 0x5009
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleLowSignal(Z)V
    .locals 4
    .param p1, "bLowSignal"    # Z

    .prologue
    const-wide/16 v2, 0x2710

    .line 2437
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2438
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableUpdateSignal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2441
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableUpdateSignal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2442
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableLowSignal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2449
    :goto_0
    return-void

    .line 2444
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableLowSignal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2447
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Player Handler -- Error in handleSignalUpdate()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z
    .locals 12
    .param p1, "command"    # I
    .param p2, "cmdStatus"    # I
    .param p3, "extraInfo"    # I
    .param p4, "newContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p5, "newURI"    # Landroid/broadcast/helper/MtvURI;
    .param p6, "appContext"    # Landroid/content/Context;

    .prologue
    .line 2227
    const/4 v8, 0x0

    .local v8, "bNewCmd":Z
    const/4 v1, 0x0

    .line 2229
    .local v1, "bCallClose":Z
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_2

    .line 2230
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v2, 0x5000

    if-ne v0, v2, :cond_7

    .line 2232
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2233
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already one session [URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [chnl Num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is going on, Got a request for session change:: Posting CLOSE_CMD to end the current session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_0
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting the pending operation as cmd ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    move-result v8

    .line 2239
    const/4 v0, 0x1

    if-ne v8, v0, :cond_6

    .line 2241
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v11

    .line 2242
    .local v11, "pendingUriPBType":I
    :goto_0
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v0, v2, :cond_4

    const/4 v0, 0x2

    if-ne v11, v0, :cond_4

    const/4 v10, 0x1

    .line 2243
    .local v10, "isPlayerOpenIssued":Z
    :goto_1
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v0, v2, :cond_1

    if-eqz v10, :cond_5

    .line 2244
    :cond_1
    const/16 v0, 0x5000

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handlePendingCommand(I)Z

    .end local v10    # "isPlayerOpenIssued":Z
    .end local v11    # "pendingUriPBType":I
    :cond_2
    :goto_2
    move v9, v8

    .line 2333
    .end local v8    # "bNewCmd":Z
    .local v9, "bNewCmd":Z
    :goto_3
    return v9

    .line 2241
    .end local v9    # "bNewCmd":Z
    .restart local v8    # "bNewCmd":Z
    :cond_3
    const/4 v11, -0x1

    goto :goto_0

    .line 2242
    .restart local v11    # "pendingUriPBType":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 2246
    .restart local v10    # "isPlayerOpenIssued":Z
    :cond_5
    const/16 v0, 0x500e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v8

    .line 2248
    if-nez v8, :cond_2

    .line 2249
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Reverting the pending parameters!"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const/16 v2, 0x5000

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    goto :goto_2

    .line 2254
    .end local v10    # "isPlayerOpenIssued":Z
    .end local v11    # "pendingUriPBType":I
    :cond_6
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Reverting the pending parameters"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    const/16 v2, 0x5000

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    goto :goto_2

    .line 2258
    :cond_7
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v2, 0x5005

    if-ne v0, v2, :cond_a

    .line 2260
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Current operation is Scan ! Need to cancel Scan before proceeding with any session !"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    const/16 v0, 0x5006

    if-ne p1, v0, :cond_8

    .line 2263
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "dispatching cancel Scan immediately and ignoring further updates!"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const/16 v0, 0x5006

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v8

    goto :goto_2

    .line 2266
    :cond_8
    const/16 v0, 0x500f

    if-ne p1, v0, :cond_9

    .line 2268
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Command to close Mobile TV, so cancelling scan first"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const/16 v0, 0x5006

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v8

    .line 2270
    const/16 v2, 0x500f

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_2

    .line 2274
    :cond_9
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "issued while scan is going on.. Not Processing it !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2278
    :cond_a
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v2, 0x5010

    if-ne v0, v2, :cond_b

    .line 2279
    const/4 v1, 0x0

    .line 2280
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    move-result v8

    .line 2282
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry is going on settting operation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 2285
    const/16 v0, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v8

    .line 2287
    if-nez v8, :cond_2

    .line 2288
    const/4 v1, 0x0

    .line 2289
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "CHNL_RETRY going on, Failed in stopping that -- No way the other commands get serviced!!!"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Reverting the pending parameters"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const/16 v2, 0x5000

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_2

    .line 2296
    :cond_b
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2297
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Session is in the middle. CurCmd["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] URI ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ChnlNum ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] [fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    :cond_c
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot issue CLOSE immediately.. Setting Pending CMD ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with appropriate parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    const/16 v0, 0x5006

    if-eq p1, v0, :cond_d

    .line 2302
    const/4 v1, 0x1

    .line 2304
    :cond_d
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v2, 0x500e

    if-ne v0, v2, :cond_e

    .line 2306
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need not issue close as current command itself is close... Setting Pending CMD ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with appropriate parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    const/4 v1, 0x0

    .line 2309
    :cond_e
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2312
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_f

    .line 2314
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v2, 0x5002

    if-ne v0, v2, :cond_10

    .line 2316
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Already Recorder Open is going on , No need to close the session , Can Continue Opening Player also ! "

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    const/4 v1, 0x0

    .line 2330
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    move-result v8

    goto/16 :goto_2

    .line 2319
    :cond_10
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v2, 0x5007

    if-ne v0, v2, :cond_f

    .line 2321
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Already Recorder Record is going on , No need to close the session , Can Continue Opening Player also !"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    const/4 v1, 0x0

    .line 2323
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    move-result v8

    .line 2324
    const/16 v0, 0x5007

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handlePendingCommand(I)Z

    move v9, v8

    .line 2325
    .end local v8    # "bNewCmd":Z
    .restart local v9    # "bNewCmd":Z
    goto/16 :goto_3
.end method

.method private handleOpenFailure(Z)V
    .locals 4
    .param p1, "handle"    # Z

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2408
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOpenFailure handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnablePostOpenFailure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2412
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnablePostOpenFailure:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2420
    :goto_0
    return-void

    .line 2415
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnablePostOpenFailure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2418
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Player Handler -- Error in handleOpenFailure()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePendingCommand(I)Z
    .locals 6
    .param p1, "curCmd"    # I

    .prologue
    const/4 v5, 0x1

    .line 2452
    const/4 v0, 0x0

    .line 2453
    .local v0, "bPendingCmd":Z
    const/4 v1, -0x1

    .line 2455
    .local v1, "iCurSetCmd":I
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_6

    .line 2456
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 2457
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePendingCommand ::  iCurSetCmd  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " curCmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPendingParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 2459
    if-ne v1, p1, :cond_4

    .line 2460
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$3000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2461
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending CMD ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] will be serviced now"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOpStatus(Z)V

    .line 2464
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eq v2, v3, :cond_0

    .line 2465
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Context Differs -- Setting the NewContext and henceforth all the CBs will be triggered to the new context "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2467
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryChnlSearch:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2468
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V

    .line 2469
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->setCurrentContext(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 2471
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v3

    sget-object v4, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$3100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    .line 2473
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$3102(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I

    .line 2487
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2496
    :cond_2
    :goto_1
    return v0

    .line 2476
    :cond_3
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Closing the current on-going session"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v2, :cond_1

    .line 2480
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    const/16 v3, 0x500e

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 2481
    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleClose(Z)Z

    goto :goto_0

    .line 2485
    :cond_4
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The CB/NewCmd ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is different from the current operation ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] going on -- Doing Nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2489
    :cond_5
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    if-nez v2, :cond_2

    .line 2490
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "PendingCmd Queue is NULL --- Get Ready to take ADB Dump!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2494
    :cond_6
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "mContext is NULL - Take ForceDump Please!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleRetryChnlSearch(Z)V
    .locals 6
    .param p1, "bRetry"    # Z

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x5002

    const/4 v4, 0x0

    .line 2337
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2338
    if-ne p1, v5, :cond_2

    .line 2339
    sget v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    .line 2341
    sget v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2342
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry Cnt ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "].. Max times searched, Got Fedup - Leave it Yaar - Why do you want to play TV when there is no Siganl!!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryChnlSearch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2344
    sput v4, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    .line 2345
    const/16 v1, 0x5000

    const/16 v3, 0x6004

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextParams(IIIIZ)V

    .line 2369
    :goto_0
    return-void

    .line 2347
    :cond_0
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lets check health stats before Running again : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2350
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryChnlSearch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2351
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    invoke-direct {p0, v2, v4, v4, v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 2355
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry Cnt ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "].. Retrying for Channel:: Sleeping for 5sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryChnlSearch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2357
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    const/16 v1, 0x5010

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 2358
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryChnlSearch:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2362
    :cond_2
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Resetting RetryChnlSearch() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryChnlSearch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2364
    sput v4, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRetryCnt:I

    goto/16 :goto_0

    .line 2367
    :cond_3
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Player Handler -- Error in handleRetryChnlSearch()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSeek(IIIIII)Z
    .locals 9
    .param p1, "curCommand"    # I
    .param p2, "status"    # I
    .param p3, "trickMode"    # I
    .param p4, "curTimeStamp"    # I
    .param p5, "seekOpStatus"    # I
    .param p6, "extraInfo"    # I

    .prologue
    const/16 v1, 0xc9

    const/4 v8, 0x0

    const/16 v7, 0x5000

    const/16 v4, 0x1000

    const/4 v5, 0x1

    .line 2537
    const/4 v6, 0x0

    .line 2538
    .local v6, "bSeek":Z
    const/16 v3, 0x6004

    .line 2540
    .local v3, "curStatus":I
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_f

    .line 2541
    sparse-switch p5, :sswitch_data_0

    .line 2648
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid seek status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Failure in Seek(), Don\'t know which event to send!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    .line 2654
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .line 2656
    const/16 v0, 0x500b

    if-ne p1, v0, :cond_e

    .line 2657
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Failure in trickModePlay() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object v0, p0

    move v1, v7

    move v2, p1

    move v4, v8

    .line 2661
    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextParams(IIIIZ)V

    .line 2665
    :cond_2
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 2666
    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handlePendingCommand(I)Z

    .line 2672
    :cond_3
    :goto_2
    return v6

    .line 2543
    :sswitch_0
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    if-nez v0, :cond_4

    .line 2544
    new-instance v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;-><init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;)V

    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .line 2545
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    if-eqz v0, :cond_4

    .line 2546
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, p4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2547
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, p3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1602(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2548
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, v8}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2902(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;Z)Z

    .line 2552
    :cond_4
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v0, :cond_0

    .line 2553
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-virtual {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->pause()Z

    move-result v6

    goto :goto_0

    .line 2559
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 2560
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "SEEK - Pause Done"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V

    .line 2563
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    if-eqz v0, :cond_0

    .line 2564
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v0, :cond_0

    .line 2565
    const/16 v0, 0x500b

    if-ne p1, v0, :cond_6

    .line 2566
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEEK - Calling Trickmode with Mode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] newTimeStamp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v0

    if-nez v0, :cond_5

    .line 2568
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$3202(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2576
    :cond_5
    :goto_3
    if-nez v6, :cond_0

    .line 2577
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Resuming the play as there is failure in seek() operation"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2902(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;Z)Z

    .line 2580
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v0, :cond_0

    .line 2581
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-virtual {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->resume()Z

    move-result v6

    goto/16 :goto_0

    .line 2571
    :cond_6
    const/16 v0, 0x500c

    if-ne p1, v0, :cond_5

    .line 2572
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEEK - Calling Reposition with newTimeStamp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$1800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->repositionPlay(I)Z

    move-result v6

    goto :goto_3

    .line 2591
    :sswitch_2
    if-ne p2, v1, :cond_8

    .line 2592
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "SEEK - SEEK Done"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    if-eqz v0, :cond_7

    .line 2595
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, p6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    .line 2602
    :cond_7
    :goto_4
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v0, :cond_0

    .line 2603
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-virtual {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->resume()Z

    move-result v6

    goto/16 :goto_0

    .line 2598
    :cond_8
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] session. resuming the playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2902(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;Z)Z

    goto :goto_4

    .line 2610
    :sswitch_3
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "SEEK - got onTrickModeEnd() Callback -- Post the Event now"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$3202(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    goto/16 :goto_0

    .line 2615
    :sswitch_4
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$3200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v0

    if-eq v0, v4, :cond_b

    .line 2616
    if-ne p2, v1, :cond_a

    .line 2617
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "SEEK - Resume Done"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    const/4 v6, 0x1

    .line 2627
    :goto_5
    const/16 v0, 0x500c

    if-eq p1, v0, :cond_9

    const/16 v0, 0x500b

    if-ne p1, v0, :cond_d

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$3200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 2629
    :cond_9
    if-ne v6, v5, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    if-eqz v0, :cond_0

    .line 2630
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2900(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2631
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for the playback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    const/16 v3, 0x6005

    .line 2637
    :goto_6
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 2638
    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v4

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V

    .line 2639
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    goto/16 :goto_0

    .line 2620
    :cond_a
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2902(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;Z)Z

    .line 2621
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v0, v8}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$2802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I

    goto :goto_5

    .line 2624
    :cond_b
    const/4 v6, 0x1

    goto :goto_5

    .line 2634
    :cond_c
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for the playback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    const/16 v3, 0x6004

    goto :goto_6

    .line 2642
    :cond_d
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Command = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] SeekStatus = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mSeekParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->access$3200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. May be still under processing !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2658
    :cond_e
    const/16 v0, 0x500c

    if-ne p1, v0, :cond_1

    .line 2659
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Failure in repositionPlay() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2669
    :cond_f
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Context. Cannot handle trickModePlay()/repositionPlay() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2541
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x10 -> :sswitch_2
        0x100 -> :sswitch_4
        0x1000 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleSignalUpdate(Z)V
    .locals 4
    .param p1, "bUpdate"    # Z

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2424
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableUpdateSignal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2426
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableUpdateSignal:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2434
    :goto_0
    return-void

    .line 2428
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mLowSigCnt:I

    .line 2429
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mRunnableUpdateSignal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2432
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Player Handler -- Error in handleSignalUpdate()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetApp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2818
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v0, :cond_0

    .line 2819
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-virtual {v0, p0}, Landroid/broadcast/oneseg/MtvOneSegService;->unregisterListener(Landroid/broadcast/IMtvOneSegServiceListener;)V

    .line 2820
    sput-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    .line 2823
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleRetryChnlSearch(Z)V

    .line 2824
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleSignalUpdate(Z)V

    .line 2825
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleLowSignal(Z)V

    .line 2826
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOpStatus(Z)V

    .line 2830
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->reset()V

    .line 2831
    sput-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2833
    sput-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayer:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    .line 2834
    iput-object v2, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    .line 2836
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Reset all the data"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    return-void
.end method

.method private sendPlayerThreadMsg(IIILjava/lang/Object;)Z
    .locals 3
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extraInfo"    # I
    .param p4, "objInfo"    # Ljava/lang/Object;

    .prologue
    .line 2896
    const/4 v0, 0x0

    .line 2910
    .local v0, "bSendMsg":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 2911
    const/16 v1, 0xd7

    if-eq p2, v1, :cond_0

    const/16 v1, 0x5007

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5006

    if-ne p1, v1, :cond_1

    .line 2912
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 2927
    :goto_0
    return v0

    .line 2913
    :cond_1
    const/16 v1, 0x500f

    if-ne p1, v1, :cond_2

    .line 2918
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleRetryChnlSearch(Z)V

    .line 2919
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->flushPlayerThreadMsg()V

    .line 2920
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 2922
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPlayerHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 2925
    :cond_3
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "Invalid Thread Handler. Failure in posting messages to thread"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setContextParams(IIIIZ)V
    .locals 1
    .param p1, "newOperation"    # I
    .param p2, "command"    # I
    .param p3, "status"    # I
    .param p4, "extraInfo"    # I
    .param p5, "enqueue"    # Z

    .prologue
    .line 2873
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 2874
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 2876
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(IIIZ)V

    .line 2878
    :cond_0
    return-void
.end method

.method private setContextState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;IIIZ)V
    .locals 1
    .param p1, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "command"    # I
    .param p3, "status"    # I
    .param p4, "extraInfo"    # I
    .param p5, "enqueue"    # Z

    .prologue
    .line 2885
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 2886
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V

    .line 2888
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(IIIZ)V

    .line 2890
    :cond_0
    return-void
.end method

.method private setPendingOpStatus(Z)V
    .locals 0
    .param p1, "opStatus"    # Z

    .prologue
    .line 2806
    sput-boolean p1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOpStatus:Z

    .line 2807
    return-void
.end method

.method private setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z
    .locals 3
    .param p1, "cmdServiced"    # Z
    .param p2, "command"    # I
    .param p3, "status"    # I
    .param p4, "extraInfo"    # I
    .param p5, "newContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p6, "appContext"    # Landroid/content/Context;
    .param p7, "newURI"    # Landroid/broadcast/helper/MtvURI;

    .prologue
    .line 2844
    const/4 v0, 0x0

    .line 2846
    .local v0, "bSetParam":Z
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    if-eqz v1, :cond_1

    .line 2847
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v1

    const/16 v2, 0x500f

    if-ne v1, v2, :cond_0

    .line 2848
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "DELETE is already set as Pending command -- Cannot entertain any more pending commands"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    const/4 v0, 0x0

    .line 2865
    :goto_0
    return v0

    .line 2851
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    monitor-enter v2

    .line 2852
    :try_start_0
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1, p1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$3002(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Z)Z

    .line 2853
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1, p2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$202(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I

    .line 2854
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1, p3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$402(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I

    .line 2855
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1, p4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$3102(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I

    .line 2856
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1, p5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$602(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2857
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1, p6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$102(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Landroid/content/Context;)Landroid/content/Context;

    .line 2858
    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v1, p7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1102(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Landroid/broadcast/helper/MtvURI;)Landroid/broadcast/helper/MtvURI;

    .line 2859
    const/4 v0, 0x1

    .line 2860
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2863
    :cond_1
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "Invalid Handler:: Cannot Store parameters for next session -- Cannot continue operation"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/16 v6, 0x5007

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "bRecord":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 474
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 476
    .local v1, "curCmd":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered cancelRecord()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 479
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 480
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 482
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_1

    :cond_0
    if-ne v1, v6, :cond_1

    .line 483
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v6, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 491
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting cancelRecord()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return v0

    .line 485
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording is not going on curState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curCmd ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] -- Cannot Cancel Recording"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatch in context curContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] newContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Cannot Cancel Recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelScanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 10
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 644
    const/4 v7, 0x0

    .line 645
    .local v7, "bCancelScan":Z
    sget-object v9, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 646
    .local v9, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v8, 0x5000

    .line 648
    .local v8, "curCmd":I
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Entered cancelScanChannels()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v9

    .line 652
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v8

    .line 654
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v9, v0, :cond_0

    const/16 v0, 0x5005

    if-ne v8, v0, :cond_0

    .line 655
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already one session is going on curState ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], curCmd ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] -- Checking whether the new command [CANCEL SCAN] can be serviced or not"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/16 v1, 0x5006

    move-object v0, p0

    move v3, v2

    move-object v4, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z

    move-result v7

    .line 664
    :goto_0
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Exiting cancelScanChannels()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return v7

    .line 658
    :cond_0
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid State ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] curCommand ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Failure in cancelScanChannels() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatch in context curContext ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newContext ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Failure in cancelScanChannels()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public captFrame(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/16 v6, 0x5008

    const/4 v5, 0x0

    .line 540
    const/4 v0, 0x0

    .line 541
    .local v0, "bCapture":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 542
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 544
    .local v1, "curCmd":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered captFrame()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 548
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 550
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_1

    const/16 v3, 0x5000

    if-ne v1, v3, :cond_1

    .line 551
    const/4 v3, 0x0

    invoke-direct {p0, v6, v5, v5, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 553
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x6001

    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 563
    :cond_0
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting captFrame()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return v0

    .line 557
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State curState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curCmd ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] -- Cannot Capture Frame"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatch in context curContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] newContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Cannot Capture Frame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z
    .locals 10
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "appContext"    # Landroid/content/Context;
    .param p3, "mode"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x5001

    const/4 v1, 0x0

    .line 179
    const/4 v8, 0x0

    .line 180
    .local v8, "bCreate":Z
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Entered create()"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_7

    .line 183
    if-eqz p1, :cond_6

    .line 184
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v0, v2, :cond_5

    .line 185
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    if-eqz v0, :cond_4

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p1

    move-object v6, p2

    .line 186
    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    .line 189
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getAudioControl()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegAudioControl;)V

    .line 192
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Enabling Audio Comp"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getVideoControl()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegVideoControl;)V

    .line 198
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Enabling Video Comp"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getBMLViewControl()Landroid/broadcast/IMtvOneSegBmlViewControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegBmlViewControl;)V

    .line 207
    :cond_2
    invoke-direct {p0, v9, p3, v1, v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v8

    .line 209
    if-eqz v8, :cond_3

    .line 210
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    const/16 v2, 0x6001

    invoke-virtual {v0, v9, v2, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 226
    :cond_3
    :goto_0
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Exiting create()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return v8

    .line 213
    :cond_4
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Cannot Set Params required to start CREATE Operation.. Failure in Create() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_5
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid State ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Cannot create playback session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_6
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Context. Cannot create playback session"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_7
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "******Valid Context Before Create!!!. Cannot create playback session******"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V
    .locals 12
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x5000

    const/16 v1, 0x500f

    const/4 v2, 0x0

    .line 977
    const/4 v9, 0x0

    .line 978
    .local v9, "bDelete":Z
    sget-object v11, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 979
    .local v11, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v10, 0x5000

    .line 980
    .local v10, "curCommand":I
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v3, "Entered delete()"

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    if-eqz p1, :cond_5

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 983
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v11

    .line 984
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v10

    .line 985
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v11, v0, :cond_2

    if-ne v10, v7, :cond_2

    .line 987
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v3, "No Sessions Going on... Invoking Delete !"

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-direct {p0, v1, v2, v2, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v9

    .line 990
    if-eqz v9, :cond_0

    .line 991
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    const/16 v3, 0x6001

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 1016
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    .line 1017
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid State in Delete():: Trying to exit gracefully after that its your fate !!"

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const/16 v6, 0x6005

    const/4 v8, 0x1

    move-object v3, p0

    move v4, v7

    move v5, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setContextParams(IIIIZ)V

    .line 1020
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Exiting delete()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    return-void

    .line 996
    :cond_2
    if-eq v10, v7, :cond_3

    .line 998
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v3, "Current Session is in the middle. Cannot issue Close Immediately ! "

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_3
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I

    move-result v0

    if-eq v0, v1, :cond_4

    move-object v0, p0

    move v3, v2

    move-object v4, p1

    move-object v6, v5

    .line 1001
    invoke-direct/range {v0 .. v6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z

    move-result v9

    goto :goto_0

    .line 1004
    :cond_4
    const/4 v9, 0x1

    .line 1005
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v3, "Since one Delete is already set as pending command ignoring further  Delelte commands"

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_5
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch in context curContext ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newContext ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Cannot delete playback session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteAllAffililiationAreas(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 6
    .param p1, "pContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 3008
    const/4 v0, 0x0

    .line 3009
    .local v0, "bAffilTVLink":Z
    const/16 v1, 0x5000

    .line 3012
    .local v1, "curCommand":I
    if-eqz p1, :cond_1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3013
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 3014
    const/16 v2, 0x5000

    if-ne v1, v2, :cond_0

    .line 3015
    const/16 v2, 0x500d

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 3022
    :cond_0
    :goto_0
    return v0

    .line 3019
    :cond_1
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cannot post message to playeroneseg thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteAllTvLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 6
    .param p1, "pContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 2990
    const/4 v0, 0x0

    .line 2991
    .local v0, "bDeleteTVLink":Z
    const/16 v1, 0x5000

    .line 2994
    .local v1, "curCommand":I
    if-eqz p1, :cond_1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2995
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 2996
    const/16 v2, 0x5000

    if-ne v1, v2, :cond_0

    .line 2997
    const/16 v2, 0x500d

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 3004
    :cond_0
    :goto_0
    return v0

    .line 3001
    :cond_1
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cannot post message to playeroneseg thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteBroadCasterArea(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;II)Z
    .locals 6
    .param p1, "pContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "in_affiliationID"    # I
    .param p3, "in_originalNetworkID"    # I

    .prologue
    const/4 v4, -0x1

    .line 3026
    const/4 v1, 0x0

    .line 3028
    .local v1, "bDelBroadcastArea":Z
    const/16 v2, 0x5000

    .line 3032
    .local v2, "curCommand":I
    if-eqz p1, :cond_1

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p3, v4, :cond_1

    .line 3033
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    .line 3034
    const/16 v3, 0x5000

    if-ne v2, v3, :cond_0

    .line 3035
    new-instance v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;

    invoke-direct {v0}, Landroid/broadcast/helper/types/MtvOneSegTVLink;-><init>()V

    .line 3036
    .local v0, "TvlinkUri":Landroid/broadcast/helper/types/MtvOneSegTVLink;
    iput p3, v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    .line 3037
    const/16 v3, 0x500d

    const/4 v4, 0x6

    invoke-direct {p0, v3, v4, p2, v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v1

    .line 3044
    .end local v0    # "TvlinkUri":Landroid/broadcast/helper/types/MtvOneSegTVLink;
    :cond_0
    :goto_0
    return v1

    .line 3041
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cannot post message to playeroneseg thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteTVFile(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z
    .locals 4
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "fileIndex"    # I

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 582
    .local v0, "bDeleteFile":Z
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "Entered deleteTVFile()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 590
    :goto_0
    const-string v1, "MtvAppPlayerOneSeg"

    const-string v2, "Exiting deleteTVFile()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return v0

    .line 587
    :cond_0
    const-string v1, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Input Parameters pbContext ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mCurrentContext ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteTvLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z
    .locals 5
    .param p1, "pContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "index"    # I

    .prologue
    .line 2972
    const/4 v0, 0x0

    .line 2973
    .local v0, "bDeleteTVLink":Z
    const/16 v1, 0x5000

    .line 2976
    .local v1, "curCommand":I
    if-eqz p1, :cond_1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 2977
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 2978
    const/16 v2, 0x5000

    if-ne v1, v2, :cond_0

    .line 2979
    const/16 v2, 0x500d

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 2986
    :cond_0
    :goto_0
    return v0

    .line 2983
    :cond_1
    const-string v2, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Invalid Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPlaybackTime(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)J
    .locals 4
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 1025
    const-wide/16 v0, -0x1

    .line 1026
    .local v0, "playBackTime":J
    if-eqz p1, :cond_0

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v2, v3, :cond_0

    .line 1030
    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getPlayBackTime()J

    move-result-wide v0

    .line 1034
    :cond_0
    return-wide v0
.end method

.method public onServiceNotify(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I
    .param p4, "objectInfo"    # Ljava/lang/Object;

    .prologue
    .line 2959
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v1, 0x500f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x76

    if-eq p1, v0, :cond_0

    .line 2961
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE started Ignoring Callback from backend, command ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    :goto_0
    return-void

    .line 2964
    :cond_0
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Callback from backend, command ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], status ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z
    .locals 13
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "openURI"    # Landroid/broadcast/helper/MtvURI;

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x5002

    const/4 v1, 0x0

    .line 359
    const/4 v9, 0x0

    .line 360
    .local v9, "bOpen":Z
    sget-object v11, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 361
    .local v11, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v10, 0x5000

    .line 363
    .local v10, "curCommand":I
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Entered open()"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_5

    .line 366
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v11

    .line 367
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v10

    .line 369
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v0

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getBMLViewControl()Landroid/broadcast/IMtvOneSegBmlViewControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegBmlViewControl;)V

    .line 373
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v11, v0, :cond_3

    const/16 v0, 0x5000

    if-ne v10, v0, :cond_3

    .line 375
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    if-eqz v0, :cond_2

    .line 376
    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/content/Context;

    move-result-object v6

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    .line 377
    invoke-direct {p0, v12, v1, v1, v8}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v9

    .line 379
    if-eqz v9, :cond_1

    .line 380
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    const/16 v2, 0x6001

    invoke-virtual {v0, v12, v2, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 405
    :cond_1
    :goto_0
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Exiting open()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return v9

    .line 383
    :cond_2
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Cannot Set params required to start OPEN Operation -- Failure in open() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_3
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already one session is going on curState ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] curCmd ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] -- Checking whether the new command [OPEN] [newChnl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  [new fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] can be serviced or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/content/Context;

    move-result-object v8

    move-object v2, p0

    move v3, v12

    move v4, v1

    move v5, v1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z

    move-result v9

    goto :goto_0

    .line 393
    :cond_4
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already one session is going on curState ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] curCmd ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] -- Checking whether the new command [OPEN] [newChnl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  [new fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] can be serviced or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move v3, v12

    move v4, v1

    move v5, v1

    move-object v6, p1

    move-object v7, p2

    .line 394
    invoke-direct/range {v2 .. v8}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z

    move-result v9

    goto/16 :goto_0

    .line 398
    :cond_5
    if-nez p1, :cond_6

    .line 399
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Context - null. Cannot start playback session"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_6
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid openURI - null. Cannot start playback session"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z
    .locals 12
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "openURI"    # Landroid/broadcast/helper/MtvURI;
    .param p3, "appContext"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x5002

    const/4 v1, 0x0

    .line 272
    const/4 v9, 0x0

    .line 273
    .local v9, "bOpen":Z
    sget-object v11, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 274
    .local v11, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v10, 0x5000

    .line 275
    .local v10, "curCommand":I
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v2, "Entered open()"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_5

    .line 280
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v11

    .line 281
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v10

    .line 282
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v11, v0, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v11, v0, :cond_3

    :cond_0
    const/16 v0, 0x5000

    if-ne v10, v0, :cond_3

    .line 285
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mPendingParam:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    if-eqz v0, :cond_2

    .line 286
    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->setPendingOperation(ZIIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;Landroid/broadcast/helper/MtvURI;)Z

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, v8, v1, v1, v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v9

    .line 289
    if-eqz v9, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    const/16 v2, 0x6001

    invoke-virtual {v0, v8, v2, v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 314
    :cond_1
    :goto_0
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Exiting open()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v9

    .line 293
    :cond_2
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Cannot Set params required to start OPEN Operation -- Failure in open() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_3
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid State ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]. Cannot open playback session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_4
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already one session is going on curState ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] curCmd ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] -- Checking whether the new command [OPEN] [newChnl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  [new fileIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] can be serviced or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move v3, v8

    move v4, v1

    move v5, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 302
    invoke-direct/range {v2 .. v8}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z

    move-result v9

    goto :goto_0

    .line 305
    :cond_5
    if-nez p1, :cond_6

    .line 306
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Context - null. Cannot start playback session"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :cond_6
    if-nez p2, :cond_7

    .line 308
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid openURI - null. Cannot start playback session"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :cond_7
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid bmlCB - null. Cannot start playback session"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public pause(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/16 v6, 0x5009

    const/4 v5, 0x0

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "bPause":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 681
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 683
    .local v1, "curCommand":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered pause()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 686
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 687
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 689
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_1

    const/16 v3, 0x5000

    if-ne v1, v3, :cond_1

    .line 690
    const/4 v3, 0x0

    invoke-direct {p0, v6, v5, v5, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 692
    if-eqz v0, :cond_0

    .line 693
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x6001

    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 702
    :cond_0
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exiting pause() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return v0

    .line 696
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curCommand ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in pause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Parameters pbContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in pause() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reposition(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z
    .locals 8
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "rePosition"    # I

    .prologue
    const/16 v7, 0x500c

    const/4 v6, 0x0

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "bReposition":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 796
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 798
    .local v1, "curCommand":I
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entered reposition() rePositionTimeStamp ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 800
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 801
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 803
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_1

    const/16 v3, 0x5000

    if-ne v1, v3, :cond_1

    .line 804
    const/4 v3, 0x0

    invoke-direct {p0, v7, p2, v6, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 806
    if-eqz v0, :cond_0

    .line 807
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x6001

    invoke-virtual {v3, v7, v4, v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 816
    :cond_0
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting reposition()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return v0

    .line 810
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] currentCommand ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in reposition() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Parameters pbContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in reposition() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/16 v6, 0x500a

    const/4 v5, 0x0

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "bResume":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 719
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 721
    .local v1, "curCommand":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered resume()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 725
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 727
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_1

    const/16 v3, 0x5000

    if-ne v1, v3, :cond_1

    .line 728
    const/4 v3, 0x0

    invoke-direct {p0, v6, v5, v5, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 730
    if-eqz v0, :cond_0

    .line 731
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x6001

    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 740
    :cond_0
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting resume()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return v0

    .line 734
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curCommand ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in resume()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Parameters pbContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in pause() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public scanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 10
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/16 v1, 0x5005

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 605
    const/4 v7, 0x0

    .line 606
    .local v7, "bScanChnls":Z
    sget-object v9, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 607
    .local v9, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v8, 0x5000

    .line 609
    .local v8, "curCmd":I
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v3, "Entered scanChannels()"

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    if-eqz p1, :cond_2

    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v9

    .line 613
    sget-object v0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v8

    .line 615
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v9, v0, :cond_1

    const/16 v0, 0x5000

    if-ne v8, v0, :cond_1

    move-object v0, p0

    move v3, v2

    move-object v4, p1

    move-object v6, v5

    .line 616
    invoke-direct/range {v0 .. v6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z

    move-result v7

    .line 618
    if-eqz v7, :cond_0

    .line 619
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    const/16 v3, 0x6001

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 629
    :cond_0
    :goto_0
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Exiting scanChannels()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return v7

    .line 622
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already one session is going on curState ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], curCmd ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -- Checking whether the new command [SCAN] can be serviced or not"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v3, v2

    move-object v4, p1

    move-object v6, v5

    .line 623
    invoke-direct/range {v0 .. v6}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->handleNewCommand(IIILcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z

    goto :goto_0

    .line 626
    :cond_2
    const-string v0, "MtvAppPlayerOneSeg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Change in Context {curContext = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] newContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] }. Cannot issue SCAN, Failure in scanChannels()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public screwupCleanup()V
    .locals 6

    .prologue
    .line 906
    const/4 v0, 0x0

    .line 908
    .local v0, "bCleanUp":Z
    const/4 v2, 0x0

    .line 909
    .local v2, "iCount":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered screwupCleanup()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_2

    .line 921
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    if-eqz v3, :cond_0

    .line 922
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mOneSegServ:Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-virtual {v3}, Landroid/broadcast/oneseg/MtvOneSegService;->screwupCleanup()Z

    move-result v0

    .line 925
    :cond_0
    if-nez v0, :cond_3

    .line 926
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->resetApp()V

    .line 948
    :cond_1
    :goto_0
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_2

    .line 950
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "screwupCleanup : Context still not null"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->resetApp()V

    .line 956
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting screwupCleanup().. Hope DTV will be able to recover now!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void

    .line 929
    :cond_3
    const/4 v2, 0x0

    .line 939
    :cond_4
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 946
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v3, :cond_4

    goto :goto_0

    .line 940
    :catch_0
    move-exception v1

    .line 942
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Sleeping failure in screwupCleanup"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Ljava/lang/String;IZ)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "recURI"    # Ljava/lang/String;
    .param p3, "availMemSize"    # I
    .param p4, "isContinuation"    # Z

    .prologue
    const/16 v6, 0x5007

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "bRecord":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 425
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 427
    .local v1, "curCmd":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered startRecord()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 430
    if-eqz p1, :cond_4

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 432
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 434
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_3

    :cond_0
    const/16 v3, 0x5000

    if-ne v1, v3, :cond_3

    .line 435
    if-eqz p4, :cond_2

    .line 436
    const/4 v3, 0x4

    invoke-direct {p0, v6, v3, p3, p2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 440
    :goto_0
    if-eqz v0, :cond_1

    .line 441
    if-nez p4, :cond_1

    .line 444
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x6001

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 457
    :cond_1
    :goto_1
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting startRecord()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return v0

    .line 438
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v6, v3, p3, p2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 448
    :cond_3
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already one session is going on curState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curCmd ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] -- Cannot Start Recording"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :cond_4
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatch in context curContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] newContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Cannot Start Recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 454
    :cond_5
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Input parameters pbContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] recURI ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] availMemSize ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Cannot Start Recording"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public startTVLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/types/MtvOneSegTVLink;Landroid/content/Context;)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "tvlinkURI"    # Landroid/broadcast/helper/types/MtvOneSegTVLink;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x500d

    const/4 v5, 0x0

    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, "bStartTVLink":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 833
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 835
    .local v1, "curCommand":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered startTVLink()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    if-eqz p1, :cond_3

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 839
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 840
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 842
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 843
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v3

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getBMLViewControl()Landroid/broadcast/IMtvOneSegBmlViewControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->setControlInterface(Landroid/broadcast/IMtvOneSegBmlViewControl;)V

    .line 846
    :cond_0
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_2

    const/16 v3, 0x5000

    if-ne v1, v3, :cond_2

    .line 847
    const/4 v3, 0x1

    invoke-direct {p0, v6, v3, v5, p2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 849
    if-eqz v0, :cond_1

    .line 850
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x6001

    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 859
    :cond_1
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting startTVLink()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return v0

    .line 853
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] currentCommand ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in startTVLink() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_3
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Parameters pbContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] tvLinkURI = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in startTVLink() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/16 v6, 0x5007

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "bRecord":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 508
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 510
    .local v1, "curCmd":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered stopRecord()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 513
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 514
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 516
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->RECORDER_OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_1

    :cond_0
    if-ne v1, v6, :cond_1

    .line 517
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v6, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 525
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting stopRecord()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return v0

    .line 519
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording is not going on curState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curCmd ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] -- Cannot Stop Recording"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatch in context curContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] newContext ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Cannot Stop Recording "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopTVLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    const/16 v6, 0x500d

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "bStopTVLink":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 875
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 877
    .local v1, "curCommand":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered stopTVLink()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    if-eqz p1, :cond_1

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 880
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 881
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 883
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_0

    if-ne v1, v6, :cond_0

    .line 884
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v6, v3, v4, v5}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 892
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting stopTVLink()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return v0

    .line 886
    :cond_0
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] currentCommand ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in stopTVLink() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :cond_1
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Parameters pbContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in stopTVLink() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trickmode(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;III)Z
    .locals 7
    .param p1, "pbContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "trickMode"    # I
    .param p3, "trickSpeed"    # I
    .param p4, "currTimeStamp"    # I

    .prologue
    const/16 v6, 0x500b

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "bTrickMode":Z
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 759
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 761
    .local v1, "curCommand":I
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Entered trickmode()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    if-eqz p1, :cond_3

    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 763
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 764
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 766
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_2

    const/16 v3, 0x5000

    if-eq v1, v3, :cond_0

    if-ne v1, v6, :cond_2

    .line 767
    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v6, p2, p3, v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->sendPlayerThreadMsg(IIILjava/lang/Object;)Z

    move-result v0

    .line 769
    if-eqz v0, :cond_1

    .line 770
    sget-object v3, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x6001

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v4, v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 779
    :cond_1
    :goto_0
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Exiting trickmode()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return v0

    .line 773
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] currentCommand ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in trickmode() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_3
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Parameters pbContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curContext = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->mCurContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Failure in trickmode() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
