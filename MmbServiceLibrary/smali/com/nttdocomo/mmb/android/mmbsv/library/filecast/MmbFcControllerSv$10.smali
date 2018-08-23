.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setErrorEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V
    .locals 0

    .prologue
    .line 2782
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 7
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2790
    sparse-switch p2, :sswitch_data_0

    .line 2922
    :goto_0
    return v6

    .line 2795
    :sswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V

    .line 2800
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->reset()V

    .line 2805
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$1200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2806
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V

    .line 2807
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V

    .line 2810
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->ERROR:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    .line 2816
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->restartService(Z)V

    .line 2825
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->notifyFatalError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2916
    :catch_0
    move-exception v1

    .line 2917
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2835
    .end local v1    # "ex":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getModuleState()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 2838
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mErrInfo:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2841
    :cond_1
    const/16 v2, 0x68

    if-ne v2, p2, :cond_3

    .line 2842
    const/4 v0, 0x0

    .line 2843
    .local v0, "errcode":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResultInfo:Ljava/util/Map;

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$1300(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2846
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V

    .line 2847
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V

    .line 2850
    :cond_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    .line 2852
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->playErrorTermExpired()V

    .line 2860
    :goto_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10$1;

    invoke-direct {v3, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2854
    .end local v0    # "errcode":I
    :cond_3
    const/4 v0, 0x1

    .line 2856
    .restart local v0    # "errcode":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResultInfo:Ljava/util/Map;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2891
    .end local v0    # "errcode":I
    :sswitch_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mErrInfo:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2895
    :sswitch_3
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10$2;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$10;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2790
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_3
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
    .end sparse-switch
.end method
