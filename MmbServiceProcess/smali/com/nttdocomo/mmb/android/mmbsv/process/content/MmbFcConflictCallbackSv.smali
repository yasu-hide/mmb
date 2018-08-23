.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;
.super Ljava/lang/Object;
.source "MmbFcConflictCallbackSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 2
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 80
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->processCancelRequest(I)V

    return-void
.end method

.method private cancelAllDownloads()V
    .locals 7

    .prologue
    .line 187
    const/4 v6, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 191
    .local v5, "processTypes":[I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 192
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 194
    .local v1, "contentUtil":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->toAdjustArbitration()V

    .line 195
    invoke-virtual {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, "downdingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 209
    :cond_0
    return-void

    .line 203
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, "crid":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->processCancel(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private processCancel(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 234
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelDownload(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 235
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 237
    const-string v2, "State Error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v3, "State Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_0
    return-void
.end method

.method private processCancelRequest(I)V
    .locals 4
    .param p1, "aErrorCode"    # I

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 161
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Argument Error"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->cancelAllDownloads()V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 254
    .local v0, "b":Landroid/os/Binder;
    return-object v0
.end method

.method public onFinishFunctionCallback(I)V
    .locals 3
    .param p1, "aErrorCode"    # I

    .prologue
    .line 107
    move v0, p1

    .line 108
    .local v0, "errCode":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv$1;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcConflictCallbackSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 280
    return-void
.end method
