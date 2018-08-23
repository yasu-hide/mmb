.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
.super Ljava/lang/Object;
.source "MmbFcContentsModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbCancelDownloadTerminationBaseSv"
.end annotation


# instance fields
.field private mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

.field protected mCrid:Ljava/lang/String;

.field private mReason:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;I)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aReason"    # I

    .prologue
    const/4 v0, 0x0

    .line 5015
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4995
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    .line 4997
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 5016
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    .line 5017
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 5018
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mReason:I

    .line 5019
    return-void
.end method


# virtual methods
.method public clearConflictStatus()V
    .locals 6

    .prologue
    .line 5110
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v2

    .line 5112
    .local v2, "state":I
    const/4 v1, -0x1

    .line 5114
    .local v1, "serviceType":I
    packed-switch v2, :pswitch_data_0

    .line 5124
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 5125
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getServiceIdFromMetadata(Ljava/lang/String;)I

    move-result v0

    .line 5126
    .local v0, "serviceId":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I

    .line 5131
    .end local v0    # "serviceId":I
    :cond_0
    return-void

    .line 5116
    :pswitch_0
    const v1, 0xad00

    .line 5117
    goto :goto_0

    .line 5119
    :pswitch_1
    const v1, 0xa900

    .line 5120
    goto :goto_0

    .line 5114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5055
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v1

    .line 5057
    .local v1, "state":I
    const/16 v3, -0x15

    if-ne v3, v1, :cond_1

    .line 5094
    :cond_0
    :goto_0
    return-void

    .line 5065
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 5069
    if-ne v6, v1, :cond_2

    .line 5070
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mReason:I

    invoke-virtual {v3, v4, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    .line 5073
    :cond_2
    const-string v3, "DownloadCancel CRID:%s Reason:%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    aput-object v5, v4, v7

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mReason:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5075
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseDownloadingCrid(Ljava/lang/String;)V

    .line 5077
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    const v5, 0x7f040004

    invoke-virtual {v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZ)V

    .line 5080
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCrid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 5082
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 5086
    .local v2, "stateList":[I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;

    move-result-object v0

    .line 5087
    .local v0, "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 5088
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifySignalLevelOff()V

    goto :goto_0

    .line 5082
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 1

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->mCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    return-object v0
.end method
