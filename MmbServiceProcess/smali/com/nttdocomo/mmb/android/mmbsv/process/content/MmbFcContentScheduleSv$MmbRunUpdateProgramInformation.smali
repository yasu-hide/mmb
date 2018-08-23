.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;
.super Ljava/lang/Object;
.source "MmbFcContentScheduleSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbRunUpdateProgramInformation"
.end annotation


# instance fields
.field private mCrid:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Ljava/lang/String;)V
    .locals 1
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3471
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->mCrid:Ljava/lang/String;

    .line 3472
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->mCrid:Ljava/lang/String;

    .line 3473
    return-void
.end method

.method private reschAfterDownloadInterruption(Ljava/lang/String;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3515
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    .line 3518
    .local v1, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :try_start_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvFromAir()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3535
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-static {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Ljava/lang/String;)V

    .line 3540
    :goto_1
    return-void

    .line 3519
    :catch_0
    move-exception v0

    .line 3520
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3521
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcMetaEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setMmbSiMetadataEventListener(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;)V

    goto :goto_1

    .line 3524
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;
    :catch_1
    move-exception v0

    .line 3525
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3526
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catch_2
    move-exception v0

    .line 3527
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3528
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_3
    move-exception v0

    .line 3529
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3530
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_4
    move-exception v0

    .line 3531
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3532
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    :catch_5
    move-exception v0

    .line 3533
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3489
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->mCrid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;->reschAfterDownloadInterruption(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3494
    :goto_0
    return-void

    .line 3490
    :catch_0
    move-exception v0

    .line 3492
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
