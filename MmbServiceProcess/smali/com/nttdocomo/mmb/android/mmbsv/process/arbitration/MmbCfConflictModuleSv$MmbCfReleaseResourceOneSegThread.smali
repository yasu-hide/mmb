.class Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;
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
    name = "MmbCfReleaseResourceOneSegThread"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Ljava/lang/String;)V
    .locals 1
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 4082
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;->packageName:Ljava/lang/String;

    .line 4086
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;->packageName:Ljava/lang/String;

    .line 4090
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4106
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 4108
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4113
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->access$902(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;I)I

    .line 4114
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->releaseResource(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4124
    :cond_0
    :goto_0
    return-void

    .line 4116
    :catch_0
    move-exception v0

    .line 4118
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
