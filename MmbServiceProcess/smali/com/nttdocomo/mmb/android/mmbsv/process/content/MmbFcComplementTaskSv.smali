.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
.super Ljava/lang/Object;
.source "MmbFcComplementTaskSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFdtInstanceSavingStateSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairFdtSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbWaitingDecodeStateSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastDataComplementStateSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastFileComplementStateSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRepairSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplement;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    }
.end annotation


# instance fields
.field private mComplemenStatetLock:Ljava/lang/Object;

.field private mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

.field private final mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

.field private mCurrentMessage:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

.field private mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

.field private final mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mThread:Ljava/lang/Thread;

    .line 320
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    .line 325
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplemenStatetLock:Ljava/lang/Object;

    .line 344
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 345
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    .line 346
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 347
    return-void
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->clearMessage(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->isState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->setComplementState(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->isDecoding(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private clearMessage(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 8
    .param p1, "aType"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    new-array v7, v7, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .line 661
    .local v1, "array":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    move-object v0, v1

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 662
    .local v5, "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    move-result-object v6

    if-ne v6, p1, :cond_1

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 663
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

    move-result-object v6

    iget-object v2, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 664
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v5}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 668
    .end local v5    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :cond_0
    return-object v2

    .line 661
    .restart local v5    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private enterHandleMessage()V
    .locals 1

    .prologue
    .line 729
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 730
    return-void
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "aString1"    # Ljava/lang/String;
    .param p1, "aString2"    # Ljava/lang/String;

    .prologue
    .line 713
    if-nez p0, :cond_1

    .line 714
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 716
    :goto_0
    return v0

    .line 714
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 716
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private getAndCheckRepairInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)I
    .locals 17
    .param p1, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;

    .prologue
    .line 1074
    const/4 v13, 0x0

    .line 1075
    .local v13, "result":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 1076
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v9

    .line 1077
    .local v9, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 1078
    .local v8, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mIsCompleteOnly:Z

    .line 1079
    .local v11, "isCompleteOnly":Z
    iget-object v2, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 1080
    .local v2, "aCrid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    .line 1081
    .local v7, "aType":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 1084
    .local v4, "aCallback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v12, 0x0

    .line 1088
    .local v12, "repairInfo":Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    :try_start_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMissingPartsInfo(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1143
    if-nez v12, :cond_1

    .line 1144
    const-string v3, "repairInfo null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    const/4 v13, -0x1

    .line 1146
    invoke-virtual {v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->hasFdtInstance(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1147
    const v3, 0x7f040023

    invoke-virtual {v9, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1150
    :cond_0
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    invoke-direct {v5, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    move v14, v13

    .line 1218
    .end local v13    # "result":I
    .local v14, "result":I
    :goto_0
    return v14

    .line 1089
    .end local v14    # "result":I
    .restart local v13    # "result":I
    :catch_0
    move-exception v10

    .line 1090
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const v3, 0x7f040023

    invoke-virtual {v9, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1091
    throw v10

    .line 1159
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_1
    if-eqz v11, :cond_3

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    iget-object v5, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkRepairSize(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)I

    move-result v13

    .line 1166
    :goto_1
    if-eqz v13, :cond_7

    .line 1167
    const-string v3, "checkRepairSize resule[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v15

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    const/16 v3, -0xa

    if-ne v13, v3, :cond_4

    .line 1169
    const v3, 0x7f04001a

    invoke-virtual {v9, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1182
    :cond_2
    :goto_2
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    invoke-direct {v5, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    move v14, v13

    .line 1188
    .end local v13    # "result":I
    .restart local v14    # "result":I
    goto :goto_0

    .line 1163
    .end local v14    # "result":I
    .restart local v13    # "result":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    iget-object v5, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-virtual {v3, v12, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkRepairSize(Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)I

    move-result v13

    goto :goto_1

    .line 1171
    :cond_4
    const/16 v3, -0x12

    if-ne v13, v3, :cond_5

    .line 1172
    const v3, 0x7f040021

    invoke-virtual {v9, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_2

    .line 1174
    :cond_5
    const/16 v3, -0x2a

    if-ne v13, v3, :cond_6

    .line 1175
    const v3, 0x7f04001f

    invoke-virtual {v9, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_2

    .line 1177
    :cond_6
    const/4 v3, -0x1

    if-ne v13, v3, :cond_2

    .line 1178
    const v3, 0x7f040023

    invoke-virtual {v9, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_2

    .line 1192
    :cond_7
    if-nez v11, :cond_9

    .line 1194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    iget-object v5, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    invoke-virtual {v3, v5, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkThreshold(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1195
    const-string v3, "checkThreshold false"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    const/4 v6, 0x1

    .line 1198
    .local v6, "dispNotify":Z
    const/16 v3, 0xc

    if-ne v7, v3, :cond_8

    .line 1199
    const/4 v6, 0x0

    .line 1201
    :cond_8
    const/4 v13, -0x1

    .line 1202
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    invoke-direct {v5, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V

    move v14, v13

    .line 1208
    .end local v13    # "result":I
    .restart local v14    # "result":I
    goto/16 :goto_0

    .line 1213
    .end local v6    # "dispNotify":Z
    .end local v14    # "result":I
    .restart local v13    # "result":I
    :cond_9
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mRepairInfo:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    move v14, v13

    .line 1218
    .end local v13    # "result":I
    .restart local v14    # "result":I
    goto/16 :goto_0
.end method

.method private getComplementState()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;
    .locals 2

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplemenStatetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    monitor-exit v1

    return-object v0

    .line 1504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleMessage(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Z
    .locals 10
    .param p1, "aMessage"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .prologue
    .line 741
    const/4 v4, 0x1

    .line 742
    .local v4, "result":Z
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$1;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$process$content$MmbFcComplementTaskSv$MessageType:[I

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->getType()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 783
    :goto_0
    return v4

    .line 744
    :pswitch_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->getArgument()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;

    .line 746
    .local v0, "arg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->enterHandleMessage()V

    .line 747
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContents(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->leaveHandleMessage()V

    goto :goto_0

    .line 748
    :catch_0
    move-exception v3

    .line 750
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v2, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 751
    .local v2, "crid":Ljava/lang/String;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 752
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v5

    .line 754
    .local v5, "state":I
    packed-switch v5, :pswitch_data_1

    .line 764
    const-string v6, "state %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    :goto_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    const/4 v4, 0x0

    .line 771
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->leaveHandleMessage()V

    goto :goto_0

    .line 756
    :pswitch_1
    :try_start_2
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    .line 759
    :pswitch_2
    const/16 v6, 0x49

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    const/4 v9, -0x1

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    invoke-virtual {v1, v2, v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 771
    .end local v1    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "crid":Ljava/lang/String;
    .end local v3    # "err":Ljava/lang/Exception;
    .end local v5    # "state":I
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->leaveHandleMessage()V

    throw v6

    .line 775
    .end local v0    # "arg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;
    :pswitch_3
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->getArgument()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;

    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->handleRepairFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)Z

    move-result v4

    .line 776
    goto :goto_0

    .line 778
    :pswitch_4
    const/4 v4, 0x0

    .line 779
    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 754
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleRepairFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)Z
    .locals 12
    .param p1, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;

    .prologue
    const/4 v11, 0x1

    .line 3856
    const/4 v5, 0x1

    .line 3857
    .local v5, "result":Z
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 3858
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v3

    .line 3859
    .local v3, "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v4

    .line 3861
    .local v4, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v1, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 3864
    .local v1, "crid":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->enterHandleMessage()V

    .line 3867
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    .line 3868
    .local v7, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->hasFdtInstance(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3869
    const-string v8, "FDT instance exists."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3870
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v3, v1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtSuccess(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3902
    :goto_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->leaveHandleMessage()V

    .line 3908
    .end local v7    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :goto_1
    return v5

    .line 3872
    .restart local v7    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->changeStateExecuting(Ljava/lang/String;)V

    .line 3873
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3875
    .end local v7    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :catch_0
    move-exception v2

    .line 3876
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 3878
    invoke-virtual {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v6

    .line 3879
    .local v6, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    const-string v8, "state %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3880
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$1;->$SwitchMap$com$nttdocomo$mmb$android$mmbsv$process$content$MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv:[I

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->ordinal()I

    move-result v9

    aget v8, v8, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v8, :pswitch_data_0

    .line 3900
    :goto_2
    const/4 v5, 0x0

    .line 3902
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->leaveHandleMessage()V

    goto :goto_1

    .line 3883
    :pswitch_0
    :try_start_3
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    if-ne v8, v11, :cond_1

    .line 3885
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    .line 3887
    :cond_1
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v3, v1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3902
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v6    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :catchall_0
    move-exception v8

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->leaveHandleMessage()V

    throw v8

    .line 3890
    .restart local v2    # "err":Ljava/lang/Exception;
    .restart local v6    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :pswitch_1
    :try_start_4
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    if-ne v8, v11, :cond_2

    .line 3892
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    .line 3894
    :cond_2
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v3, v1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 3880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRepairIOExcpetion(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Ljava/io/IOException;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)V
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p3, "aException"    # Ljava/io/IOException;
    .param p4, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;

    .prologue
    const v9, 0x7f04001c

    const/4 v8, 0x0

    .line 825
    const/16 v2, 0x49

    .line 827
    .local v2, "state":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 828
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    .line 829
    .local v7, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v4, 0x0

    .line 830
    .local v4, "errorInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    instance-of v1, p3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    if-eqz v1, :cond_1

    move-object v6, p3

    .line 831
    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    .line 833
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    iget-object v4, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    .line 834
    iget v1, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    packed-switch v1, :pswitch_data_0

    .line 879
    const-string v1, "Terminated by unkwon reason."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    .end local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :goto_0
    invoke-virtual {v7, p1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 890
    invoke-virtual {v0, p1, v2, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    .line 895
    :goto_1
    return-void

    .line 836
    .restart local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :pswitch_0
    const-string v1, "Middle Fatal Exception."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    const v1, 0x7f04001e

    invoke-virtual {v7, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 841
    invoke-virtual {v0, p1, v2, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    .line 844
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    invoke-virtual {p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setError(Ljava/lang/Throwable;)V

    .line 845
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_1

    .line 851
    :pswitch_1
    const-string v1, "Canceled by user"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    const/4 v5, 0x0

    .line 853
    .local v5, "notify":Z
    iget v1, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 854
    const/4 v5, 0x1

    .line 856
    :cond_0
    const/16 v2, 0x4a

    move-object v1, p1

    move-object v3, p2

    .line 857
    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V

    goto :goto_1

    .line 860
    .end local v5    # "notify":Z
    :pswitch_2
    const-string v1, "Terminated by system."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 863
    :pswitch_3
    const-string v1, "Terminated by auto operation condition."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 867
    :pswitch_4
    const-string v1, "Terminated by http error."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 871
    :pswitch_5
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->executeTaskUpdateProgramInformation(Ljava/lang/String;)V

    .line 872
    const-string v1, "Terminated by http error 412:Precondition Failed."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    invoke-virtual {v7, p1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_1

    .line 876
    :pswitch_6
    const-string v1, "Terminated by io exception."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 883
    .end local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :cond_1
    const-string v1, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v8

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    .end local v4    # "errorInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    const/4 v1, -0x1

    invoke-direct {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    .restart local v4    # "errorInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleRepairIOExcpetionFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Ljava/io/IOException;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p3, "aException"    # Ljava/io/IOException;
    .param p4, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;

    .prologue
    const/4 v5, 0x0

    .line 4072
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v1

    .line 4075
    .local v1, "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    instance-of v3, p3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    if-eqz v3, :cond_1

    move-object v0, p3

    .line 4076
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    .line 4078
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    packed-switch v3, :pswitch_data_0

    .line 4113
    const-string v3, "Terminated by unkwon reason."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4119
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :goto_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    .line 4121
    .local v2, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isExistComplementFailedReason(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4122
    const v3, 0x7f04001c

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 4125
    :cond_0
    iget v3, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v1, p1, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4130
    .end local v2    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :goto_1
    return-void

    .line 4080
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :pswitch_0
    const-string v3, "Middle Fatal Exception."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4082
    iget v3, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v1, p1, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4085
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    invoke-virtual {p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setError(Ljava/lang/Throwable;)V

    .line 4086
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_1

    .line 4092
    :pswitch_1
    const-string v3, "Canceled by user"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4093
    iget v3, p4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v1, p1, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_1

    .line 4096
    :pswitch_2
    const-string v3, "Terminated by system."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4099
    :pswitch_3
    const-string v3, "Terminated by auto operation condition."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4103
    :pswitch_4
    const-string v3, "Terminated by http error."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4107
    :pswitch_5
    const-string v3, "Terminated by http error 412:Precondition Failed."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4110
    :pswitch_6
    const-string v3, "Terminated by io exception."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4117
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :cond_1
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4078
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private isDecoding(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1549
    const/4 v0, 0x0

    .line 1551
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementCtrl()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->getComplementProgress()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 1552
    const/4 v0, 0x1

    .line 1557
    :cond_0
    return v0
.end method

.method private isRepairTaskInQueue(Ljava/lang/String;)Z
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v5, 0x0

    .line 688
    .local v5, "result":Z
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    new-array v7, v7, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .line 689
    .local v1, "array":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    move-object v0, v1

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 690
    .local v4, "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    move-result-object v6

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    if-ne v6, v7, :cond_1

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 691
    const/4 v5, 0x1

    .line 698
    .end local v4    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :cond_0
    return v5

    .line 689
    .restart local v4    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isState(I)Z
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1480
    const/4 v0, 0x1

    .line 1482
    :cond_0
    return v0
.end method

.method private leaveHandleMessage()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->shutdown()V

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 799
    :cond_0
    return-void
.end method

.method private offerMessage(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)V
    .locals 1
    .param p1, "aMessage"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0

    .line 598
    :cond_0
    return-void
.end method

.method private pollNextMessage()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    .locals 2

    .prologue
    .line 636
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .line 637
    .local v0, "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .end local v0    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->INTERRUPT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;)V

    .line 640
    .restart local v0    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :cond_0
    return-object v0
.end method

.method private repairContents(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)V
    .locals 18
    .param p1, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 925
    const-string v4, "[%s] Repair Start"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v15

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementCtrl()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->setComplementProgress(I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    .line 931
    .local v2, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v14

    .line 932
    .local v14, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v3, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 934
    .local v3, "crid":Ljava/lang/String;
    const/4 v9, 0x0

    .line 935
    .local v9, "connectionErrorCount":I
    const/4 v13, 0x0

    .line 936
    .local v13, "retryErrorCount":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 937
    .local v5, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    const/4 v4, 0x5

    if-gt v9, v4, :cond_5

    const/4 v4, 0x5

    if-gt v13, v4, :cond_5

    .line 938
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->recycleCallBack()V

    .line 942
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    invoke-virtual {v4, v3, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 945
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->getAndCheckRepairInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 947
    move-object/from16 v0, p1

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_0

    .line 949
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1023
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v6, 0x63

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 1050
    :goto_1
    return-void

    .line 959
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsInner(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)I

    move-result v12

    .line 961
    .local v12, "result":I
    if-nez v12, :cond_7

    .line 963
    const-string v4, "[%s] Waitting noticeRepair"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v15

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    .line 967
    .local v8, "callBackResult":I
    const/16 v4, -0x2f

    if-ne v8, v4, :cond_3

    .line 968
    const/4 v4, 0x5

    if-ge v13, v4, :cond_2

    .line 969
    add-int/lit8 v13, v13, 0x1

    .line 1023
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v6, 0x63

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 1036
    .end local v8    # "callBackResult":I
    .end local v12    # "result":I
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMissingPartsInfo(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mRepairInfo:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1037
    :catch_0
    move-exception v10

    .line 1038
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const v4, 0x7f040023

    invoke-virtual {v14, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1039
    throw v10

    .line 971
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v8    # "callBackResult":I
    .restart local v12    # "result":I
    :cond_2
    :try_start_5
    const-string v4, "DECODE Error Retry Over!!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    const v4, 0x7f04001c

    invoke-virtual {v14, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 974
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 993
    .end local v8    # "callBackResult":I
    .end local v12    # "result":I
    :catch_1
    move-exception v10

    .line 994
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :try_start_6
    const-string v4, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v6, v15

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    iget-boolean v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_8

    const/4 v4, 0x5

    if-ge v9, v4, :cond_8

    .line 997
    const-wide/16 v16, 0x1388

    :try_start_7
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1001
    add-int/lit8 v9, v9, 0x1

    .line 1023
    :goto_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v6, 0x63

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 1026
    :catch_2
    move-exception v4

    goto :goto_2

    .line 976
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    .restart local v8    # "callBackResult":I
    .restart local v12    # "result":I
    :cond_3
    const/16 v4, -0xb

    if-ne v8, v4, :cond_6

    .line 977
    const/4 v7, 0x0

    .line 978
    .local v7, "notify":Z
    :try_start_9
    move-object/from16 v0, p1

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    const/16 v6, 0xb

    if-ne v4, v6, :cond_4

    .line 979
    const/4 v7, 0x1

    .line 981
    :cond_4
    const/16 v4, 0x4a

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    invoke-direct {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1023
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v6, 0x63

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 1044
    .end local v7    # "notify":Z
    .end local v8    # "callBackResult":I
    .end local v12    # "result":I
    :cond_5
    :goto_4
    const-string v4, "[%s] Repair End"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v15

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 986
    .restart local v8    # "callBackResult":I
    .restart local v12    # "result":I
    :cond_6
    :try_start_b
    const-string v4, "retryErrorCount[%d] connectionErrorCount[%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1023
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v6, 0x63

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_4

    .line 1026
    :catch_3
    move-exception v4

    goto :goto_4

    .line 1023
    .end local v8    # "callBackResult":I
    :cond_7
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v6, 0x63

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    .line 1026
    :catch_4
    move-exception v4

    goto :goto_4

    .line 998
    .end local v12    # "result":I
    .restart local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :catch_5
    move-exception v11

    .line 999
    .local v11, "e2":Ljava/lang/InterruptedException;
    :try_start_e
    const-string v4, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v6, v15

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1001
    add-int/lit8 v9, v9, 0x1

    .line 1002
    goto/16 :goto_3

    .line 1001
    .end local v11    # "e2":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    add-int/lit8 v9, v9, 0x1

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1021
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :catchall_1
    move-exception v4

    .line 1023
    :try_start_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v15, 0x63

    invoke-virtual {v6, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    .line 1031
    :goto_5
    throw v4

    .line 1004
    .restart local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :cond_8
    :try_start_11
    const-string v4, "mmbRetryFlg[%s] connectionErrorCount[%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-boolean v0, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v6, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v15

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    iget v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    const/4 v6, -0x6

    if-eq v4, v6, :cond_a

    iget-object v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    if-eqz v4, :cond_9

    iget-object v4, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbHttpRetCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isCrowding(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1009
    :cond_9
    const/4 v4, 0x4

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_a

    .line 1012
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    .line 1017
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v5, v10, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->handleRepairIOExcpetion(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Ljava/io/IOException;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1023
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->getState()I

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    const/16 v6, 0x63

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->changeState(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_4

    .line 1026
    :catch_6
    move-exception v4

    goto/16 :goto_4

    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :catch_7
    move-exception v6

    goto :goto_5

    .restart local v8    # "callBackResult":I
    .restart local v12    # "result":I
    :catch_8
    move-exception v4

    goto/16 :goto_2

    .restart local v7    # "notify":Z
    :catch_9
    move-exception v4

    goto/16 :goto_4

    .end local v7    # "notify":Z
    .end local v8    # "callBackResult":I
    .end local v12    # "result":I
    :catch_a
    move-exception v4

    goto/16 :goto_1
.end method

.method private repairContentsError(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;)I
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aResponseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;

    .prologue
    .line 1449
    iget-boolean v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->crowdingFlag:Z

    if-eqz v2, :cond_0

    .line 1451
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 1453
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v2

    iget v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->retryAfter:I

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    .line 1457
    .end local v0    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    const/16 v1, -0x14

    .line 1462
    .local v1, "result":I
    return v1
.end method

.method private repairContentsErrorFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;)V
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aResponseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;

    .prologue
    .line 4312
    iget-boolean v1, p3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->crowdingFlag:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 4314
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 4316
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    iget v2, p3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->retryAfter:I

    invoke-virtual {v1, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    .line 4323
    .end local v0    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    return-void
.end method

.method private repairContentsFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)V
    .locals 18
    .param p1, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3940
    const-string v14, "[%s] Repair FDT Start"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3943
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    .line 3944
    .local v5, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v9

    .line 3946
    .local v9, "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v6, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 3948
    .local v6, "crid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3949
    .local v4, "connectionErrorCount":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 3950
    .local v3, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    const/4 v14, 0x5

    if-gt v4, v14, :cond_2

    .line 3951
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->recycleCallBack()V

    .line 3955
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v14, v6, v15, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkCancelFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3956
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsInnerFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)I

    move-result v11

    .line 3958
    .local v11, "result":I
    if-nez v11, :cond_5

    .line 3960
    const-string v14, "[%s] Waitting noticeEntryFdtInstance"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3962
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I

    move-result v2

    .line 3964
    .local v2, "callBackResult":I
    sparse-switch v2, :sswitch_data_0

    .line 3980
    const-string v14, "connectionErrorCount[%d]"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3981
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v9, v6, v14, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3983
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 3984
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4025
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 4027
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v13

    .line 4028
    .local v13, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    .line 4029
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedHttpStatus(Ljava/lang/String;)I

    .line 4032
    .end local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->setComplementState(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    .line 4037
    .end local v2    # "callBackResult":I
    .end local v11    # "result":I
    :cond_2
    :goto_2
    const-string v14, "[%s] Repair FDT End"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4043
    return-void

    .line 3966
    .restart local v2    # "callBackResult":I
    .restart local v11    # "result":I
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v9, v6, v14, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtSuccess(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3968
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->deleteScheduleComplementFdt(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3994
    .end local v2    # "callBackResult":I
    .end local v11    # "result":I
    :catch_0
    move-exception v7

    .line 3995
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :try_start_2
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3996
    iget-boolean v14, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_7

    const/4 v14, 0x5

    if-ge v4, v14, :cond_7

    .line 3998
    const-wide/16 v14, 0x1388

    :try_start_3
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4002
    add-int/lit8 v4, v4, 0x1

    .line 4025
    :goto_3
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 4027
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v13

    .line 4028
    .restart local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    .line 4029
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedHttpStatus(Ljava/lang/String;)I

    .line 4032
    .end local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->setComplementState(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    goto/16 :goto_0

    .line 3971
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    .restart local v2    # "callBackResult":I
    .restart local v11    # "result":I
    :sswitch_1
    :try_start_4
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v9, v6, v14, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3973
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 3974
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 4025
    .end local v2    # "callBackResult":I
    .end local v11    # "result":I
    :catchall_0
    move-exception v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 4027
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v13

    .line 4028
    .restart local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    .line 4029
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedHttpStatus(Ljava/lang/String;)I

    .line 4032
    .end local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->setComplementState(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    throw v14

    .line 4025
    .restart local v11    # "result":I
    :cond_5
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 4027
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v13

    .line 4028
    .restart local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    .line 4029
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedHttpStatus(Ljava/lang/String;)I

    .line 4032
    .end local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->setComplementState(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    goto/16 :goto_2

    .line 3999
    .end local v11    # "result":I
    .restart local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    :catch_1
    move-exception v8

    .line 4000
    .local v8, "e2":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4002
    add-int/lit8 v4, v4, 0x1

    .line 4003
    goto :goto_3

    .line 4002
    .end local v8    # "e2":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v14

    add-int/lit8 v4, v4, 0x1

    :try_start_6
    throw v14

    .line 4005
    :cond_7
    const-string v14, "mmbRetryFlg[%s] connectionErrorCount[%d]"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-boolean v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4008
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v10

    .line 4011
    .local v10, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v10, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v12

    .line 4012
    .local v12, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 4013
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v12, v14, :cond_8

    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v12, v14, :cond_9

    .line 4016
    :cond_8
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    .line 4021
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v3, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->handleRepairIOExcpetionFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Ljava/io/IOException;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4025
    move-object/from16 v0, p1

    iget v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 4027
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v13

    .line 4028
    .restart local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    .line 4029
    invoke-virtual {v13, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedHttpStatus(Ljava/lang/String;)I

    .line 4032
    .end local v13    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->setComplementState(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V

    goto/16 :goto_2

    .line 3964
    :sswitch_data_0
    .sparse-switch
        -0xb -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private repairContentsInner(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;)I
    .locals 34
    .param p1, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v11

    .line 1247
    .local v11, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v28

    .line 1248
    .local v28, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 1249
    .local v5, "crid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 1253
    .local v9, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)V

    .line 1255
    .local v7, "requestInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mIsCompleteOnly:Z

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v7, v4, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->setRequest(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IZ)I

    move-result v24

    .line 1256
    .local v24, "result":I
    if-eqz v24, :cond_3

    .line 1257
    const-string v4, "setRequest false"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1258
    const/16 v4, -0x2c

    move/from16 v0, v24

    if-ne v4, v0, :cond_2

    .line 1259
    const v4, 0x7f04001f

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1264
    :cond_0
    :goto_0
    invoke-virtual {v11, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v27

    .line 1266
    .local v27, "state":I
    const/4 v4, 0x4

    move/from16 v0, v27

    if-ne v4, v0, :cond_1

    .line 1267
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    .line 1271
    :cond_1
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    const/4 v4, -0x1

    invoke-direct {v12, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    .line 1274
    .local v12, "errInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    const/16 v4, 0x49

    invoke-virtual {v11, v5, v4, v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    .line 1348
    .end local v12    # "errInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    .end local v24    # "result":I
    .end local v27    # "state":I
    :goto_1
    return v24

    .line 1260
    .restart local v24    # "result":I
    :cond_2
    const/16 v4, -0x2b

    move/from16 v0, v24

    if-ne v4, v0, :cond_0

    .line 1261
    const v4, 0x7f040024

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_0

    .line 1281
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mRepairInfo:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    if-nez v4, :cond_4

    .line 1282
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v6, "aArg.mRepairInfo null"

    invoke-direct {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1285
    :cond_4
    const/16 v23, 0x0

    .line 1286
    .local v23, "repairPartsCount":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mRepairInfo:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v10, v4, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    .local v10, "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_d

    aget-object v22, v10, v14

    .line 1287
    .local v22, "repairParts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    add-int/lit8 v23, v23, 0x1

    .line 1288
    if-eqz v22, :cond_5

    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    if-nez v4, :cond_6

    .line 1286
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1293
    :cond_6
    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1294
    iget-object v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strUri:Ljava/lang/String;

    .line 1299
    :goto_3
    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    array-length v0, v4

    move/from16 v18, v0

    .line 1300
    .local v18, "missingLength":I
    const/16 v20, 0x0

    .line 1301
    .local v20, "missingStart":I
    const/16 v17, 0x0

    .line 1302
    .local v17, "missingCount":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 1303
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1304
    .local v25, "sb":Ljava/lang/StringBuilder;
    const-string v26, "bytes="

    .line 1305
    .local v26, "separator":Ljava/lang/String;
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 1306
    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    aget-object v19, v4, v17

    .line 1308
    .local v19, "missingParts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 1309
    .local v15, "lastLength":I
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    move-object/from16 v0, v19

    iget-wide v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1311
    const-string v4, "-"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mIsCompleteOnly:Z

    if-nez v4, :cond_7

    .line 1314
    move-object/from16 v0, v19

    iget-wide v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    move-wide/from16 v32, v0

    add-long v30, v30, v32

    const-wide/16 v32, 0x1

    sub-long v30, v30, v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1316
    :cond_7
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v6, 0x2800

    if-lt v4, v6, :cond_a

    .line 1317
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1323
    .end local v15    # "lastLength":I
    .end local v19    # "missingParts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    :cond_8
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRange:Ljava/lang/String;

    .line 1324
    new-instance v8, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    invoke-direct {v8}, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;-><init>()V

    .line 1325
    .local v8, "repairOne":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    iput-object v4, v8, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    .line 1326
    sub-int v4, v17, v20

    new-array v4, v4, [Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    iput-object v4, v8, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    .line 1328
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    iget-object v4, v8, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    array-length v4, v4

    if-ge v13, v4, :cond_b

    .line 1329
    new-instance v21, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    invoke-direct/range {v21 .. v21}, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;-><init>()V

    .line 1330
    .local v21, "parts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    iget-object v4, v8, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    aput-object v21, v4, v13

    .line 1331
    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    add-int v6, v20, v13

    aget-object v4, v4, v6

    iget-wide v0, v4, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, v21

    iput-wide v0, v2, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    .line 1332
    move-object/from16 v0, v22

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    add-int v6, v20, v13

    aget-object v4, v4, v6

    iget-wide v0, v4, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, v21

    iput-wide v0, v2, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->offset:J

    .line 1328
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1297
    .end local v8    # "repairOne":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .end local v13    # "i":I
    .end local v17    # "missingCount":I
    .end local v18    # "missingLength":I
    .end local v20    # "missingStart":I
    .end local v21    # "parts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    .end local v26    # "separator":Ljava/lang/String;
    :cond_9
    iget-object v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->contentLocation:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strUri:Ljava/lang/String;

    goto/16 :goto_3

    .line 1320
    .restart local v15    # "lastLength":I
    .restart local v17    # "missingCount":I
    .restart local v18    # "missingLength":I
    .restart local v19    # "missingParts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .restart local v20    # "missingStart":I
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    .restart local v26    # "separator":Ljava/lang/String;
    :cond_a
    const-string v26, ","

    .line 1321
    add-int/lit8 v17, v17, 0x1

    .line 1322
    goto/16 :goto_5

    .line 1336
    .end local v15    # "lastLength":I
    .end local v19    # "missingParts":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .restart local v8    # "repairOne":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .restart local v13    # "i":I
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mRepairInfo:Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    iget-object v4, v4, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    array-length v4, v4

    move/from16 v0, v23

    if-ne v4, v0, :cond_c

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    .line 1338
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastFileComplementStateSv;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v4, v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbLastFileComplementStateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    .line 1340
    :cond_c
    move-object/from16 v0, p1

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mType:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsOneTimeRequest(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1341
    move/from16 v20, v17

    .line 1342
    goto/16 :goto_4

    .line 1348
    .end local v8    # "repairOne":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .end local v13    # "i":I
    .end local v17    # "missingCount":I
    .end local v18    # "missingLength":I
    .end local v20    # "missingStart":I
    .end local v22    # "repairParts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    .end local v26    # "separator":Ljava/lang/String;
    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_1
.end method

.method private repairContentsInnerFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;)I
    .locals 13
    .param p1, "aArg"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4160
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 4161
    .local v1, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v3

    .line 4163
    .local v3, "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    iget-object v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v2, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    .line 4164
    .local v2, "crid":Ljava/lang/String;
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 4167
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)V

    .line 4169
    .local v6, "requestInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;
    const/16 v5, 0xb

    .line 4170
    .local v5, "repairType":I
    iget v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 4171
    const/16 v5, 0xc

    .line 4173
    :cond_0
    iget-object v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    invoke-virtual {v6, v11, v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->setRequest(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IZ)I

    move-result v7

    .line 4174
    .local v7, "result":I
    if-eqz v7, :cond_5

    .line 4175
    const-string v11, "setRequest false"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v11, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4176
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v9

    .line 4177
    .local v9, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/16 v10, -0x2c

    if-ne v10, v7, :cond_4

    .line 4178
    const v10, 0x7f04001f

    invoke-virtual {v9, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 4185
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v4

    .line 4187
    .local v4, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v8

    .line 4188
    .local v8, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 4189
    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v8, v10, :cond_2

    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v8, v10, :cond_3

    .line 4192
    :cond_2
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    .line 4196
    :cond_3
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-virtual {v3, v2, v10, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4211
    .end local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v7    # "result":I
    .end local v8    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    .end local v9    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :goto_1
    return v7

    .line 4180
    .restart local v7    # "result":I
    .restart local v9    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_4
    const/16 v10, -0x2b

    if-ne v10, v7, :cond_1

    .line 4181
    const v10, 0x7f040024

    invoke-virtual {v9, v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_0

    .line 4204
    .end local v9    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_5
    iget-object v11, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strDir:Ljava/lang/String;

    const-string v12, "FDTInstance.xml"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strUri:Ljava/lang/String;

    .line 4205
    const-string v11, "bytes= 0-"

    iput-object v11, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;->strRange:Ljava/lang/String;

    .line 4206
    iget v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mType:I

    invoke-direct {p0, v2, v11, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsOneTimeRequestFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    move v7, v10

    .line 4211
    goto :goto_1
.end method

.method private repairContentsOneTimeRequest(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aRequestInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;
    .param p4, "aRepairParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    if-nez v0, :cond_0

    .line 1383
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 1386
    :cond_0
    const/4 v10, 0x0

    .line 1389
    .local v10, "responseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->getRepair(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Ljava/lang/String;ILmmb/android/MmbFcContMw/MmbFcContMwRepairParts;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1392
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->getConnection()Ljava/lang/String;

    move-result-object v6

    .line 1394
    .local v6, "connectionName":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v0, "Keep-Alive"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->shutdown()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 1400
    :cond_2
    if-eqz v10, :cond_5

    .line 1401
    iget-object v0, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnCode:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1402
    const-string v0, "returnCode[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnCode:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1403
    const/4 v7, -0x1

    .line 1404
    .local v7, "errCode":I
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    invoke-direct {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    .line 1405
    .local v8, "errInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    invoke-direct {p0, p1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsError(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;)I

    move-result v7

    .line 1406
    iget-object v0, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnCode:Ljava/lang/String;

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbHttpRetCode:Ljava/lang/String;

    .line 1407
    iget-object v0, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strErrorDetail:Ljava/lang/String;

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbHttpErrDetail:Ljava/lang/String;

    .line 1408
    iget-object v0, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnMessage:Ljava/lang/String;

    iput-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbRetMessage:Ljava/lang/String;

    .line 1409
    const/4 v9, -0x5

    .line 1410
    .local v9, "errorCause":I
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v0, v9, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    throw v0

    .line 1392
    .end local v6    # "connectionName":Ljava/lang/String;
    .end local v7    # "errCode":I
    .end local v8    # "errInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    .end local v9    # "errorCause":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->getConnection()Ljava/lang/String;

    move-result-object v6

    .line 1394
    .restart local v6    # "connectionName":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v1, "Keep-Alive"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1395
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->shutdown()V

    .line 1396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 1398
    :cond_4
    throw v0

    .line 1413
    :cond_5
    const/4 v7, -0x1

    .line 1414
    .restart local v7    # "errCode":I
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    throw v0

    .line 1420
    .end local v7    # "errCode":I
    :cond_6
    return-void
.end method

.method private repairContentsOneTimeRequestFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aRequestInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4243
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    if-nez v3, :cond_0

    .line 4244
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;)V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 4247
    :cond_0
    const/4 v2, 0x0

    .line 4250
    .local v2, "responseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v3, p3, p1, p2, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->getRepairFdt(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpRequestInfoSv;Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4253
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 4255
    .local v0, "connectionName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4256
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->shutdown()V

    .line 4257
    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 4261
    :cond_2
    if-eqz v2, :cond_5

    .line 4262
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnCode:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 4263
    const-string v3, "returnCode[%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;->strReturnCode:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4268
    invoke-direct {p0, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsErrorFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcHttpResponseInfoSv;)V

    .line 4269
    const/4 v1, -0x5

    .line 4270
    .local v1, "errCode":I
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v3, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    throw v3

    .line 4253
    .end local v0    # "connectionName":Ljava/lang/String;
    .end local v1    # "errCode":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 4255
    .restart local v0    # "connectionName":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4256
    :cond_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;->shutdown()V

    .line 4257
    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mHttpClient:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbFcNwHttpClientSv;

    .line 4259
    :cond_4
    throw v3

    .line 4273
    :cond_5
    const/4 v1, -0x1

    .line 4274
    .restart local v1    # "errCode":I
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v3, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    throw v3

    .line 4280
    .end local v1    # "errCode":I
    :cond_6
    return-void
.end method

.method private setComplementState(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;)V
    .locals 2
    .param p1, "aNewState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplemenStatetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1524
    :try_start_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mComplementState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    .line 1525
    monitor-exit v1

    .line 1529
    return-void

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private takeNextMessage()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    .locals 3

    .prologue
    .line 614
    const/4 v1, 0x0

    .line 616
    .local v1, "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .restart local v1    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :goto_0
    return-object v1

    .line 617
    .end local v1    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->INTERRUPT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;)V

    .restart local v1    # "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    goto :goto_0
.end method


# virtual methods
.method public canCancel(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1576
    const/4 v1, 0x0

    .line 1577
    .local v1, "isCancel":Z
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->isRepairTaskInQueue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1578
    const/4 v1, 0x1

    .line 1590
    :goto_0
    return v1

    .line 1580
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->getComplementState()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    move-result-object v0

    .line 1581
    .local v0, "comlementState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;
    if-eqz v0, :cond_1

    .line 1582
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;->canCancel()Z

    move-result v1

    goto :goto_0

    .line 1584
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->isDecoding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public canCancelFdt(Ljava/lang/String;)Z
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4345
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v1

    .line 4348
    .local v1, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    const/4 v3, 0x0

    .line 4351
    .local v3, "isCancel":Z
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v4

    .line 4352
    .local v4, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->NONE:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v4, v5, :cond_0

    .line 4353
    const/4 v3, 0x1

    .line 4356
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getActiveInfo()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v2

    .line 4357
    .local v2, "info":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-eqz v2, :cond_0

    .line 4358
    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4360
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->getComplementState()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;

    move-result-object v0

    .line 4361
    .local v0, "comlementState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;
    if-eqz v0, :cond_0

    .line 4363
    const/4 v3, 0x0

    .line 4372
    .end local v0    # "comlementState":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbComplementStateBaseSv;
    .end local v2    # "info":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_0
    return v3
.end method

.method cancelRepair(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 463
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplement;

    invoke-direct {v0, p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplement;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 465
    .local v0, "cancelComplementThread":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplement;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 468
    .local v2, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method cancelRepairFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 537
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;

    invoke-direct {v0, p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 538
    .local v0, "cancelThread":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRunCancelComplementFdt;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 541
    .local v2, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method repairContents(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I
    .param p3, "aRepairInfo"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    .param p4, "aIsCompleteOnly"    # Z
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 436
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 438
    .local v0, "arg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;)V

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->offerMessage(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)V

    .line 439
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 445
    return-void
.end method

.method repairContentsFdt(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 4
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 504
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;

    invoke-direct {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 506
    .local v0, "arg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->REPAIR_FDT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbArgument;)V

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->offerMessage(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)V

    .line 507
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbRepairFdtArgument;->mContentInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 516
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 566
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 567
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->takeNextMessage()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    move-result-object v0

    .line 568
    .local v0, "msg":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;
    :goto_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->getType()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    move-result-object v2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->EXIT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    if-eq v2, v3, :cond_3

    .line 569
    :goto_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->getType()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    move-result-object v2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->EXIT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;->getType()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    move-result-object v2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;->INTERRUPT:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MessageType;

    if-eq v2, v3, :cond_1

    .line 570
    :cond_0
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mCurrentMessage:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .line 571
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->handleMessage(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;)Z

    move-result v1

    .line 572
    .local v1, "success":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mCurrentMessage:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    .line 573
    if-nez v1, :cond_2

    .line 578
    .end local v1    # "success":Z
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->takeNextMessage()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    move-result-object v0

    goto :goto_0

    .line 576
    .restart local v1    # "success":Z
    :cond_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->pollNextMessage()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv$MmbMessage;

    move-result-object v0

    .line 577
    goto :goto_1

    .line 580
    .end local v1    # "success":Z
    :cond_3
    return-void
.end method

.method declared-synchronized startTask()V
    .locals 1

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mThread:Ljava/lang/Thread;

    .line 366
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    monitor-exit p0

    return-void
.end method
