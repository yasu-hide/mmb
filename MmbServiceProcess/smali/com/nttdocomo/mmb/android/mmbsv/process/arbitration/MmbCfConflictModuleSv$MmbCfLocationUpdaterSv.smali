.class Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;
.super Ljava/util/TimerTask;
.source "MmbCfConflictModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbCfLocationUpdaterSv"
.end annotation


# instance fields
.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;


# direct methods
.method private constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .param p2, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$1;

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 834
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 835
    .local v2, "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getForeignFlag()I

    move-result v1

    .line 836
    .local v1, "flag":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 837
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    .line 847
    .end local v1    # "flag":I
    .end local v2    # "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :goto_0
    return-void

    .line 839
    .restart local v1    # "flag":I
    .restart local v2    # "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_0
    const-string v3, "updateLocation is not executed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    .end local v1    # "flag":I
    .end local v2    # "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v0

    .line 842
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public start(JJ)V
    .locals 7
    .param p1, "aDelay"    # J
    .param p3, "aPeriod"    # J

    .prologue
    .line 797
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->cancel()Z

    .line 800
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->mTimer:Ljava/util/Timer;

    .line 801
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->mTimer:Ljava/util/Timer;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 805
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->mTimer:Ljava/util/Timer;

    .line 818
    :cond_0
    return-void
.end method
