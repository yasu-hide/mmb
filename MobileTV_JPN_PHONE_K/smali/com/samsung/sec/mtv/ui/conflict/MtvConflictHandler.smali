.class public Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
.super Landroid/content/ContextWrapper;
.source "MtvConflictHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$4;,
        Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;,
        Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;
    }
.end annotation


# static fields
.field public static final ACTION_TUNER_RELEASE:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"

.field public static final INTENT_TUNER_RELEASE:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"

.field private static final MAX_TRIES:I = 0x5

.field private static final MESSAGE_ID_INT:[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

.field private static final TAG:Ljava/lang/String; = "MtvConflictHandler"

.field public static final TMM_PROCESS_NAME:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv.process"

.field private static final TMM_TUNER_RELEASE_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;


# instance fields
.field private assignTryCount:I

.field private isMmbServiceCloseReq:Z

.field private isMmbServiceConnected:Z

.field private isMmbServiceOpened:Z

.field private isProcessingConflict:Z

.field private isTunerResourceAssigned:Z

.field private mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

.field private mContext:Landroid/content/Context;

.field private mMBServiceListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

.field private myMsgHandler:Landroid/os/Handler;

.field private tunerStatusBroadcastReciever:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->values()[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->MESSAGE_ID_INT:[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE_TMM"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->TMM_TUNER_RELEASE_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .line 57
    const-string v0, "MtvConflictHandler"

    const-string v1, "MtvConflictHandler..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mContext:Landroid/content/Context;

    .line 61
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->myMsgHandler:Landroid/os/Handler;

    .line 62
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceCloseReq:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isProcessingConflict:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned:Z

    .line 67
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    .line 70
    iput v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    .line 71
    new-instance v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$1;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->tunerStatusBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$2;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->myMsgHandler:Landroid/os/Handler;

    .line 527
    new-instance v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$3;-><init>(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mMBServiceListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    .line 93
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->myMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->MESSAGE_ID_INT:[Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .prologue
    .line 24
    iget v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .prologue
    .line 24
    iget v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isProcessingConflict:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->unRegisterTunerReciever()V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceCloseReq:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mContext:Landroid/content/Context;

    if-eq v0, p0, :cond_2

    .line 176
    :cond_1
    const-string v0, "MtvConflictHandler"

    const-string v1, "Creating new MtvConflictHandler..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .line 181
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    goto :goto_0
.end method

.method private registerTunerReciever()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->tunerStatusBroadcastReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->TMM_TUNER_RELEASE_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictHandler:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    .line 190
    const-string v0, "MtvConflictHandler"

    const-string v1, "reset()..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v0, "MtvConflictHandler"

    const-string v1, "reset()... MMb Service Opened... But not Closed Yet ! Not Resetting the Instance"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unRegisterTunerReciever()V
    .locals 3

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->tunerStatusBroadcastReciever:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->tunerStatusBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkConflict()V
    .locals 6

    .prologue
    .line 352
    const-string v3, "MtvConflictHandler"

    const-string v4, "checkConflict() :: "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x0

    .line 357
    .local v1, "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_0

    .line 360
    const-string v3, "MtvConflictHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConflict() :: resourceUser getPackageName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v3, "MtvConflictHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkConflict() :: resourceUser getTmmStatus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->getTmmStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    if-eqz v1, :cond_2

    .line 381
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->getTmmStatus()I

    move-result v2

    .line 382
    .local v2, "tmmStatus":I
    if-nez v2, :cond_1

    .line 384
    const-string v3, "MtvConflictHandler"

    const-string v4, "Tmm is using the Tuner..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v3, "MtvConflictHandler"

    const-string v4, "Display ONE_SEG POPUP to user..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v3}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onConflictWithTmm()V

    .line 424
    .end local v2    # "tmmStatus":I
    :goto_1
    return-void

    .line 365
    :cond_0
    :try_start_1
    const-string v3, "MtvConflictHandler"

    const-string v4, "null resourceUser returned"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MtvConflictHandler"

    const-string v4, "checkConflict() :: RemoteException occured whyle performing getResourceUser..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "tmmStatus":I
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 409
    :goto_2
    :pswitch_0
    const-string v3, "MtvConflictHandler"

    const-string v4, "NOTTV is not using Tuner...  Assigning  Tuner Resource to ONE_SEG..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->handleAssignResource()V

    goto :goto_1

    .line 394
    :pswitch_1
    const-string v3, "MtvConflictHandler"

    const-string v4, "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_FILECASTING"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :pswitch_2
    const-string v3, "MtvConflictHandler"

    const-string v4, "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_META_MM"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 400
    :pswitch_3
    const-string v3, "MtvConflictHandler"

    const-string v4, "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_FC_COMPLEMENT"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 403
    :pswitch_4
    const-string v3, "MtvConflictHandler"

    const-string v4, "MmbFwTmmConstantsSv.TMM_CONFLICT_TYPE_NOT_ACTION"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 421
    .end local v2    # "tmmStatus":I
    :cond_2
    const-string v3, "MtvConflictHandler"

    const-string v4, "Not able to get User Status... "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v3}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onCommunicationError()V

    goto :goto_1

    .line 391
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public closeService()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 299
    const-string v5, "MtvConflictHandler"

    const-string v6, "closeService() :: "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :try_start_0
    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned:Z

    if-eqz v5, :cond_2

    .line 306
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 307
    .local v2, "mActiviyManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 309
    .local v4, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 311
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.nttdocomo.mmb.android.mmbsv.process"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->releaseResource(ILjava/lang/String;)V

    .line 318
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned:Z

    .line 319
    const-string v5, "MtvConflictHandler"

    const-string v6, "closeService() ::  releaseResource called... "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mActiviyManager":Landroid/app/ActivityManager;
    .end local v4    # "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    if-eqz v5, :cond_3

    .line 323
    const-string v5, "MtvConflictHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closeService() :: isMmbServiceConnected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    if-eqz v5, :cond_4

    .line 326
    const-string v5, "MtvConflictHandler"

    const-string v6, "closeService() :: calling MmbFwServiceContextSv.closeService..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->closeService()V

    .line 335
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    .line 336
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    .line 337
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceCloseReq:Z

    .line 348
    :cond_3
    :goto_0
    return-void

    .line 331
    :cond_4
    const-string v5, "MtvConflictHandler"

    const-string v6, "MmbFwServiceContextSv open Requested but not connected yet !!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceCloseReq:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned:Z

    .line 345
    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    .line 346
    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    goto :goto_0
.end method

.method public handleAssignResource()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 428
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isProcessingConflict:Z

    .line 429
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->registerTunerReciever()V

    .line 430
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;-><init>()V

    .line 433
    .local v2, "oneSegUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->setPackageName(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->setResourceId(I)V

    .line 435
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->setTmmStatus(I)V

    .line 440
    :try_start_0
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->assignResource(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 441
    .local v0, "assignStatus":I
    const-string v4, "MtvConflictHandler"

    const-string v5, "assignoResource called... Checking the status..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v4, "MtvConflictHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assignStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    const/4 v3, 0x0

    .line 448
    .local v3, "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    move-result-object v3

    .line 449
    if-eqz v3, :cond_0

    .line 451
    const-string v4, "MtvConflictHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after assign resource resourceUser getPackageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v4, "MtvConflictHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after assign resource resourceUser getTmmStatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->getTmmStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 512
    :try_start_2
    const-string v4, "MtvConflictHandler"

    const-string v5, "Unknown Return Value from assignResource dismissing the dialog..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onCommunicationError()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 525
    .end local v0    # "assignStatus":I
    .end local v3    # "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :goto_1
    return-void

    .line 456
    .restart local v0    # "assignStatus":I
    .restart local v3    # "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :cond_0
    :try_start_3
    const-string v4, "MtvConflictHandler"

    const-string v5, "null resourceUser returned"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "MtvConflictHandler"

    const-string v5, "RemoteException occured whyle performing getResourceUser..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 518
    .end local v0    # "assignStatus":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :catch_1
    move-exception v1

    .line 520
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 521
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->unRegisterTunerReciever()V

    .line 522
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onCommunicationError()V

    .line 523
    const-string v4, "MtvConflictHandler"

    const-string v5, "RemoteException While Assigning Resource..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 467
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "assignStatus":I
    .restart local v3    # "resourceUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :pswitch_0
    :try_start_5
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssignStarted()V

    .line 468
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssignProcessing()V

    .line 469
    const-string v4, "MtvConflictHandler"

    const-string v5, "Tuner Resource Release Started Successfully... Waiting for tuner_release_tmm Intent..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v4, "MtvConflictHandler"

    const-string v5, "Incrementing assignTryCount... Waiting for Tuner reource release Broadcast intent..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    goto :goto_1

    .line 474
    :pswitch_1
    const-string v4, "MtvConflictHandler"

    const-string v5, "Tuner Resource Release already running for some other application ... Will Check after sometime..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    .line 476
    iget v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_1

    .line 478
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceBusy(Z)V

    .line 479
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->myMsgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->myMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->HANDLE_ASSIGN_RESOURCE:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MESSAGE_ID;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 483
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isProcessingConflict:Z

    .line 484
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->unRegisterTunerReciever()V

    .line 485
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceBusy(Z)V

    .line 486
    const-string v4, "MtvConflictHandler"

    const-string v5, "assignResource reached MAX tries... Giving Up !..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v4, "MtvConflictHandler"

    const-string v5, "Resetting assignTryCount..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    goto/16 :goto_1

    .line 493
    :pswitch_2
    const-string v4, "MtvConflictHandler"

    const-string v5, "TMM_RESOURCE_ASSIGNED..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v4, "MtvConflictHandler"

    const-string v5, "Resetting assignTryCount..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->assignTryCount:I

    .line 505
    const-string v4, "MtvConflictHandler"

    const-string v5, "Tuner Resource is assigned to ONE-SEG..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isProcessingConflict:Z

    .line 507
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->unRegisterTunerReciever()V

    .line 508
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned:Z

    .line 509
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v4}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssigned()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 464
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isMmbServiceConnected()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    return v0
.end method

.method public isMmbServiceOpened()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    return v0
.end method

.method public isProcessingConflict()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isProcessingConflict:Z

    return v0
.end method

.method public isTunerResourceAssigned()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned:Z

    return v0
.end method

.method public openService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    const-string v1, "MtvConflictHandler"

    const-string v2, "openService() :: "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 260
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssigned()V

    .line 295
    :goto_0
    return-void

    .line 264
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceCloseReq:Z

    .line 267
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceConnected:Z

    if-eqz v1, :cond_3

    .line 269
    const-string v1, "MtvConflictHandler"

    const-string v2, "openService() :: isMmbServiceConnected"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isProcessingConflict:Z

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssignProcessing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onCommunicationError()V

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isTunerResourceAssigned:Z

    if-eqz v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-interface {v1}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;->onTunerResourceAssigned()V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->checkConflict()V

    goto :goto_0

    .line 277
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    if-eqz v1, :cond_4

    .line 279
    const-string v1, "MtvConflictHandler"

    const-string v2, "openService() :: isMmbServiceOpened "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "MtvConflictHandler"

    const-string v2, "openService() :: mmbService opened already but not connected yet/now!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_4
    const-string v1, "MtvConflictHandler"

    const-string v2, "openService() ::  service not opened... opening now..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->isMmbServiceOpened:Z

    .line 286
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mMBServiceListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->openService(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;)V
    .locals 2
    .param p1, "mListener"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    .prologue
    .line 200
    const-string v0, "MtvConflictHandler"

    const-string v1, "registerListener() ::"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    .line 202
    return-void
.end method

.method public unRegisterListener(Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;)V
    .locals 2
    .param p1, "mListener"    # Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    .prologue
    .line 206
    const-string v0, "MtvConflictHandler"

    const-string v1, "unRegisterListener() ::"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->mConflictListener:Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler$MtvConflictListener;

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, "MtvConflictHandler"

    const-string v1, "mismatch between current listener and the arguement ! Not unregistering current listener !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
