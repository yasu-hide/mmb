.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;
.super Ljava/lang/Object;
.source "MmbBrViewSv.java"

# interfaces
.implements Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbMwOnEventOccurred"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V
    .locals 0

    .prologue
    .line 2431
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterFullScreen()V
    .locals 2

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2461
    return-void
.end method

.method public onError(I)V
    .locals 6
    .param p1, "aError"    # I

    .prologue
    const/4 v5, 0x0

    .line 2557
    move v0, p1

    .line 2559
    .local v0, "errorcode":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2561
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$4;

    invoke-direct {v3, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2576
    :goto_0
    return-void

    .line 2570
    :catch_0
    move-exception v1

    .line 2571
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "MMBI_SVC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv]onError Exception"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onExitFullScreen()V
    .locals 2

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2491
    return-void
.end method

.method public onInitialized()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2593
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    .line 2595
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$802(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2598
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 2603
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->layout(IIII)V

    .line 2609
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$5;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2624
    :goto_0
    return-void

    .line 2618
    :catch_0
    move-exception v0

    .line 2619
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MMBI_SVC"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]onInitialized Exception"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onLoadComplete(Ljava/lang/String;)V
    .locals 6
    .param p1, "aUri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2642
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2676
    :goto_0
    return-void

    .line 2649
    :cond_0
    move-object v1, p1

    .line 2651
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2653
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1500(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;I)V

    .line 2655
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$6;

    invoke-direct {v3, p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2665
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1402(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2669
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2670
    .end local v1    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2671
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MMBI_SVC"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv]onLoadComplete Exception"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayingAudio(Z)V
    .locals 6
    .param p1, "aFlg"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2509
    move v1, p1

    .line 2512
    .local v1, "flg":Z
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2513
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2515
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2516
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    .line 2517
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)V

    .line 2525
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$3;

    invoke-direct {v3, p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2540
    :goto_1
    return-void

    .line 2519
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2520
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2521
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    .line 2522
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2534
    :catch_0
    move-exception v0

    .line 2535
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MMBI_SVC"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv]onPlayingAudio Exception"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onUnhandledUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aMimeType"    # Ljava/lang/String;

    .prologue
    .line 2694
    move-object v1, p1

    .line 2695
    .local v1, "uri":Ljava/lang/String;
    move-object v0, p2

    .line 2696
    .local v0, "mimetype":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$7;

    invoke-direct {v3, p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$7;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2709
    return-void
.end method

.method public onVideoDimChange(I)V
    .locals 3
    .param p1, "aDimInfo"    # I

    .prologue
    .line 2726
    move v0, p1

    .line 2727
    .local v0, "dimtype":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$8;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred$8;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2740
    return-void
.end method
