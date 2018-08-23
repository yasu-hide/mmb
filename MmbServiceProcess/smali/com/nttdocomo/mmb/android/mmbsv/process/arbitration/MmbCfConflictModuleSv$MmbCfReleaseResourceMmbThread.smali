.class Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;
.super Ljava/lang/Object;
.source "MmbCfConflictModuleSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbCfReleaseResourceMmbThread"
.end annotation


# instance fields
.field private aResourceUserAfter:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

.field private mmbReleaseResourceSts:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)V
    .locals 1
    .param p2, "aResourceUser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .prologue
    .line 4142
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->aResourceUserAfter:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 4140
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->mmbReleaseResourceSts:I

    .line 4146
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->aResourceUserAfter:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 4150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 4166
    const/4 v3, 0x0

    .line 4170
    .local v3, "timeout":I
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    const/16 v5, 0xb

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1000(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;I)V

    .line 4172
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1100(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 4173
    const/16 v4, 0x32

    if-le v3, v4, :cond_3

    .line 4175
    const/4 v4, 0x1

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->mmbReleaseResourceSts:I

    .line 4177
    const-string v4, "run() - Tmm resource TimeOut. Tmm Process[%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1100(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4187
    :cond_0
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->mmbReleaseResourceSts:I

    if-nez v4, :cond_2

    .line 4190
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1200()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkTunerConflict(I)I

    move-result v0

    .line 4191
    .local v0, "checkTunerResult":I
    if-eqz v0, :cond_1

    const/16 v4, 0xc

    if-ne v0, v4, :cond_4

    .line 4195
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->aResourceUserAfter:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;I)V

    .line 4203
    .end local v0    # "checkTunerResult":I
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$802(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Ljava/lang/String;)Ljava/lang/String;

    .line 4208
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE_TMM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4209
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE_TMM"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4210
    const-string v4, "ReleaseResult"

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->mmbReleaseResourceSts:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4216
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$1400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4225
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 4180
    :cond_3
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4181
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 4182
    monitor-exit p0

    .line 4183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4182
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4217
    :catch_0
    move-exception v1

    .line 4219
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 4199
    .end local v1    # "err":Ljava/lang/Exception;
    .restart local v0    # "checkTunerResult":I
    :cond_4
    const/4 v4, 0x1

    :try_start_3
    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;->mmbReleaseResourceSts:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
