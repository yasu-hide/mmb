.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;
.super Ljava/util/TimerTask;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFwSleepControlTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0

    .prologue
    .line 3238
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 3245
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 3260
    const-wide/32 v8, 0x1d4c0

    .line 3261
    .local v8, "wakeupValue":J
    const-wide/32 v2, 0xea60

    .line 3262
    .local v2, "monitorTimeout":J
    const/4 v1, 0x0

    .line 3263
    .local v1, "recState":Z
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3265
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->getMmbStRecordingCurrentState(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v4

    .line 3267
    .local v4, "recStateList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 3268
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    .line 3269
    .local v6, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;
    iget v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;->mmbState:I

    if-eqz v7, :cond_0

    .line 3270
    const/4 v1, 0x1

    .line 3271
    const-wide/32 v8, 0x1d4c0

    .line 3272
    const-wide/32 v2, 0xea60

    .line 3279
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "recStateList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;"
    .end local v6    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;
    :cond_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadComplementState()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v1, :cond_3

    .line 3284
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v5

    .line 3287
    .local v5, "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    invoke-virtual {v5, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->wakeupDevice(J)V

    .line 3289
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwSleepControlTimerAccess;->registTimer(J)V

    .line 3294
    .end local v5    # "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    :cond_3
    return-void
.end method
