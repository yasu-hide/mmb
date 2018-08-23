.class Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;
.super Ljava/lang/Object;
.source "MmbStRecordingControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbStRecordingReschAfterRecInterruption"
.end annotation


# instance fields
.field private mCrid:Ljava/lang/String;

.field private mSchedule:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v0, 0x0

    .line 1712
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->mCrid:Ljava/lang/String;

    .line 1698
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->mSchedule:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 1716
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->mCrid:Ljava/lang/String;

    .line 1717
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->mSchedule:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 1721
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1742
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    .line 1745
    .local v1, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :try_start_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvFromAir()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1756
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->mCrid:Ljava/lang/String;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->mSchedule:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-static {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1764
    :goto_1
    return-void

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv$MmbStRecordingReschAfterRecInterruption;->mCrid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingMetaEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setMmbSiMetadataEventListener(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;)V

    goto :goto_1

    .line 1751
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;
    :catch_1
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1757
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1758
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
