.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$4;
.super Ljava/lang/Object;
.source "MmbStControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->callRestartService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)V
    .locals 0

    .prologue
    .line 3263
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3267
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv$4;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 3270
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->restartService(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3275
    :goto_0
    return-void

    .line 3271
    :catch_0
    move-exception v0

    .line 3273
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v2, "ServiceConnectionException error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
