.class public Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
.super Landroid/app/Service;
.source "MtvOneSegRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$DtvRemoteDeatRecipient;,
        Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;,
        Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    }
.end annotation


# static fields
.field private static final ALL_MDL_DONE:I = 0x111

.field public static final CMD_REC_OPEN:I = 0x111d

.field private static final CREATE_RESPONSE_REQUIRED:I = 0x1

.field private static final DEL_TV_FILE:I = 0x20

.field private static final DUMMY_CHNL_SCAN:I = 0x7

.field public static final INIT_NEX_BML:I = 0x1

.field public static final INIT_ONLY_SDTV:I = 0x0

.field private static final MAX_CHNL:I = 0x34

.field private static final MDL_NONE:I = 0x0

.field public static final MSG_MTV_CMD_BASE:I = 0x1100

.field public static final MSG_MTV_CMD_CANCEL_RECORD:I = 0x1109

.field public static final MSG_MTV_CMD_CANCEL_SCAN_CHANNELS:I = 0x110d

.field public static final MSG_MTV_CMD_CAPTURE_FRAME:I = 0x110b

.field public static final MSG_MTV_CMD_CLOSE:I = 0x1115

.field public static final MSG_MTV_CMD_CLOSE_SERVICE:I = 0x1104

.field public static final MSG_MTV_CMD_DELETE:I = 0x1117

.field public static final MSG_MTV_CMD_DELETE_SERVICE:I = 0x1105

.field public static final MSG_MTV_CMD_DELETE_TV_FILE:I = 0x110e

.field public static final MSG_MTV_CMD_GET_LOCAL_PLAY_STATUS:I = 0x111c

.field public static final MSG_MTV_CMD_GET_PLAYER_STATUS:I = 0x111b

.field public static final MSG_MTV_CMD_GET_SERVICE_STATE:I = 0x111a

.field public static final MSG_MTV_CMD_GET_SIGNAL_QUALITY:I = 0x1118

.field public static final MSG_MTV_CMD_INIT_SERVICE:I = 0x1102

.field public static final MSG_MTV_CMD_OPEN:I = 0x1106

.field public static final MSG_MTV_CMD_REGISTER_CLIENT:I = 0x1100

.field public static final MSG_MTV_CMD_RESET_SERVICE:I = 0x1103

.field public static final MSG_MTV_CMD_SCAN_CHANNELS:I = 0x110c

.field public static final MSG_MTV_CMD_SCREWUP_CLEANUP:I = 0x1116

.field public static final MSG_MTV_CMD_SET_SERVICE_STATE:I = 0x1119

.field public static final MSG_MTV_CMD_START:I = 0x1107

.field public static final MSG_MTV_CMD_START_RECORD:I = 0x1108

.field public static final MSG_MTV_CMD_STOP_RECORD:I = 0x110a

.field public static final MSG_MTV_CMD_UNREGISTER_CLIENT:I = 0x1101

.field public static MTV_SERVICE_NO_SIGNAL:I = 0x0

.field private static final SCAN_CONTINUE:I = 0x2

.field private static final SCAN_START:I = 0x1

.field private static final SCAN_TIMER:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MtvOneSegRemoteService"

.field private static final TUNER_POWER_OFF_REQUIRED:I = 0x0

.field public static final TUNER_POWER_ON_REQUIRED:I = 0x1

.field private static isJNILoaded:Z

.field private static mIsBackGroundRecordingOn:Z

.field private static mIsStartCommandDone:Z

.field private static mLocalPlay:Z

.field private static mOneSegSvcClose:I

.field private static mOneSegSvcHdlr:Landroid/os/Handler;

.field private static mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field private static mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

.field private static mScanChnlIndex:I


# instance fields
.field mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field final mMessenger:Landroid/os/Messenger;

.field private mOneSegScanRunnable:Ljava/lang/Runnable;

.field private final mOneSegSvcHdlrCB:Landroid/os/Handler$Callback;

.field private mRunnableFakeClose:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    sput-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    .line 51
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    sput-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 55
    sput-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->isJNILoaded:Z

    .line 63
    const/4 v0, -0x2

    sput v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->MTV_SERVICE_NO_SIGNAL:I

    .line 83
    sput v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcClose:I

    .line 85
    const/16 v0, 0xd

    sput v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    .line 91
    sput-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mLocalPlay:Z

    .line 93
    sput-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsBackGroundRecordingOn:Z

    .line 95
    sput-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsStartCommandDone:Z

    .line 141
    sput-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    .line 601
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$IncomingHandler;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mMessenger:Landroid/os/Messenger;

    .line 1083
    new-instance v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mRunnableFakeClose:Ljava/lang/Runnable;

    .line 1221
    new-instance v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$2;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegScanRunnable:Ljava/lang/Runnable;

    .line 1267
    new-instance v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$3;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlrCB:Landroid/os/Handler$Callback;

    .line 2113
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsStartCommandDone:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsStartCommandDone:Z

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->loadJNI()V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcClose:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 46
    sput p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcClose:I

    return p0
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->handleClose(I)V

    return-void
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    return v0
.end method

.method static synthetic access$1708()I
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->handleScanChannels()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->createService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsBackGroundRecordingOn:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsBackGroundRecordingOn:Z

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 46
    sput-object p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;IIIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setOpStatus(IIIIZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->resetScan()V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->closeService(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->deleteService()V

    return-void
.end method

.method static synthetic access$2500()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegScanRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 46
    sput-object p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Landroid/os/Handler$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlrCB:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->pause()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->reposition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->resume()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->trickPlay(III)Z

    move-result v0

    return v0
.end method

.method private closeService(I)V
    .locals 3
    .param p1, "currCommand"    # I

    .prologue
    .line 1104
    const-string v0, "MtvOneSegRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entered Remote closeService() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v0}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1108
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->closeBGRecord()Z

    .line 1119
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setIsLocalPlay(Z)V

    .line 1120
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Exiting closeService() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    return-void

    .line 1112
    :cond_2
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1113
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Calling SDtvControl.close()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvControl;->close()V

    goto :goto_0
.end method

.method private createService(Landroid/content/Context;)Z
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1025
    .local v0, "isCreated":Z
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Entered createService() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1029
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Successfully Instantiated SDtvControl only..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/broadcast/sdtv/SDtvControl;->create(Landroid/os/Handler;)Z

    move-result v0

    .line 1032
    if-eqz v0, :cond_0

    .line 1033
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Successfully created SDtvControl() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->create(Landroid/os/Handler;)Z

    move-result v0

    .line 1038
    if-eqz v0, :cond_1

    .line 1040
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Successfully created SDtvRecEngineControl() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1044
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Successfully Created Playback Service "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :goto_0
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Exiting createService() "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    return v0

    .line 1046
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->deleteService()V

    goto :goto_0
.end method

.method private deleteService()V
    .locals 2

    .prologue
    .line 1129
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Entered deleteService() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Resetting global data "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->isJNILoaded:Z

    .line 1134
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1135
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvControl;->delete()V

    .line 1136
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Deleted SDtvControl() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->delete()V

    .line 1139
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Successfully deleted Playback Service "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Exiting deleteService() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method public static getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    .locals 1

    .prologue
    .line 614
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    return-object v0
.end method

.method private getSignalInfo()Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 4

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "bStats":Z
    const/4 v1, 0x0

    .line 894
    .local v1, "sigStat":Landroid/broadcast/helper/types/MtvOneSegSignal;
    new-instance v1, Landroid/broadcast/helper/types/MtvOneSegSignal;

    .end local v1    # "sigStat":Landroid/broadcast/helper/types/MtvOneSegSignal;
    invoke-direct {v1}, Landroid/broadcast/helper/types/MtvOneSegSignal;-><init>()V

    .line 896
    .restart local v1    # "sigStat":Landroid/broadcast/helper/types/MtvOneSegSignal;
    if-eqz v1, :cond_0

    .line 897
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/broadcast/sdtv/SDtvControl;->getSigStats(Landroid/broadcast/helper/types/MtvOneSegSignal;)Z

    move-result v0

    .line 899
    if-nez v0, :cond_0

    .line 900
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "Failure in retrieving Signal Statistics "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/4 v1, 0x0

    .line 905
    :cond_0
    return-object v1
.end method

.method private handleClose(I)V
    .locals 6
    .param p1, "mdlsClosed"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1055
    const/16 v0, 0x111

    if-ne p1, v0, :cond_0

    .line 1057
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mRunnableFakeClose:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1061
    sput v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcClose:I

    .line 1063
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1000(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1064
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1100(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)I

    move-result v0

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1200(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    invoke-static {v3, v0, v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 1065
    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setOpStatus(IIIIZ)V

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 1068
    const-string v0, "MtvOneSegRemoteService"

    const-string v2, "Successfully Closed Service "

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/16 v0, 0x75

    const/16 v2, 0xc9

    invoke-static {v3, v0, v2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private handleScanChannels()V
    .locals 7

    .prologue
    const/16 v6, 0x34

    const/4 v4, 0x0

    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "bScanChnls":Z
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "handleScanChannels"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    sget v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    if-gt v1, v6, :cond_0

    .line 1247
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1248
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    invoke-virtual {v1, v2}, Landroid/broadcast/sdtv/SDtvControl;->scanChannel(I)Z

    move-result v0

    .line 1250
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1251
    sget-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1261
    :cond_0
    :goto_0
    sget v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    if-le v1, v6, :cond_1

    .line 1262
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->resetScan()V

    .line 1264
    :cond_1
    return-void

    .line 1254
    :cond_2
    const/16 v1, 0x133

    const/16 v2, 0xca

    sget v3, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    invoke-static {v4, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendMessageToClients(Landroid/os/Message;)V

    .line 1255
    sget v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    .line 1256
    const/16 v1, 0x6b

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isLocalPlay()Z
    .locals 1

    .prologue
    .line 926
    sget-boolean v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mLocalPlay:Z

    return v0
.end method

.method private static loadJNI()V
    .locals 2

    .prologue
    .line 619
    sget-boolean v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->isJNILoaded:Z

    if-nez v0, :cond_0

    .line 620
    const-string v0, "broadcastForOneSeg_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 621
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->isJNILoaded:Z

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "JNI is already loaded, not loading again"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pause()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "bPause":Z
    const/16 v1, 0x6d

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 696
    return v0
.end method

.method private reposition(I)Z
    .locals 4
    .param p1, "timestamp"    # I

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "bPause":Z
    const/16 v1, 0x70

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 708
    return v0
.end method

.method private resetScan()V
    .locals 2

    .prologue
    .line 1236
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1237
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    const/16 v0, 0xd

    sput v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mScanChnlIndex:I

    .line 1239
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/broadcast/sdtv/SDtvControl;->close()V

    .line 1242
    :cond_0
    return-void
.end method

.method private resetService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 910
    invoke-static {v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setIsLocalPlay(Z)V

    .line 912
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 913
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 912
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 915
    :cond_0
    sput-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->isJNILoaded:Z

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 916
    invoke-direct/range {v0 .. v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->setOpStatus(IIIIZ)V

    .line 917
    sput-object v7, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .line 918
    sput-object v7, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    .line 919
    sput-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsStartCommandDone:Z

    .line 920
    sput-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsBackGroundRecordingOn:Z

    .line 923
    return-void
.end method

.method private resume()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, "bPause":Z
    const/16 v1, 0x6e

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 702
    return v0
.end method

.method public static sendSVCThreadMessage(IIILjava/lang/Object;)Z
    .locals 3
    .param p0, "command"    # I
    .param p1, "status"    # I
    .param p2, "extraInfo"    # I
    .param p3, "objInfo"    # Ljava/lang/Object;

    .prologue
    .line 1189
    const/4 v0, 0x0

    .line 1191
    .local v0, "bSendMsg":Z
    sget-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1192
    const/16 v1, 0x50e

    if-ne p1, v1, :cond_1

    .line 1193
    sget-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 1198
    :cond_0
    :goto_0
    return v0

    .line 1195
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public static sendUrgentSVCThreadMessage(IIILjava/lang/Object;)Z
    .locals 3
    .param p0, "command"    # I
    .param p1, "status"    # I
    .param p2, "extraInfo"    # I
    .param p3, "objInfo"    # Ljava/lang/Object;

    .prologue
    .line 1180
    const/4 v0, 0x0

    .line 1182
    .local v0, "bSendMsg":Z
    sget-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1183
    sget-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 1185
    :cond_0
    return v0
.end method

.method public static setIsLocalPlay(Z)V
    .locals 1
    .param p0, "mIsLocalPlay"    # Z

    .prologue
    .line 931
    sput-boolean p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mLocalPlay:Z

    .line 932
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getInstance()Landroid/broadcast/sdtv/SDtvControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/broadcast/sdtv/SDtvControl;->setIsLocalPlay(Z)V

    .line 933
    return-void
.end method

.method public static setOneSegSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V
    .locals 3
    .param p0, "eNewState"    # Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .prologue
    .line 604
    sput-object p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 605
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v0}, Landroid/broadcast/sdtv/SDtvControl;->setSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 606
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-static {v0}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->setSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V

    .line 607
    const-string v0, "MtvOneSegRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSegService State :: mOneSegSvcState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method private setOpStatus(IIIIZ)V
    .locals 3
    .param p1, "curCmd"    # I
    .param p2, "curCmdStatus"    # I
    .param p3, "curMdl"    # I
    .param p4, "newCmd"    # I
    .param p5, "setErr"    # Z

    .prologue
    .line 1203
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    if-eqz v0, :cond_1

    .line 1204
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1102(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I

    .line 1205
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1202(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I

    .line 1207
    if-gtz p3, :cond_0

    .line 1208
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1502(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I

    .line 1213
    :goto_0
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1602(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I

    .line 1214
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1002(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;Z)Z

    .line 1215
    const-string v0, "MtvOneSegRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mOpInfo.mNextCmd  is... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1600(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :goto_1
    return-void

    .line 1210
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-static {v0, p3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->access$1576(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I

    goto :goto_0

    .line 1217
    :cond_1
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Failure in setOpStatus()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private trickPlay(III)Z
    .locals 3
    .param p1, "trickMode"    # I
    .param p2, "trickSpeed"    # I
    .param p3, "currTimeStamp"    # I

    .prologue
    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "bTrick":Z
    const/16 v1, 0x6f

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 715
    return v0
.end method


# virtual methods
.method public cancelRecord()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, "bRecord":Z
    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendUrgentSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 857
    return v0
.end method

.method public cancelScanChannels()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 749
    const/4 v0, 0x0

    .line 751
    .local v0, "bCancelScan":Z
    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 752
    return v0
.end method

.method public captureFrame()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, "bCaptFrame":Z
    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 842
    return v0
.end method

.method public close(I)Z
    .locals 4
    .param p1, "currCmd"    # I

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "bClose":Z
    const/16 v1, 0x75

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 788
    return v0
.end method

.method public delete()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 830
    const/4 v0, 0x0

    .line 835
    .local v0, "bDelete":Z
    const/16 v1, 0x76

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 836
    return v0
.end method

.method public deleteAllAffililiationAreas()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "bDelAffil":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 977
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "Entered deleteAllAffililiationAreas() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 982
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 984
    :cond_0
    const/16 v2, 0x79

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 989
    :goto_0
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "exiting deleteAllAffililiationAreas() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return v0

    .line 986
    :cond_1
    const-string v2, "MtvOneSegRemoteService"

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

    .line 955
    const/4 v0, 0x0

    .line 956
    .local v0, "bDelTvlink":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 958
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "Entered deleteAllTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 962
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 964
    :cond_0
    const/16 v2, 0x78

    const/4 v3, 0x0

    invoke-static {v2, v4, v4, v3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 969
    :goto_0
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "exiting deleteAllTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return v0

    .line 966
    :cond_1
    const-string v2, "MtvOneSegRemoteService"

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
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "bDelBroadcastArea":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 998
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "Entered deleteBroadCasterArea() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 1003
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 1006
    :cond_0
    const/16 v2, 0x7a

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 1010
    :goto_0
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "exiting deleteBroadCasterArea() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    return v0

    .line 1008
    :cond_1
    const-string v2, "MtvOneSegRemoteService"

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
    .locals 4
    .param p1, "fileIndex"    # I

    .prologue
    .line 767
    const/4 v0, 0x0

    .line 769
    .local v0, "bCaptFrame":Z
    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 771
    return v0
.end method

.method public deleteTvLink(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "bDelTvlink":Z
    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->MAX:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 938
    .local v1, "currState":Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "Entered deleteTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v1

    .line 943
    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->START:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v1, v2, :cond_1

    .line 945
    :cond_0
    const/16 v2, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 949
    :goto_0
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "exiting deleteTvLink() "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return v0

    .line 947
    :cond_1
    const-string v2, "MtvOneSegRemoteService"

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

.method getBundleFromChannel([Landroid/broadcast/helper/types/MtvOneSegChannel;)Landroid/os/Bundle;
    .locals 7
    .param p1, "mChannel"    # [Landroid/broadcast/helper/types/MtvOneSegChannel;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 173
    const-string v4, "MtvOneSegRemoteService"

    const-string v5, "getBundleFromChannel: Input is null"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    .line 226
    :goto_0
    return-object v2

    .line 176
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v2, "mBundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 180
    .local v3, "mNewChannelWithPhysicalIDs":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/4 v0, 0x0

    .line 182
    .local v0, "PhysicalIDsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 184
    aget-object v4, p1, v1

    if-eqz v4, :cond_1

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_2
    if-eqz v0, :cond_4

    .line 189
    new-array v3, v0, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 191
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 192
    aget-object v4, p1, v1

    if-eqz v4, :cond_3

    .line 193
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNewChannelWithPhysicalIDs[i] is not null with i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v4, Landroid/broadcast/helper/types/MtvOneSegChannel;

    invoke-direct {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;-><init>()V

    aput-object v4, v3, v1

    .line 195
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setServID(I)V

    .line 196
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setRemoteKeyID(I)V

    .line 197
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setServiceName(Ljava/lang/String;)V

    .line 199
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getNumberOfPhysicalIDs()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setNumberOfPhysicalIDs(I)V

    .line 200
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setPhysicalID(I)V

    .line 202
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setPhysicalIDType(I)V

    .line 203
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setPhysicalIDName(Ljava/lang/String;)V

    .line 204
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setPhysicalIDProviderName(Ljava/lang/String;)V

    .line 191
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 209
    :cond_3
    const-string v4, "MtvOneSegRemoteService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNewChannelWithPhysicalIDs[i] is null with i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 224
    :cond_4
    const-string v4, "MTV_CHANNEL_INFO"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0
.end method

.method getBundleFromProgramInfo([Landroid/broadcast/helper/types/MtvOneSegProgram;)Landroid/os/Bundle;
    .locals 6
    .param p1, "mProgInfo"    # [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .prologue
    .line 248
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v2, "mBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 250
    .local v0, "count":I
    const/4 v3, 0x0

    .line 251
    .local v3, "mNewProgInfo":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 253
    aget-object v4, p1, v1

    if-eqz v4, :cond_0

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    if-eqz v0, :cond_3

    .line 258
    new-array v3, v0, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 259
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 261
    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    .line 264
    new-instance v4, Landroid/broadcast/helper/types/MtvOneSegProgram;

    invoke-direct {v4}, Landroid/broadcast/helper/types/MtvOneSegProgram;-><init>()V

    aput-object v4, v3, v1

    .line 265
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getEventID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->setEventID(I)V

    .line 266
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getServiceID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->setServiceID(I)V

    .line 267
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->setProgramName(Ljava/lang/String;)V

    .line 268
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->setProgDesc(Ljava/lang/String;)V

    .line 269
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->setStartTime(Ljava/util/Date;)V

    .line 270
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/broadcast/helper/types/MtvOneSegProgram;->setEndTime(Ljava/util/Date;)V

    .line 259
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_3
    const-string v4, "MTV_PROGRAM_INFO"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 277
    return-object v2
.end method

.method getBundleFromStreamTime(J)Landroid/os/Bundle;
    .locals 3
    .param p1, "mStreamTime"    # J

    .prologue
    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v1, "MTV_STREAM_TIME"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 244
    return-object v0
.end method

.method getBundleFromUri(Landroid/broadcast/helper/MtvURI;)Landroid/os/Bundle;
    .locals 3
    .param p1, "mUri"    # Landroid/broadcast/helper/MtvURI;

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 317
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "getBundleFromUri: Input is null"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    .line 320
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v1, "MTV_URI_PBTYPE"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->pbType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string v1, "MTV_URI_CHANNEL_NUM"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const-string v1, "MTV_URI_FILEPATH"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->filePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "MTV_URI_FILEINDEX"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string v1, "MTV_URI_SERVICE_ID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->serviceID()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    const-string v1, "MTV_URI_SWITCHSERVICE"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->isSwitchService()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "MTV_URI_IS_TVLINK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    const-string v1, "MTV_URI_TV_LINK_ORIG_NWID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    const-string v1, "MTV_URI_TV_LINK_TRANS_STREAMID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-string v1, "MTV_URI_TV_LINK_SERVID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string v1, "MTV_URI_TV_LINK_COMP_TAG"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v1, "MTV_URI_TV_LINK_DEST_URI"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget-object v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v1, "MTV_URI_TV_LINK_AFFIL_ID"

    invoke-virtual {p1}, Landroid/broadcast/helper/MtvURI;->tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;

    move-result-object v2

    iget-object v2, v2, Landroid/broadcast/helper/types/MtvOneSegTVLink;->affilID:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 341
    :cond_1
    const-string v1, "MTV_URI_IS_TVLINK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method getBundlefromSigInfo(Landroid/broadcast/helper/types/MtvOneSegSignal;)Landroid/os/Bundle;
    .locals 3
    .param p1, "mSigInfo"    # Landroid/broadcast/helper/types/MtvOneSegSignal;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 302
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "getBundlefromSigInfo: Input is null"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    .line 305
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v1, "MTV_SIGNAL_CN"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getCN()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v1, "MTV_SIGNAL_RSSI"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getRSSI()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v1, "MTV_SIGNAL_BER"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getBER()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string v1, "MTV_SIGNAL_SIGQUALITY"

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getSignalQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method getChannelFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/types/MtvOneSegChannel;
    .locals 3
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 283
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "getChannelFromBundle: Input is null"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 286
    :cond_0
    new-instance v0, Landroid/broadcast/helper/types/MtvOneSegChannel;

    invoke-direct {v0}, Landroid/broadcast/helper/types/MtvOneSegChannel;-><init>()V

    .line 287
    .local v0, "mChannel":Landroid/broadcast/helper/types/MtvOneSegChannel;
    const-string v1, "MTV_CHANNEL_SERVICEID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setServID(I)V

    .line 288
    const-string v1, "MTV_CHANNEL_REMOTEKEYID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setRemoteKeyID(I)V

    .line 289
    const-string v1, "MTV_CHANNEL_SERVICENAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->setServiceName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSignalStatistics()Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 2

    .prologue
    .line 886
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "Entered getSignalStatistics() "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getSignalInfo()Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 869
    const/16 v0, 0x138

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 870
    return-void
.end method

.method getUriFromBundle(Landroid/os/Bundle;)Landroid/broadcast/helper/MtvURI;
    .locals 9
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 147
    const-string v2, "MtvOneSegRemoteService"

    const-string v3, "getUriFromBundle: Input is null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 151
    .local v0, "mUri":Landroid/broadcast/helper/MtvURI;
    const-string v2, "MTV_URI_PBTYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, "pbType":I
    const-string v2, "MTV_URI_SERVICE_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 154
    .local v8, "serviceID":I
    const-string v2, "MtvOneSegRemoteService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUriFromBundle() MTV_URI_SWITCHSERVICE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MTV_URI_SWITCHSERVICE"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and  serviceID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "MTV_URI_IS_TVLINK"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 159
    :cond_1
    new-instance v0, Landroid/broadcast/helper/MtvURI;

    .end local v0    # "mUri":Landroid/broadcast/helper/MtvURI;
    const-string v2, "MTV_URI_CHANNEL_NUM"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "MTV_URI_SWITCHSERVICE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v8, v3}, Landroid/broadcast/helper/MtvURI;-><init>(IIIZ)V

    .restart local v0    # "mUri":Landroid/broadcast/helper/MtvURI;
    goto :goto_0

    .line 161
    :cond_2
    new-instance v0, Landroid/broadcast/helper/MtvURI;

    .end local v0    # "mUri":Landroid/broadcast/helper/MtvURI;
    const-string v2, "MTV_URI_FILEPATH"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MTV_URI_FILEINDEX"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/broadcast/helper/MtvURI;-><init>(ILjava/lang/String;II)V

    .restart local v0    # "mUri":Landroid/broadcast/helper/MtvURI;
    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Landroid/broadcast/helper/MtvURI;

    .end local v0    # "mUri":Landroid/broadcast/helper/MtvURI;
    const-string v2, "MTV_URI_TV_LINK_ORIG_NWID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "MTV_URI_TV_LINK_TRANS_STREAMID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "MTV_URI_TV_LINK_SERVID"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "MTV_URI_TV_LINK_COMP_TAG"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "MTV_URI_TV_LINK_DEST_URI"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "MTV_URI_TV_LINK_AFFIL_ID"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Landroid/broadcast/helper/MtvURI;-><init>(IIIIILjava/lang/String;[I)V

    .restart local v0    # "mUri":Landroid/broadcast/helper/MtvURI;
    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 2048
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2049
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "OnCreate Called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2056
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "OnDestroy Called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    sput-boolean v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsStartCommandDone:Z

    .line 2058
    sput-boolean v2, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsBackGroundRecordingOn:Z

    .line 2059
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->deleteService()V

    .line 2060
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->resetService()V

    .line 2061
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2062
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2068
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 2069
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2075
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "OnStartCommmand Called"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    sget-boolean v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsStartCommandDone:Z

    if-nez v1, :cond_0

    .line 2079
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->loadJNI()V

    .line 2080
    new-instance v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    invoke-direct {v1, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;-><init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;)V

    sput-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOpInfo:Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .line 2081
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OneSegRemoteService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2083
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Starting the thread"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlrCB:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mOneSegSvcHdlr:Landroid/os/Handler;

    .line 2085
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "Successfully Instantiated Constrcutor"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const/16 v1, 0x65

    invoke-static {v1, v4, v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 2087
    sput-boolean v6, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mIsStartCommandDone:Z

    .line 2089
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE_UPDATE_DB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2091
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "OnStartCommmand Called with intent to Update the DB !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    const/16 v1, 0x7e

    invoke-static {v1, v4, v4, v5}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 2095
    :cond_1
    return v6
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 234
    const-string v1, "MtvOneSegRemoteService"

    const-string v2, "onTaskRemoved"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 236
    .local v0, "mNM":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 237
    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2102
    const-string v0, "MtvOneSegRemoteService"

    const-string v1, "OnUnbind Called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public open(Landroid/broadcast/helper/MtvURI;)Z
    .locals 4
    .param p1, "openURI"    # Landroid/broadcast/helper/MtvURI;

    .prologue
    const/4 v3, 0x0

    .line 664
    const/4 v0, 0x0

    .line 666
    .local v0, "bOpen":Z
    const/16 v1, 0x66

    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getBundleFromUri(Landroid/broadcast/helper/MtvURI;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 668
    return v0
.end method

.method public recClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recOpen(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 628
    const/16 v0, 0x7f

    invoke-static {v0, v1, v1, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public scanChannels()Z
    .locals 5

    .prologue
    .line 730
    const/4 v0, 0x0

    .line 732
    .local v0, "bScanChnls":Z
    const/16 v1, 0x6b

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 734
    return v0
.end method

.method public screwupCleanup()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "bScrewup":Z
    const/4 v0, 0x1

    .line 801
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->deleteService()V

    .line 802
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->resetService()V

    .line 803
    return v0
.end method

.method sendMessageToClients(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 1146
    const/4 v2, 0x0

    .line 1147
    .local v2, "isResetNeeded":Z
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1149
    :try_start_0
    const-string v3, "MtvOneSegRemoteService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending Message ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MtvOneSegRemoteService"

    const-string v4, "Dead Client Detected ..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1157
    const/4 v2, 0x1

    goto :goto_1

    .line 1160
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1162
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1165
    const-string v3, "MtvOneSegRemoteService"

    const-string v4, "Powering off tuner as no clients present !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-static {v3, v6, v6, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendUrgentSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 1167
    const-string v3, "MtvOneSegRemoteService"

    const-string v4, "Client is dead...resetting the service..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->getOneSegSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->ordinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->closeService(I)V

    .line 1169
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->deleteService()V

    .line 1170
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->resetService()V

    .line 1177
    :cond_1
    :goto_2
    return-void

    .line 1173
    :cond_2
    const-string v3, "MtvOneSegRemoteService"

    const-string v4, "One of the clients died...others still alive...not resetting the service..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public start(Landroid/broadcast/helper/types/MtvOneSegChannel;)Z
    .locals 3
    .param p1, "servInfo"    # Landroid/broadcast/helper/types/MtvOneSegChannel;

    .prologue
    const/4 v2, 0x0

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "bStart":Z
    const/16 v1, 0x72

    invoke-static {v1, v2, v2, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 690
    return v0
.end method

.method public startRecord(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "mRecUri"    # Ljava/lang/String;
    .param p2, "recLocation"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "bRecord":Z
    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, p2, v2, p1}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendUrgentSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 850
    return v0
.end method

.method public stopRecord()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "bRecord":Z
    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v3, v3, v2}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendUrgentSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 864
    return v0
.end method

.method public tunerPowerCtrl(Z)Z
    .locals 5
    .param p1, "bPowerOn"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x7d

    const/4 v2, 0x0

    .line 808
    const/4 v0, 0x0

    .line 813
    .local v0, "bTunerPowerCtrl":Z
    if-eqz p1, :cond_0

    .line 814
    const/4 v1, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    .line 817
    :goto_0
    return v0

    .line 816
    :cond_0
    invoke-static {v3, v2, v2, v4}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
