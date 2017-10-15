.class public Landroid/broadcast/oneseg/MtvOneSegService;
.super Ljava/lang/Object;
.source "MtvOneSegService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/broadcast/oneseg/MtvOneSegService$IncomingHandler;,
        Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;,
        Landroid/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType;,
        Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    }
.end annotation


# static fields
.field private static final ALL_MDL_DONE:I = 0x111

.field private static final BML_DONE:I = 0x100

.field private static final DEL_TV_FILE:I = 0x20

.field private static final INIT_ALL:I = 0x0

.field private static final INIT_ONLY_SDTV:I = 0x1

.field private static final MDL_NONE:I = 0x0

.field public static MTV_SERVICE_NO_SIGNAL:I = 0x0

.field private static final MW_DONE:I = 0x1

.field private static final PLAYER_DONE:I = 0x10

.field private static final SCAN_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtvOneSegService"

.field private static isJNILoaded:Z

.field private static mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

.field private static mCurrContext:Landroid/content/Context;

.field public static mCurrentInitMode:I

.field private static mIsBound:Z

.field private static mLocalPlay:Z

.field private static mOneSegService:Landroid/broadcast/oneseg/MtvOneSegService;

.field private static mOneSegSvcClose:I

.field private static mOneSegSvcHdlr:Landroid/os/Handler;

.field private static mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

.field private static mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field private static mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

.field private static mPendingDelete:Z

.field static mRemoteOneSegService:Landroid/os/Messenger;

.field private static mScanChnlIndex:I


# instance fields
.field private bOnlySDTVCreated:Z

.field private bSDTVInitDone:Z

.field private captionString:Landroid/text/SpannableStringBuilder;

.field private currentBuffer:[B

.field private dataGrpLinkNo:B

.field private dataGrpSize:I

.field private dataUnitLoopHdrIndex:I

.field private dataUnitLoopLength:I

.field private drcsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private isCaptureCommandInProgress:Z

.field private lastDataGrpLinkNo:B

.field private mCaptionClearTimer:Ljava/lang/Runnable;

.field private mCaptionclearflag:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field final mMessenger:Landroid/os/Messenger;

.field private mOneSegCaptureFrameTimeOutRunnable:Ljava/lang/Runnable;

.field private final mOneSegSvcHdlrCB:Landroid/os/Handler$Callback;

.field private mRunnableFakeClose:Ljava/lang/Runnable;

.field private prevColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    const/4 v0, -0x2

    sput v0, Landroid/broadcast/oneseg/MtvOneSegService;->MTV_SERVICE_NO_SIGNAL:I

    .line 79
    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegService:Landroid/broadcast/oneseg/MtvOneSegService;

    .line 81
    sput-boolean v2, Landroid/broadcast/oneseg/MtvOneSegService;->isJNILoaded:Z

    .line 83
    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    .line 85
    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    .line 87
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 89
    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    .line 91
    sput-boolean v2, Landroid/broadcast/oneseg/MtvOneSegService;->mPendingDelete:Z

    .line 97
    sput v2, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrentInitMode:I

    .line 130
    sput v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    .line 132
    const/16 v0, 0xd

    sput v0, Landroid/broadcast/oneseg/MtvOneSegService;->mScanChnlIndex:I

    .line 134
    sput-boolean v2, Landroid/broadcast/oneseg/MtvOneSegService;->mLocalPlay:Z

    .line 139
    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrContext:Landroid/content/Context;

    .line 141
    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    .line 143
    sput-boolean v2, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    .line 185
    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bSDTVInitDone:Z

    .line 105
    iput-boolean v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bOnlySDTVCreated:Z

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mCaptionclearflag:Z

    .line 136
    iput-boolean v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->isCaptureCommandInProgress:Z

    .line 145
    iput-object v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->drcsMap:Ljava/util/Map;

    .line 150
    const/4 v1, -0x1

    iput v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    .line 197
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Landroid/broadcast/oneseg/MtvOneSegService$IncomingHandler;

    invoke-direct {v2}, Landroid/broadcast/oneseg/MtvOneSegService$IncomingHandler;-><init>()V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mMessenger:Landroid/os/Messenger;

    .line 199
    new-instance v1, Landroid/broadcast/oneseg/MtvOneSegService$1;

    invoke-direct {v1, p0}, Landroid/broadcast/oneseg/MtvOneSegService$1;-><init>(Landroid/broadcast/oneseg/MtvOneSegService;)V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mConnection:Landroid/content/ServiceConnection;

    .line 1217
    new-instance v1, Landroid/broadcast/oneseg/MtvOneSegService$2;

    invoke-direct {v1, p0}, Landroid/broadcast/oneseg/MtvOneSegService$2;-><init>(Landroid/broadcast/oneseg/MtvOneSegService;)V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlrCB:Landroid/os/Handler$Callback;

    .line 2647
    new-instance v1, Landroid/broadcast/oneseg/MtvOneSegService$3;

    invoke-direct {v1, p0}, Landroid/broadcast/oneseg/MtvOneSegService$3;-><init>(Landroid/broadcast/oneseg/MtvOneSegService;)V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mRunnableFakeClose:Ljava/lang/Runnable;

    .line 2678
    new-instance v1, Landroid/broadcast/oneseg/MtvOneSegService$4;

    invoke-direct {v1, p0}, Landroid/broadcast/oneseg/MtvOneSegService$4;-><init>(Landroid/broadcast/oneseg/MtvOneSegService;)V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegCaptureFrameTimeOutRunnable:Ljava/lang/Runnable;

    .line 3100
    new-instance v1, Landroid/broadcast/oneseg/MtvOneSegService$5;

    invoke-direct {v1, p0}, Landroid/broadcast/oneseg/MtvOneSegService$5;-><init>(Landroid/broadcast/oneseg/MtvOneSegService;)V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mCaptionClearTimer:Ljava/lang/Runnable;

    .line 417
    const-string v1, "MtvOneSegService"

    const-string v2, "Constructor Called"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->loadJNI()V

    .line 420
    new-instance v1, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-direct {v1, v3}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;-><init>(Landroid/broadcast/oneseg/MtvOneSegService$1;)V

    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    .line 422
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OneSegService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 424
    const-string v1, "MtvOneSegService"

    const-string v2, "Starting the thread"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlrCB:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    .line 427
    const-string v1, "MtvOneSegService"

    const-string v2, "Successfully Instantiated Constrcutor"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 74
    sput-boolean p0, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    return p0
.end method

.method static synthetic access$100(Landroid/broadcast/oneseg/MtvOneSegService;IIIIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Landroid/broadcast/oneseg/MtvOneSegService;->setOpStatus(IIIIZ)V

    return-void
.end method

.method static synthetic access$1000(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->handleOpen()V

    return-void
.end method

.method static synthetic access$1100(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->closeService()V

    return-void
.end method

.method static synthetic access$1200(Landroid/broadcast/oneseg/MtvOneSegService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegCaptureFrameTimeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/broadcast/oneseg/MtvOneSegService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->isCaptureCommandInProgress:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/broadcast/oneseg/MtvOneSegService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->isCaptureCommandInProgress:Z

    return p1
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 74
    sget v0, Landroid/broadcast/oneseg/MtvOneSegService;->mScanChnlIndex:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 74
    sput p0, Landroid/broadcast/oneseg/MtvOneSegService;->mScanChnlIndex:I

    return p0
.end method

.method static synthetic access$1508()I
    .locals 2

    .prologue
    .line 74
    sget v0, Landroid/broadcast/oneseg/MtvOneSegService;->mScanChnlIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/broadcast/oneseg/MtvOneSegService;->mScanChnlIndex:I

    return v0
.end method

.method static synthetic access$1600(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->resetScan()V

    return-void
.end method

.method static synthetic access$1700(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteService()V

    return-void
.end method

.method static synthetic access$1800(Landroid/broadcast/oneseg/MtvOneSegService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/broadcast/oneseg/MtvOneSegService;->handleClose(I)V

    return-void
.end method

.method static synthetic access$1900()Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/broadcast/oneseg/MtvOneSegService;)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->resetService()V

    return-void
.end method

.method static synthetic access$2100(Landroid/broadcast/oneseg/MtvOneSegService;II)V
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/broadcast/oneseg/MtvOneSegService;->handleBuffering(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/broadcast/oneseg/MtvOneSegService;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/broadcast/oneseg/MtvOneSegService;->createService(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/broadcast/oneseg/MtvOneSegService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bSDTVInitDone:Z

    return v0
.end method

.method static synthetic access$602(Landroid/broadcast/oneseg/MtvOneSegService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/broadcast/oneseg/MtvOneSegService;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bSDTVInitDone:Z

    return p1
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 74
    sget v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 74
    sput p0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    return p0
.end method

.method static synthetic access$776(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 74
    sget v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    or-int/2addr v0, p0

    sput v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    return v0
.end method

.method static synthetic access$800()Landroid/broadcast/bml/MtvOneSegBmlEngineControl;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 74
    sput-boolean p0, Landroid/broadcast/oneseg/MtvOneSegService;->mLocalPlay:Z

    return p0
.end method

.method private closeService()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2420
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered closeService() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    iget-boolean v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bOnlySDTVCreated:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2426
    const-string v2, "MtvOneSegService"

    const-string v3, "Only SDTV was created..so fake closing player and BML"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    sget v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    or-int/lit16 v2, v2, 0x100

    sput v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    .line 2428
    sget v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    or-int/lit8 v2, v2, 0x10

    sput v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    .line 2429
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bOnlySDTVCreated :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    :goto_0
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_3

    .line 2455
    const-string v2, "MtvOneSegService"

    const-string v3, "Sending message to remote service to close SDTV..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    const/16 v2, 0x75

    invoke-static {v5, v2, v6, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2459
    .local v1, "mesg":Landroid/os/Message;
    :try_start_0
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2465
    :goto_1
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    iget-object v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mRunnableFakeClose:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2476
    .end local v1    # "mesg":Landroid/os/Message;
    :goto_2
    sput-boolean v6, Landroid/broadcast/oneseg/MtvOneSegService;->mLocalPlay:Z

    .line 2477
    iput-boolean v6, p0, Landroid/broadcast/oneseg/MtvOneSegService;->isCaptureCommandInProgress:Z

    .line 2478
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting closeService() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    return-void

    .line 2432
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2433
    const-string v2, "MtvOneSegService"

    const-string v3, "Calling SDtvCompControlImpl.close()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->close()V

    .line 2437
    :cond_1
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    if-eqz v2, :cond_2

    .line 2438
    const-string v2, "MtvOneSegService"

    const-string v3, "Calling OneSegSVCBmlEngineControl.close()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    invoke-virtual {v2, v6}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->close(I)V

    goto :goto_0

    .line 2443
    :cond_2
    sget v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    or-int/lit16 v2, v2, 0x100

    sput v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    .line 2444
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBMLInst is NULL :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2460
    .restart local v1    # "mesg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2470
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "mesg":Landroid/os/Message;
    :cond_3
    const-string v2, "MtvOneSegService"

    const-string v3, "RemoteService is null ! Probably got Killed !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    sget v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    or-int/lit8 v2, v2, 0x11

    sput v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    .line 2472
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteService is NULL :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    sget v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    invoke-direct {p0, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->handleClose(I)V

    goto/16 :goto_2
.end method

.method private createService(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "InitMode"    # I

    .prologue
    .line 2334
    const/4 v0, 0x0

    .line 2336
    .local v0, "bCreate":Z
    const-string v1, "MtvOneSegService"

    const-string v2, "Entered createService() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    if-eqz p1, :cond_0

    .line 2340
    const-string v1, "MtvOneSegService"

    const-string v2, "Getting BML Instance from Engine Control..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    invoke-static {p1}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->getInstance(Landroid/content/Context;)Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    move-result-object v1

    sput-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    .line 2344
    :cond_0
    if-eqz p1, :cond_2

    .line 2346
    const-string v1, "MtvOneSegService"

    const-string v2, "Binding to Remote service..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0, p1}, Landroid/broadcast/oneseg/MtvOneSegService;->doBindService(Landroid/content/Context;)V

    .line 2348
    sput-object p1, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrContext:Landroid/content/Context;

    .line 2353
    :goto_0
    sget-boolean v1, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    if-eqz v1, :cond_1

    .line 2354
    const/4 v0, 0x1

    .line 2356
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bOnlySDTVCreated:Z

    .line 2358
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2359
    const-string v1, "MtvOneSegService"

    const-string v2, "Successfully Created Playback Service "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    :goto_1
    const-string v1, "MtvOneSegService"

    const-string v2, "Exiting createService() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    return v0

    .line 2351
    :cond_2
    const-string v1, "MtvOneSegService"

    const-string v2, "SDTVControl init cannot be done. Appcontext was sent as Null"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2361
    :cond_3
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteService()V

    goto :goto_1
.end method

.method private deleteService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2372
    const-string v0, "MtvOneSegService"

    const-string v1, "Entered deleteService() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    const-string v0, "MtvOneSegService"

    const-string v1, "Resetting global data "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    sput-boolean v3, Landroid/broadcast/oneseg/MtvOneSegService;->isJNILoaded:Z

    .line 2376
    iput-boolean v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bSDTVInitDone:Z

    .line 2377
    iput-boolean v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bOnlySDTVCreated:Z

    .line 2379
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    if-eqz v0, :cond_0

    .line 2380
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    invoke-virtual {v0}, Landroid/broadcast/bml/MtvOneSegBmlEngineControl;->destroy()V

    .line 2381
    sput-object v4, Landroid/broadcast/oneseg/MtvOneSegService;->mBMLInst:Landroid/broadcast/bml/MtvOneSegBmlEngineControl;

    .line 2382
    const-string v0, "MtvOneSegService"

    const-string v1, "Deleted OneSegSVCBMLEngineControl() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2386
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->delete()V

    .line 2387
    const-string v0, "MtvOneSegService"

    const-string v1, "Deleted SDtvCompControlImpl() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    :cond_1
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    .line 2391
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->doUnbindService(Landroid/content/Context;)V

    .line 2392
    sput-object v4, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    .line 2413
    :goto_0
    sput v3, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrentInitMode:I

    .line 2414
    const-string v0, "MtvOneSegService"

    const-string v1, "Successfully deleted Playback Service "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const-string v0, "MtvOneSegService"

    const-string v1, "Exiting deleteService() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    return-void

    .line 2398
    :cond_2
    const-string v0, "MtvOneSegService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtvOneSegRemoteService probably got killed ! mIsBound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const/16 v0, 0x76

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2400
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 2402
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2403
    const-string v0, "MtvOneSegService"

    const-string v1, "Called Unbind Just to Ensure we are not getting the connection back !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :goto_1
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    goto :goto_0

    .line 2407
    :cond_3
    const-string v0, "MtvOneSegService"

    const-string v1, "Current App Context is null ; Cannot unbind !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getDataGrpSize()V
    .locals 3

    .prologue
    .line 2874
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataGrpSize:I

    .line 2875
    return-void
.end method

.method private getLinkNo()V
    .locals 2

    .prologue
    .line 2868
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iput-byte v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataGrpLinkNo:B

    .line 2869
    iget-object v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    iput-byte v0, p0, Landroid/broadcast/oneseg/MtvOneSegService;->lastDataGrpLinkNo:B

    .line 2870
    return-void
.end method

.method public static getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    .locals 1

    .prologue
    .line 1193
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    return-object v0
.end method

.method private getPendingDelete()Z
    .locals 1

    .prologue
    .line 2547
    sget-boolean v0, Landroid/broadcast/oneseg/MtvOneSegService;->mPendingDelete:Z

    return v0
.end method

.method public static getPlayerStatus()Z
    .locals 3

    .prologue
    .line 2536
    const/4 v0, 0x0

    .line 2537
    .local v0, "bPlayerDone":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    if-eqz v1, :cond_0

    .line 2538
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v1}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$400(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 2539
    const/4 v0, 0x1

    .line 2543
    :cond_0
    return v0
.end method

.method protected static getService()Landroid/broadcast/oneseg/MtvOneSegService;
    .locals 2

    .prologue
    .line 435
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegService:Landroid/broadcast/oneseg/MtvOneSegService;

    if-nez v0, :cond_0

    .line 436
    const-string v0, "MtvOneSegService"

    const-string v1, "PlayerOneSeg Instance is null, Instantiating the constructor"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Landroid/broadcast/oneseg/MtvOneSegService;

    invoke-direct {v0}, Landroid/broadcast/oneseg/MtvOneSegService;-><init>()V

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegService:Landroid/broadcast/oneseg/MtvOneSegService;

    .line 439
    :cond_0
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegService:Landroid/broadcast/oneseg/MtvOneSegService;

    return-object v0
.end method

.method private getSignalInfo()Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2561
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v2

    .line 2563
    .local v2, "state":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v2, v3, :cond_1

    .line 2564
    :cond_0
    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 2566
    const/16 v3, 0x138

    invoke-static {v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2568
    .local v1, "mesg":Landroid/os/Message;
    :try_start_0
    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2577
    .end local v1    # "mesg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-object v4

    .line 2569
    .restart local v1    # "mesg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2571
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleBuffering(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "extraInfo"    # I

    .prologue
    const/4 v2, 0x0

    .line 2588
    packed-switch p1, :pswitch_data_0

    .line 2607
    :goto_0
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v0, v1, :cond_0

    .line 2608
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1, p2, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2615
    :goto_1
    return-void

    .line 2590
    :pswitch_0
    const/16 p1, 0xcc

    .line 2592
    goto :goto_0

    .line 2595
    :pswitch_1
    const/16 p1, 0xcd

    .line 2597
    goto :goto_0

    .line 2600
    :pswitch_2
    const/16 p1, 0xce

    .line 2602
    goto :goto_0

    .line 2609
    :cond_0
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v0, v1, :cond_2

    .line 2610
    :cond_1
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1, p2, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto :goto_1

    .line 2613
    :cond_2
    const-string v0, "MtvOneSegService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering CB ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in Invalid State... Ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2588
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleClose(I)V
    .locals 6
    .param p1, "mdlsClosed"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2693
    const-string v0, "MtvOneSegService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClose :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    const/16 v0, 0x111

    if-ne p1, v0, :cond_0

    .line 2696
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    iget-object v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mRunnableFakeClose:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2700
    sput v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcClose:I

    .line 2702
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$2400(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2703
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$2200(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    invoke-virtual {p0, v0, v2, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 2704
    invoke-direct/range {v0 .. v5}, Landroid/broadcast/oneseg/MtvOneSegService;->setOpStatus(IIIIZ)V

    .line 2719
    :cond_0
    :goto_0
    return-void

    .line 2706
    :cond_1
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2707
    const-string v0, "MtvOneSegService"

    const-string v2, "Successfully Closed Service "

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const/16 v0, 0x75

    const/16 v2, 0xc9

    invoke-virtual {p0, v0, v2, v1, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleOpen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xc9

    const/4 v1, 0x0

    .line 2582
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v0}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 2583
    const/16 v0, 0x66

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2584
    const/16 v0, 0x72

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2585
    return-void
.end method

.method private isCaptMgmtData()Z
    .locals 4

    .prologue
    .line 2858
    const/4 v1, 0x0

    .line 2859
    .local v1, "result":Z
    iget-object v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    ushr-int/lit8 v2, v2, 0x2

    int-to-byte v0, v2

    .line 2860
    .local v0, "groupId":B
    if-eqz v0, :cond_0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    .line 2861
    :cond_0
    const/4 v1, 0x1

    .line 2863
    :cond_1
    return v1
.end method

.method private isIdentifierField()Z
    .locals 3

    .prologue
    .line 2849
    const/4 v0, 0x0

    .line 2850
    .local v0, "result":Z
    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/16 v2, -0x10

    if-ne v1, v2, :cond_0

    .line 2851
    const/4 v0, 0x1

    .line 2853
    :cond_0
    return v0
.end method

.method public static isLocalPlay()Z
    .locals 1

    .prologue
    .line 2555
    sget-boolean v0, Landroid/broadcast/oneseg/MtvOneSegService;->mLocalPlay:Z

    return v0
.end method

.method private static loadJNI()V
    .locals 2

    .prologue
    .line 1202
    sget-boolean v0, Landroid/broadcast/oneseg/MtvOneSegService;->isJNILoaded:Z

    if-nez v0, :cond_0

    .line 1203
    const-string v0, "broadcastForOneSeg_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1205
    const/4 v0, 0x1

    sput-boolean v0, Landroid/broadcast/oneseg/MtvOneSegService;->isJNILoaded:Z

    .line 1209
    :goto_0
    return-void

    .line 1207
    :cond_0
    const-string v0, "MtvOneSegService"

    const-string v1, "JNI is already loaded, not loading again"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseCharData(II)V
    .locals 24
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 2901
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2902
    .local v15, "tempString":Landroid/text/SpannableStringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v8, v0, :cond_1e

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, p1

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 2904
    .local v18, "unsignedByte":I
    shl-int/lit8 v20, v18, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, p1, 0x1

    aget-byte v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v17, v20, v21

    .line 2906
    .local v17, "twoByte":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, p1

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 2907
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2902
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2910
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, p1

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 2911
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->mCaptionclearflag:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2912
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2913
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->clear()V

    goto :goto_1

    .line 2917
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, p1

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2918
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 2921
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, p1

    const/16 v21, -0x63

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, 0x1

    aget-byte v20, v20, v21

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, 0x2

    aget-byte v20, v20, v21

    and-int/lit8 v20, v20, 0x3e

    div-int/lit8 v16, v20, 0x2

    .line 2923
    .local v16, "timeout":I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/broadcast/oneseg/MtvOneSegService;->mCaptionclearflag:Z

    .line 2924
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->startCaptionClearTimer(I)V

    .line 2925
    add-int/lit8 p1, p1, 0x2

    .line 2926
    add-int/lit8 v8, v8, 0x2

    .line 2927
    goto/16 :goto_1

    .line 2929
    .end local v16    # "timeout":I
    :cond_4
    const/16 v20, 0x80

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    const/16 v20, 0x87

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    .line 2930
    const/4 v13, 0x0

    .line 2931
    .local v13, "tempColor":I
    const/16 v20, 0x80

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 2932
    const/high16 v13, -0x1000000

    .line 2948
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v13, :cond_6

    .line 2949
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 2950
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v22

    const/16 v23, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2952
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2955
    :cond_6
    move-object/from16 v0, p0

    iput v13, v0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    goto/16 :goto_1

    .line 2933
    :cond_7
    const/16 v20, 0x81

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2934
    const/high16 v13, -0x10000

    goto :goto_2

    .line 2935
    :cond_8
    const/16 v20, 0x82

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 2936
    const v13, -0xff0100

    goto :goto_2

    .line 2937
    :cond_9
    const/16 v20, 0x83

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 2938
    const/16 v13, -0x100

    goto :goto_2

    .line 2939
    :cond_a
    const/16 v20, 0x84

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 2940
    const v13, -0xffff01

    goto :goto_2

    .line 2941
    :cond_b
    const/16 v20, 0x85

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 2942
    const v13, -0xff01

    goto :goto_2

    .line 2943
    :cond_c
    const/16 v20, 0x86

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 2944
    const v13, -0xff0001

    goto/16 :goto_2

    .line 2945
    :cond_d
    const/16 v20, 0x87

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 2946
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 2960
    .end local v13    # "tempColor":I
    :cond_e
    const/16 v20, 0xa1

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_15

    const/16 v20, 0xfe

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_15

    .line 2961
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v9, v0, [B

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, p1

    aput-byte v21, v9, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, p1, 0x1

    aget-byte v21, v21, v22

    aput-byte v21, v9, v20

    .line 2963
    .local v9, "japaneseBytes":[B
    const/16 v20, 0xfa

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    const/16 v20, 0xfe

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_14

    .line 2964
    const/16 v20, 0x0

    aget-byte v20, v9, v20

    const/16 v21, -0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 2965
    const/16 v20, 0x0

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, -0xa

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    .line 2966
    const/16 v20, 0x1

    aget-byte v21, v9, v20

    move/from16 v0, v21

    add-int/lit16 v0, v0, -0xa1

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    .line 2981
    :cond_f
    :goto_3
    :try_start_0
    new-instance v12, Ljava/lang/String;

    const-string v20, "UTF-16"

    move-object/from16 v0, v20

    invoke-direct {v12, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2982
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2997
    .end local v12    # "str":Ljava/lang/String;
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 2998
    add-int/lit8 v8, v8, 0x1

    .line 2999
    goto/16 :goto_1

    .line 2967
    :cond_10
    const/16 v20, 0x0

    aget-byte v20, v9, v20

    const/16 v21, -0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 2968
    const/16 v20, 0x0

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, -0xb

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    .line 2969
    const/16 v20, 0x1

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, -0x43

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    goto :goto_3

    .line 2970
    :cond_11
    const/16 v20, 0x0

    aget-byte v20, v9, v20

    const/16 v21, -0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 2971
    const/16 v20, 0x0

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, -0xc

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    .line 2972
    const/16 v20, 0x1

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, 0x1b

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    goto :goto_3

    .line 2973
    :cond_12
    const/16 v20, 0x0

    aget-byte v20, v9, v20

    const/16 v21, -0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 2974
    const/16 v20, 0x0

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, -0xc

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    .line 2975
    const/16 v20, 0x1

    aget-byte v21, v9, v20

    move/from16 v0, v21

    add-int/lit16 v0, v0, -0x87

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    goto/16 :goto_3

    .line 2976
    :cond_13
    const/16 v20, 0x0

    aget-byte v20, v9, v20

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2977
    const/16 v20, 0x0

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, -0xd

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    .line 2978
    const/16 v20, 0x1

    aget-byte v21, v9, v20

    add-int/lit8 v21, v21, -0x29

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v9, v20

    goto/16 :goto_3

    .line 2983
    :catch_0
    move-exception v6

    .line 2984
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v20, "MtvOneSegService"

    const-string v21, "unsupportedEncodingException"

    invoke-static/range {v20 .. v21}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_4

    .line 2990
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_14
    :try_start_1
    new-instance v12, Ljava/lang/String;

    const-string v20, "EUC_JP"

    move-object/from16 v0, v20

    invoke-direct {v12, v9, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2991
    .restart local v12    # "str":Ljava/lang/String;
    invoke-virtual {v15, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 2992
    .end local v12    # "str":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 2993
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    const-string v20, "MtvOneSegService"

    const-string v21, "unsupportedEncodingException"

    invoke-static/range {v20 .. v21}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_4

    .line 3001
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "japaneseBytes":[B
    :cond_15
    const/16 v20, 0x4121

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_16

    const/16 v20, 0x4f7e

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_17

    :cond_16
    const/16 v20, 0x21

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    const/16 v20, 0x7e

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 3002
    :cond_17
    const/4 v5, 0x0

    .line 3003
    .local v5, "charCode":I
    const/16 v20, 0x4121

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_18

    const/16 v20, 0x4f7e

    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_18

    .line 3004
    move/from16 v5, v17

    .line 3005
    add-int/lit8 p1, p1, 0x1

    .line 3006
    add-int/lit8 v8, v8, 0x1

    .line 3010
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->drcsMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 3012
    .local v4, "captionBitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_19

    .line 3013
    const-string v20, "MtvOneSegService"

    const-string v21, "null bitmap returned from map"

    invoke-static/range {v20 .. v21}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3008
    .end local v4    # "captionBitmap":Landroid/graphics/Bitmap;
    :cond_18
    move/from16 v0, v18

    or-int/lit16 v5, v0, 0x4100

    goto :goto_5

    .line 3015
    .restart local v4    # "captionBitmap":Landroid/graphics/Bitmap;
    :cond_19
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3016
    .local v10, "mutableBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 3017
    const/16 v19, 0x0

    .local v19, "w":I
    :goto_6
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d

    .line 3018
    const/4 v7, 0x0

    .local v7, "h":I
    :goto_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_1c

    .line 3019
    move/from16 v0, v19

    invoke-virtual {v10, v0, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 3020
    move-object/from16 v0, p0

    iget v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v7, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 3022
    :cond_1a
    move/from16 v0, v19

    invoke-virtual {v10, v0, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    const/high16 v21, -0x1000000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 3023
    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v7, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 3018
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 3017
    :cond_1c
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 3028
    .end local v7    # "h":I
    :cond_1d
    const/16 v20, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->convertDpToPixel(I)I

    move-result v20

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int v11, v20, v21

    .line 3029
    .local v11, "scaleFactor":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    mul-int v20, v20, v11

    const/16 v21, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->convertDpToPixel(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3030
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v22

    const/16 v23, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3032
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3033
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3034
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 3035
    .local v14, "tempLength":I
    new-instance v20, Landroid/text/style/ImageSpan;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    add-int/lit8 v21, v14, -0x1

    const/16 v22, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v14, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3037
    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->clear()V

    goto/16 :goto_1

    .line 3042
    .end local v4    # "captionBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "charCode":I
    .end local v10    # "mutableBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "scaleFactor":I
    .end local v14    # "tempLength":I
    .end local v17    # "twoByte":I
    .end local v18    # "unsignedByte":I
    .end local v19    # "w":I
    :cond_1e
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v15}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v22

    const/16 v23, 0x21

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3044
    const-string v20, "MtvOneSegService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "data unit finished - pesString: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    return-void
.end method

.method private parseDRCSData(II)V
    .locals 26
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 3050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 v12, p1, 0x1

    .end local p1    # "index":I
    .local v12, "index":I
    aget-byte v23, v23, p1

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 3051
    .local v17, "numCodes":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 p1, v12, 0x1

    .end local v12    # "index":I
    .restart local p1    # "index":I
    aget-byte v23, v23, v12

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v24, v0

    add-int/lit8 v12, p1, 0x1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    aget-byte v24, v24, p1

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    or-int v4, v23, v24

    .line 3053
    .local v4, "charCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 p1, v12, 0x1

    .end local v12    # "index":I
    .restart local p1    # "index":I
    aget-byte v23, v23, v12

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 3054
    .local v16, "noOfFonts":I
    const/4 v13, 0x0

    .local v13, "j":I
    move/from16 v12, p1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    .line 3055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 p1, v12, 0x1

    .end local v12    # "index":I
    .restart local p1    # "index":I
    aget-byte v23, v23, v12

    and-int/lit8 v23, v23, 0xf

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 3056
    .local v15, "mode":B
    const-string v23, "MtvOneSegService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3057
    if-eqz v15, :cond_0

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_4

    .line 3058
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 v12, p1, 0x1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    aget-byte v8, v23, p1

    .line 3059
    .local v8, "depth":B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 p1, v12, 0x1

    .end local v12    # "index":I
    .restart local p1    # "index":I
    aget-byte v23, v23, v12

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 3060
    .local v22, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 v12, p1, 0x1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    aget-byte v23, v23, p1

    move/from16 v0, v23

    and-int/lit16 v10, v0, 0xff

    .line 3061
    .local v10, "height":I
    mul-int v23, v22, v10

    div-int/lit8 v19, v23, 0x8

    .line 3063
    .local v19, "patternLength":I
    mul-int/lit8 v23, v19, 0x8

    move/from16 v0, v23

    new-array v7, v0, [I

    .line 3064
    .local v7, "colors":[I
    const/4 v5, 0x0

    .line 3065
    .local v5, "colorIndex":I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    .line 3066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 p1, v12, 0x1

    .end local v12    # "index":I
    .restart local p1    # "index":I
    aget-byte v18, v23, v12

    .line 3067
    .local v18, "pattern":B
    const/4 v2, 0x7

    .local v2, "b":I
    move v6, v5

    .end local v5    # "colorIndex":I
    .local v6, "colorIndex":I
    :goto_3
    if-ltz v2, :cond_2

    .line 3069
    const/16 v23, 0x1

    shl-int v23, v23, v2

    and-int v23, v23, v18

    if-eqz v23, :cond_1

    .line 3070
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "colorIndex":I
    .restart local v5    # "colorIndex":I
    const/16 v23, -0x1

    aput v23, v7, v6

    .line 3067
    :goto_4
    add-int/lit8 v2, v2, -0x1

    move v6, v5

    .end local v5    # "colorIndex":I
    .restart local v6    # "colorIndex":I
    goto :goto_3

    .line 3072
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "colorIndex":I
    .restart local v5    # "colorIndex":I
    const/high16 v23, -0x1000000

    aput v23, v7, v6

    goto :goto_4

    .line 3065
    .end local v5    # "colorIndex":I
    .restart local v6    # "colorIndex":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    move v5, v6

    .end local v6    # "colorIndex":I
    .restart local v5    # "colorIndex":I
    move/from16 v12, p1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    goto :goto_2

    .line 3077
    .end local v2    # "b":I
    .end local v18    # "pattern":B
    :cond_3
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v7, v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3078
    .local v3, "bmp":Landroid/graphics/Bitmap;
    const-string v23, "MtvOneSegService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bitmap width: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bitmap height: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " depth:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->drcsMap:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 p1, v12

    .line 3054
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "colorIndex":I
    .end local v7    # "colors":[I
    .end local v8    # "depth":B
    .end local v10    # "height":I
    .end local v12    # "index":I
    .end local v14    # "k":I
    .end local v19    # "patternLength":I
    .end local v22    # "width":I
    .restart local p1    # "index":I
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, p1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    goto/16 :goto_1

    .line 3082
    .end local v12    # "index":I
    .restart local p1    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 v12, p1, 0x1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    aget-byte v20, v23, p1

    .line 3083
    .local v20, "regionX":B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 p1, v12, 0x1

    .end local v12    # "index":I
    .restart local p1    # "index":I
    aget-byte v21, v23, v12

    .line 3084
    .local v21, "regionY":B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v23, v0

    add-int/lit8 v12, p1, 0x1

    .end local p1    # "index":I
    .restart local v12    # "index":I
    aget-byte v23, v23, p1

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    move-object/from16 v24, v0

    add-int/lit8 p1, v12, 0x1

    .end local v12    # "index":I
    .restart local p1    # "index":I
    aget-byte v24, v24, v12

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    or-int v9, v23, v24

    .line 3085
    .local v9, "geoDataLength":I
    const-string v23, "MtvOneSegService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "geoDataLength: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " regionX:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " regionY:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    add-int p1, p1, v9

    goto :goto_5

    .line 3051
    .end local v9    # "geoDataLength":I
    .end local v15    # "mode":B
    .end local v20    # "regionX":B
    .end local v21    # "regionY":B
    .end local p1    # "index":I
    .restart local v12    # "index":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 3090
    .end local v4    # "charCode":I
    .end local v13    # "j":I
    .end local v16    # "noOfFonts":I
    :cond_6
    return-void
.end method

.method private parseDataUnits()Z
    .locals 6

    .prologue
    .line 2879
    iget v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopHdrIndex:I

    add-int/lit8 v0, v3, 0x3

    .line 2880
    .local v0, "dataUnitIndex":I
    :goto_0
    iget v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopLength:I

    if-lez v3, :cond_3

    .line 2881
    const-string v3, "MtvOneSegService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataUnitLoopLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    iget-object v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_0

    .line 2883
    const-string v3, "MtvOneSegService"

    const-string v4, "data unit separator is not proper, not parsing this caption pes data"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    const/4 v3, 0x0

    .line 2896
    :goto_1
    return v3

    .line 2886
    :cond_0
    iget-object v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v1, v3, v4

    .line 2887
    .local v1, "dataUnitParameter":B
    iget-object v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    add-int/lit8 v5, v0, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 2888
    .local v2, "dataUnitSize":I
    const/16 v3, 0x20

    if-ne v1, v3, :cond_2

    .line 2889
    add-int/lit8 v3, v0, 0x5

    invoke-direct {p0, v3, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->parseCharData(II)V

    .line 2893
    :cond_1
    :goto_2
    iget v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopLength:I

    add-int/lit8 v4, v2, 0x5

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopLength:I

    .line 2894
    add-int/lit8 v3, v2, 0x5

    add-int/2addr v0, v3

    .line 2895
    goto :goto_0

    .line 2890
    :cond_2
    const/16 v3, 0x30

    if-ne v1, v3, :cond_1

    .line 2891
    add-int/lit8 v3, v0, 0x5

    invoke-direct {p0, v3, v2}, Landroid/broadcast/oneseg/MtvOneSegService;->parseDRCSData(II)V

    goto :goto_2

    .line 2896
    .end local v1    # "dataUnitParameter":B
    .end local v2    # "dataUnitSize":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private resetScan()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2501
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 2503
    const/16 v2, 0x6c

    invoke-static {v4, v2, v3, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2505
    .local v1, "mesg":Landroid/os/Message;
    :try_start_0
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2514
    .end local v1    # "mesg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 2506
    .restart local v1    # "mesg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2482
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 2483
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/broadcast/oneseg/MtvOneSegService;->doUnbindService(Landroid/content/Context;)V

    .line 2484
    sput-object v6, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    .line 2487
    :cond_0
    sput v1, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrentInitMode:I

    .line 2488
    iput-boolean v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bOnlySDTVCreated:Z

    .line 2489
    iput-boolean v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bSDTVInitDone:Z

    .line 2490
    sput-boolean v1, Landroid/broadcast/oneseg/MtvOneSegService;->mLocalPlay:Z

    .line 2491
    sput-object v6, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    .line 2492
    sput-boolean v1, Landroid/broadcast/oneseg/MtvOneSegService;->isJNILoaded:Z

    .line 2493
    invoke-direct {p0, v1}, Landroid/broadcast/oneseg/MtvOneSegService;->setPendingDelete(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 2494
    invoke-direct/range {v0 .. v5}, Landroid/broadcast/oneseg/MtvOneSegService;->setOpStatus(IIIIZ)V

    .line 2495
    sput-object v6, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    .line 2496
    sput-object v6, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    .line 2497
    sput-object v6, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegService:Landroid/broadcast/oneseg/MtvOneSegService;

    .line 2498
    return-void
.end method

.method public static sendSVCThreadMessage(IIILjava/lang/Object;)Z
    .locals 3
    .param p0, "command"    # I
    .param p1, "status"    # I
    .param p2, "extraInfo"    # I
    .param p3, "objInfo"    # Ljava/lang/Object;

    .prologue
    .line 2309
    const/4 v0, 0x0

    .line 2311
    .local v0, "bSendMsg":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2312
    const/16 v1, 0x50e

    if-ne p1, v1, :cond_1

    .line 2313
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 2318
    :cond_0
    :goto_0
    return v0

    .line 2315
    :cond_1
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V
    .locals 6
    .param p0, "eNewState"    # Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .prologue
    const/4 v5, 0x0

    .line 1175
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldState - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newState - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    sput-object p0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 1177
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 1179
    const/16 v2, 0x13f

    sget-object v3, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v3}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v5, v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1181
    .local v1, "mesg":Landroid/os/Message;
    :try_start_0
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    .end local v1    # "mesg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1182
    .restart local v1    # "mesg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setOpStatus(IIIIZ)V
    .locals 3
    .param p1, "curCmd"    # I
    .param p2, "curCmdStatus"    # I
    .param p3, "curMdl"    # I
    .param p4, "newCmd"    # I
    .param p5, "setErr"    # Z

    .prologue
    .line 2517
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    if-eqz v0, :cond_1

    .line 2518
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p1}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$302(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I

    .line 2519
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p2}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$2202(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I

    .line 2521
    if-gtz p3, :cond_0

    .line 2522
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p3}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$402(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I

    .line 2527
    :goto_0
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p4}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$2302(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I

    .line 2528
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p5}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$2402(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;Z)Z

    .line 2529
    const-string v0, "MtvOneSegService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOpInfo.mNextCmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$2300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2533
    :goto_1
    return-void

    .line 2524
    :cond_0
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p3}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$476(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;I)I

    goto :goto_0

    .line 2531
    :cond_1
    const-string v0, "MtvOneSegService"

    const-string v1, "Failure in setOpStatus()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setPendingDelete(Z)V
    .locals 0
    .param p1, "setDel"    # Z

    .prologue
    .line 2551
    sput-boolean p1, Landroid/broadcast/oneseg/MtvOneSegService;->mPendingDelete:Z

    .line 2552
    return-void
.end method

.method private startCaptionClearTimer(I)V
    .locals 4
    .param p1, "uiWaitTime"    # I

    .prologue
    .line 3111
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mCaptionClearTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3112
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcHdlr:Landroid/os/Handler;

    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mCaptionClearTimer:Ljava/lang/Runnable;

    mul-int/lit8 v2, p1, 0x64

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3113
    return-void
.end method


# virtual methods
.method public cancelRecord()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "bCancelRec":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 687
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered cancelRecord() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 690
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 691
    :cond_0
    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 696
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting cancelRecord() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return v0

    .line 693
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in cancelRecord() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelScanChannels()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "bCancelScan":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 796
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered cancelScanChannels() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 799
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_0

    .line 800
    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 805
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting cancelScanChannels() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return v0

    .line 802
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in cancelScanChannels() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public captureFrame()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 738
    const/4 v0, 0x0

    .line 739
    .local v0, "bCaptFrame":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 741
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered captureFrame() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 744
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_0

    .line 745
    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 750
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting captureFrame() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return v0

    .line 747
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in captureFrame() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1046
    const/4 v0, 0x0

    .line 1051
    .local v0, "bClose":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 1053
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered close() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 1056
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$400(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1058
    :cond_1
    const/16 v2, 0x75

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 1063
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting close() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    return v0

    .line 1060
    :cond_2
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in close()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public convertDpToPixel(I)I
    .locals 4
    .param p1, "dp"    # I

    .prologue
    .line 3095
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3096
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public create(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "mCreateMode"    # I

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "bCreate":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 525
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    sput-object p1, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrContext:Landroid/content/Context;

    .line 526
    sput p2, Landroid/broadcast/oneseg/MtvOneSegService;->mCurrentInitMode:I

    .line 527
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered create() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 530
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 531
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->create()Z

    move-result v0

    .line 535
    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, p1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 543
    :goto_0
    if-nez v0, :cond_0

    .line 544
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 545
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->delete()V

    .line 548
    :cond_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting create() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return v0

    .line 539
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in create()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1107
    const/4 v0, 0x0

    .line 1112
    .local v0, "bDelete":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 1114
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered delete() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 1117
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    .line 1118
    const/16 v2, 0x76

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 1123
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting delete() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return v0

    .line 1120
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in delete()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteAllAffililiationAreas()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2759
    const/4 v0, 0x0

    .line 2760
    .local v0, "bDelAffil":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 2762
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered deleteAllAffililiationAreas() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 2767
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 2769
    :cond_0
    const/16 v2, 0x79

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 2774
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "exiting deleteAllAffililiationAreas() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    return v0

    .line 2771
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State  - current state = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can\'t post message to oneseg thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteAllTvLink()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2740
    const/4 v0, 0x0

    .line 2741
    .local v0, "bDelTvlink":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 2743
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered deleteAllTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 2747
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 2749
    :cond_0
    const/16 v2, 0x78

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 2754
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "exiting deleteAllTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    return v0

    .line 2751
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State - current state = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can\'t post message to oneseg thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteBroadCasterArea(II)Z
    .locals 5
    .param p1, "in_affiliationID"    # I
    .param p2, "in_originalNetworkID"    # I

    .prologue
    .line 2780
    const/4 v0, 0x0

    .line 2781
    .local v0, "bDelBroadcastArea":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 2783
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered deleteBroadCasterArea() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 2788
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 2791
    :cond_0
    const/16 v2, 0x7a

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 2795
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "exiting deleteBroadCasterArea() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    return v0

    .line 2793
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State - current state = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can\'t post message to oneseg thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteTVFile(I)Z
    .locals 5
    .param p1, "fileIndex"    # I

    .prologue
    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, "bCaptFrame":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 823
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered deleteTVFile() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 826
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 827
    :cond_0
    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 832
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting deleteTVFile() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return v0

    .line 829
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in deleteTVFile() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteTvLink(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2722
    const/4 v0, 0x0

    .line 2723
    .local v0, "bDelTvlink":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 2724
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered deleteTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 2729
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 2731
    :cond_0
    const/16 v2, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 2735
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "exiting deleteTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    return v0

    .line 2733
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State - current state = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can\'t post message to oneseg thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method doBindService(Landroid/content/Context;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 368
    const-string v1, "MtvOneSegService"

    const-string v2, "doBindService : Called.."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-boolean v1, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    if-nez v1, :cond_0

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 373
    sput-boolean v3, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    .line 378
    .end local v0    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 376
    :cond_0
    const-string v1, "MtvOneSegService"

    const-string v2, "doBindService : Service already bound.."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 381
    const-string v2, "MtvOneSegService"

    const-string v3, "doUnBindService : Called.."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-boolean v2, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    if-eqz v2, :cond_1

    .line 385
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 388
    const/4 v2, 0x0

    const/16 v3, 0x7c

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 390
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 391
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mRemoteOneSegService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 398
    const/16 v2, 0x76

    const/16 v3, 0xc9

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 399
    sput-boolean v4, Landroid/broadcast/oneseg/MtvOneSegService;->mIsBound:Z

    .line 404
    :goto_1
    iput-boolean v4, p0, Landroid/broadcast/oneseg/MtvOneSegService;->bSDTVInitDone:Z

    .line 405
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 407
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MtvOneSegService"

    const-string v3, "doUnbindService : Service has probably crashed!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "MtvOneSegService"

    const-string v3, "doUnBindService : Service already unbound.."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method getBundleFromChannel(Landroid/broadcast/helper/types/MtvOneSegChannel;)Landroid/os/Bundle;
    .locals 3
    .param p1, "mChannel"    # Landroid/broadcast/helper/types/MtvOneSegChannel;

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 296
    const-string v1, "MtvOneSegService"

    const-string v2, "getBundleFromChannel : Input is Null!!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    .line 299
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v1, "MTV_CHANNEL_SERVICEID"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    const-string v1, "MTV_CHANNEL_REMOTEKEYID"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v1, "MTV_CHANNEL_SERVICENAME"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "MTV_CHANNEL_NUMBEROFPHYSICALIDS"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getNumberOfPhysicalIDs()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v1, "MTV_CHANNEL_GETPHYSICALID"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v1, "MTV_CHANNEL_PHYSICALIDTYPE"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v1, "MTV_CHANNEL_PHYSICALIDNAME"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v1, "MTV_CHANNEL_PHYSICALIDPROVIDERNAME"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getBundleFromUri(Landroid/broadcast/helper/MtvURI;)Landroid/os/Bundle;
    .locals 3
    .param p1, "mUri"    # Landroid/broadcast/helper/MtvURI;

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 241
    const-string v1, "MtvOneSegService"

    const-string v2, "getBundleFromUri : Input is Null!!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    .line 244
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v1, "MTV_URI_PBTYPE"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v1, "MTV_URI_CHANNEL_NUM"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v1, "MTV_URI_FILEPATH"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->filePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "MTV_URI_FILEINDEX"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v1, "MTV_URI_SERVICE_ID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->serviceID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v1, "MTV_URI_SWITCHSERVICE"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->isSwitchService()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 256
    const-string v1, "MTV_URI_IS_TVLINK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v1, "MTV_URI_TV_LINK_ORIG_NWID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v1, "MTV_URI_TV_LINK_TRANS_STREAMID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v1, "MTV_URI_TV_LINK_SERVID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v1, "MTV_URI_TV_LINK_COMP_TAG"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v1, "MTV_URI_TV_LINK_DEST_URI"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget-object v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "MTV_URI_TV_LINK_AFFIL_ID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget-object v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->affilID:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 265
    :cond_1
    const-string v1, "MTV_URI_IS_TVLINK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method getChannelFromBundle(Landroid/os/Bundle;)[Landroid/broadcast/helper/types/MtvOneSegChannel;
    .locals 6
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 315
    if-nez p1, :cond_1

    .line 317
    const-string v3, "MtvOneSegService"

    const-string v4, "getChannelFromBundle : Input is Null!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-object v1

    .line 320
    :cond_1
    const-class v3, Landroid/broadcast/helper/types/MtvOneSegChannel;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 321
    const-string v3, "MTV_CHANNEL_INFO"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 323
    .local v2, "parcels":[Landroid/os/Parcelable;
    if-nez v2, :cond_2

    .line 325
    const-string v3, "MtvOneSegService"

    const-string v4, "getChannelFromBundle : Parcels not present !!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_2
    array-length v3, v2

    new-array v1, v3, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 332
    .local v1, "mChannel":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 334
    aget-object v3, v2, v0

    check-cast v3, Landroid/broadcast/helper/types/MtvOneSegChannel;

    aput-object v3, v1, v0

    .line 335
    const-string v3, "MtvOneSegService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChannelFromBundle : Physical channel Name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPlayBackTime()J
    .locals 5

    .prologue
    .line 965
    const-string v1, "MtvOneSegService"

    const-string v4, "Entered getPlayBackTime()"

    invoke-static {v1, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-wide/16 v2, -0x1

    .line 967
    .local v2, "playBackTime":J
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 968
    .local v0, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    .line 969
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->PAUSE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v0, v1, :cond_1

    .line 970
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/broadcast/sdtv/SDtvControl;->getPlaybackTime()J

    move-result-wide v2

    .line 976
    :goto_0
    return-wide v2

    .line 974
    :cond_1
    const-string v1, "MtvOneSegService"

    const-string v4, "getPlayBackTime called in invalidState"

    invoke-static {v1, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getProgInfoFromBundle(Landroid/os/Bundle;)[Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 5
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 272
    if-nez p1, :cond_1

    .line 274
    const-string v3, "MtvOneSegService"

    const-string v4, "getProgInfoFromBundle : Input is Null!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    return-object v1

    .line 277
    :cond_1
    const-class v3, Landroid/broadcast/helper/types/MtvOneSegProgram;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 278
    const-string v3, "MTV_PROGRAM_INFO"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 279
    .local v2, "parcels":[Landroid/os/Parcelable;
    if-nez v2, :cond_2

    .line 281
    const-string v3, "MtvOneSegService"

    const-string v4, "getProgInfoFromBundle : Parcels not present !!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    array-length v3, v2

    new-array v1, v3, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 285
    .local v1, "mProginfo":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 286
    aget-object v3, v2, v0

    check-cast v3, Landroid/broadcast/helper/types/MtvOneSegProgram;

    aput-object v3, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getSignalInfoFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 3
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 356
    const-string v1, "MtvOneSegService"

    const-string v2, "getSignalInfoFromBundle : Input is Null!!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 359
    :cond_0
    new-instance v0, Landroid/broadcast/helper/types/MtvOneSegSignal;

    invoke-direct {v0}, Landroid/broadcast/helper/types/MtvOneSegSignal;-><init>()V

    .line 360
    .local v0, "mSignalInfo":Landroid/broadcast/helper/types/MtvOneSegSignal;
    const-string v1, "MTV_SIGNAL_CN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->setCN(I)V

    .line 361
    const-string v1, "MTV_SIGNAL_RSSI"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->setRSSI(I)V

    .line 362
    const-string v1, "MTV_SIGNAL_BER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->setBER(I)V

    .line 363
    const-string v1, "MTV_SIGNAL_SIGQUALITY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->setsigQty(I)V

    goto :goto_0
.end method

.method public getSignalQuality()I
    .locals 4

    .prologue
    .line 1156
    const/4 v0, -0x1

    .line 1158
    .local v0, "sigQty":I
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered getSignalQuality() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->getSignalInfo()Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v1

    .line 1162
    .local v1, "sigStat":Landroid/broadcast/helper/types/MtvOneSegSignal;
    if-eqz v1, :cond_0

    .line 1163
    invoke-virtual {v1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getSignalQuality()I

    move-result v0

    .line 1166
    :cond_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting getSignalQuality() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    return v0
.end method

.method public getSignalStatistics()Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 2

    .prologue
    .line 1142
    const-string v0, "MtvOneSegService"

    const-string v1, "Entered getSignalStatistics() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->getSignalInfo()Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroid/broadcast/helper/MtvURI;)Z
    .locals 6
    .param p1, "openURI"    # Landroid/broadcast/helper/MtvURI;

    .prologue
    const/4 v5, 0x0

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "bOpen":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 584
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered open() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    if-eqz v2, :cond_0

    .line 587
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOpInfo.mCurCmd ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v4}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]    mOpInfo.mCurMdl ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v4}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$400(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_0
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 589
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_1

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_3

    :cond_1
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$300(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService;->mOpInfo:Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;->access$400(Landroid/broadcast/oneseg/MtvOneSegService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    if-nez v2, :cond_3

    .line 590
    if-eqz p1, :cond_2

    .line 591
    const/16 v2, 0x66

    invoke-static {v2, v5, v5, p1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 599
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting open() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return v0

    .line 593
    :cond_2
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid parameter: openURI - null. Failure in open()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_3
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in open()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseCCData([B)V
    .locals 6
    .param p1, "captData"    # [B

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    .line 2801
    const-string v1, "MtvOneSegService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered parseCCData buffer length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    iput-object p1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    .line 2803
    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    array-length v1, v1

    if-ge v1, v5, :cond_0

    .line 2804
    const-string v1, "MtvOneSegService"

    const-string v2, "insufficient length not parsing \n"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    :goto_0
    return-void

    .line 2807
    :cond_0
    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->drcsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2808
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    .line 2809
    const/4 v1, -0x1

    iput v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->prevColor:I

    .line 2810
    iput-boolean v4, p0, Landroid/broadcast/oneseg/MtvOneSegService;->mCaptionclearflag:Z

    .line 2811
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->isIdentifierField()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2812
    const-string v1, "MtvOneSegService"

    const-string v2, "wrong identifier fields"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2815
    :cond_1
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->isCaptMgmtData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2816
    const-string v1, "MtvOneSegService"

    const-string v2, "management data not processing"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2819
    :cond_2
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->getLinkNo()V

    .line 2820
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->getDataGrpSize()V

    .line 2821
    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    const/16 v2, 0x8

    aget-byte v1, v1, v2

    ushr-int/lit8 v1, v1, 0x6

    int-to-byte v0, v1

    .line 2822
    .local v0, "tmd":B
    const-string v1, "MtvOneSegService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmd  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    if-eq v0, v4, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2824
    :cond_3
    const/16 v1, 0xe

    iput v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopHdrIndex:I

    .line 2829
    :goto_1
    iget v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopHdrIndex:I

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_5

    .line 2830
    const-string v1, "MtvOneSegService"

    const-string v2, "insufficient length not parsing \n"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2827
    :cond_4
    iput v5, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopHdrIndex:I

    goto :goto_1

    .line 2833
    :cond_5
    iget-object v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    iget v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopHdrIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    iget v3, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopHdrIndex:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopLength:I

    .line 2834
    iget v1, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopLength:I

    iget v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->dataUnitLoopHdrIndex:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Landroid/broadcast/oneseg/MtvOneSegService;->currentBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_6

    .line 2835
    const-string v1, "MtvOneSegService"

    const-string v2, "insufficient length not parsing \n"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2839
    :cond_6
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->parseDataUnits()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2841
    const/16 v1, 0x71

    const/16 v2, 0xd3

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/broadcast/oneseg/MtvOneSegService;->captionString:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendEvttoListener(IIILjava/lang/Object;)V

    .line 2844
    :cond_7
    const-string v1, "MtvOneSegService"

    const-string v2, "Exiting parseCCData \n"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public pause()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "bPause":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 850
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered pause() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 853
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_0

    .line 854
    const/16 v2, 0x6d

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 859
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting pause() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return v0

    .line 856
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in pause() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener(Landroid/broadcast/IMtvOneSegServiceListener;)Z
    .locals 3
    .param p1, "addListener"    # Landroid/broadcast/IMtvOneSegServiceListener;

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, "bRegister":Z
    const-string v1, "MtvOneSegService"

    const-string v2, "Entered registerListener()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    if-eqz p1, :cond_0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    if-nez v1, :cond_0

    .line 463
    sput-object p1, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    .line 464
    const-string v1, "MtvOneSegService"

    const-string v2, "Successfully registered listener"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x1

    .line 470
    :goto_0
    const-string v1, "MtvOneSegService"

    const-string v2, "Exiting registerListener()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return v0

    .line 467
    :cond_0
    const-string v1, "MtvOneSegService"

    const-string v2, "Invalid Listener Object. Failure in registerListener() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public repositionPlay(I)Z
    .locals 5
    .param p1, "curTimeStamp"    # I

    .prologue
    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "brePosition":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 937
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entered repositionPlay() curTimeStamp = [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 941
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_0

    .line 942
    const/16 v2, 0x70

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 947
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting repositionPlay() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return v0

    .line 944
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in repositionPlay() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resume()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "bPause":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 877
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered resume() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 880
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->PAUSE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_0

    .line 881
    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 886
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting resume() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    return v0

    .line 883
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in resume() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public scanChannels()Z
    .locals 6

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "bScanChnls":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 769
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered scanChannels() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 772
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_0

    .line 773
    const/16 v2, 0x6b

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 778
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting scanChannels() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return v0

    .line 775
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in scanChannels() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public screwupCleanup()Z
    .locals 5

    .prologue
    .line 1075
    const/4 v0, 0x0

    .line 1076
    .local v0, "bScrewup":Z
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 1077
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered screwupCleanup() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    .line 1086
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current State is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Need cleanup!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const/4 v0, 0x1

    .line 1088
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->deleteService()V

    .line 1089
    invoke-direct {p0}, Landroid/broadcast/oneseg/MtvOneSegService;->resetService()V

    .line 1094
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting screwupCleanup() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return v0

    .line 1091
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current State is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Don\'t Need cleanup!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendEvttoListener(IIILjava/lang/Object;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "status"    # I
    .param p3, "extraInfo"    # I
    .param p4, "objInfo"    # Ljava/lang/Object;

    .prologue
    .line 2322
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    if-eqz v0, :cond_0

    .line 2323
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/broadcast/IMtvOneSegServiceListener;->onServiceNotify(IIILjava/lang/Object;)V

    .line 2325
    :cond_0
    return-void
.end method

.method public start(Landroid/broadcast/helper/types/MtvOneSegChannel;)Z
    .locals 5
    .param p1, "servInfo"    # Landroid/broadcast/helper/types/MtvOneSegChannel;

    .prologue
    const/4 v4, 0x0

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "bStart":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 622
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered start() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    if-eqz p1, :cond_1

    .line 625
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 627
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_0

    .line 628
    const/16 v2, 0x72

    invoke-static {v2, v4, v4, p1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 637
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting start() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return v0

    .line 630
    :cond_0
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in start()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_1
    const-string v2, "MtvOneSegService"

    const-string v3, "Invalid Input Parameters servInfo = [null]. Failure in start() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecord(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "recURI"    # Ljava/lang/String;
    .param p2, "availMemSize"    # I

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "bStartRec":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 655
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered startRecord() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    if-eqz p1, :cond_2

    .line 658
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 660
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 661
    :cond_0
    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, p1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 669
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting startRecord() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return v0

    .line 663
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in startRecord() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_2
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Input Parameters recURI ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] availMemSize ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in startRecord() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startTVLink(Landroid/broadcast/helper/types/MtvOneSegTVLink;)Z
    .locals 5
    .param p1, "tvlinkURI"    # Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .prologue
    const/4 v4, 0x0

    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, "bStartTVLink":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 993
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered startTVLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 997
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 998
    :cond_0
    const/16 v2, 0x73

    invoke-static {v2, v4, v4, p1}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 1003
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting startTVLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    return v0

    .line 1000
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in startTVLink() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "bStopRec":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 714
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered stopRecord() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 717
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 718
    :cond_0
    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 723
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting stopRecord() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return v0

    .line 720
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in stopRecord() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopTVLink()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1018
    const/4 v0, 0x0

    .line 1019
    .local v0, "bStopTVLink":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 1021
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered stopTVLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 1025
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 1026
    :cond_0
    const/16 v2, 0x74

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 1031
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting stopTVLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return v0

    .line 1028
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in stopTVLink() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trickmodePlay(III)Z
    .locals 5
    .param p1, "trickType"    # I
    .param p2, "trickSpeed"    # I
    .param p3, "currTimeStamp"    # I

    .prologue
    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "bTrickMode":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 905
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegService"

    const-string v3, "Entered trickmodePlay() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 908
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_2

    .line 909
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 910
    :cond_0
    const/16 v2, 0x6f

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p1, p2, v3}, Landroid/broadcast/oneseg/MtvOneSegService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 918
    :goto_0
    const-string v2, "MtvOneSegService"

    const-string v3, "Exiting trickmodePlay() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    return v0

    .line 912
    :cond_1
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TrickType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in trickmodePlay() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 915
    :cond_2
    const-string v2, "MtvOneSegService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid State ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in trickmodePlay() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/broadcast/IMtvOneSegServiceListener;)V
    .locals 2
    .param p1, "rmvListener"    # Landroid/broadcast/IMtvOneSegServiceListener;

    .prologue
    .line 489
    const-string v0, "MtvOneSegService"

    const-string v1, "Entered unregisterListener()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    if-eqz p1, :cond_0

    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    if-ne v0, p1, :cond_0

    .line 492
    const/4 v0, 0x0

    sput-object v0, Landroid/broadcast/oneseg/MtvOneSegService;->mOneSegSvcListr:Landroid/broadcast/IMtvOneSegServiceListener;

    .line 501
    :goto_0
    const-string v0, "MtvOneSegService"

    const-string v1, "Exiting unregisterListener()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void

    .line 494
    :cond_0
    if-nez p1, :cond_1

    .line 495
    const-string v0, "MtvOneSegService"

    const-string v1, "Invalid Listener Object. Cannot un-register listener "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    const-string v0, "MtvOneSegService"

    const-string v1, "Mismatch in listener Object. Cannot un-register listener "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
