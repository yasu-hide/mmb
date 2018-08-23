.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setDimChangeEvent()V
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
    .line 2631
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDimChange(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;ILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V
    .locals 10
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aVideoFrameInfo"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2639
    const/16 v2, 0x9

    .line 2640
    .local v2, "inttype":I
    const/4 v3, 0x0

    .line 2643
    .local v3, "surfaceflg":Z
    sparse-switch p2, :sswitch_data_0

    .line 2754
    :cond_0
    :goto_0
    return-void

    .line 2646
    :sswitch_0
    const/4 v2, 0x0

    .line 2681
    :cond_1
    :goto_1
    if-nez v3, :cond_0

    .line 2682
    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;-><init>()V

    .line 2684
    .local v0, "ainfo":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;
    if-eqz p3, :cond_2

    .line 2686
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcBaseWidth()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setVideoSourceWidth(J)V

    .line 2688
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcBaseHeight()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setVideoSourceHeight(J)V

    .line 2690
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcValidWidth()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setSrcClippingWidth(J)V

    .line 2692
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcValidHeight()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setSrcClippingHeight(J)V

    .line 2694
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcValidPosiX()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setSrcClippingPosX(J)V

    .line 2696
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcValidPosiY()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setSrcClippingPosY(J)V

    .line 2699
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getAspectRatio()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2713
    :goto_2
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getStereoViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 2729
    :cond_2
    :goto_3
    move v4, v2

    .line 2730
    .local v4, "type":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;ILcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2748
    .end local v0    # "ainfo":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;
    .end local v4    # "type":I
    :catch_0
    move-exception v1

    .line 2749
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2650
    .end local v1    # "ex":Ljava/lang/Exception;
    :sswitch_1
    const/4 v2, 0x1

    .line 2651
    goto :goto_1

    .line 2654
    :sswitch_2
    const/4 v2, 0x2

    .line 2655
    goto :goto_1

    .line 2658
    :sswitch_3
    const/4 v3, 0x1

    .line 2661
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$1100(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PAUSE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2666
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$9;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->drawLastFrame()V

    goto :goto_1

    .line 2702
    .restart local v0    # "ainfo":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;
    :pswitch_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setAspectRatio(I)V

    goto :goto_2

    .line 2706
    :pswitch_1
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setAspectRatio(I)V

    goto :goto_2

    .line 2716
    :pswitch_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setStereoViewType(I)V

    goto :goto_3

    .line 2721
    :pswitch_3
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->setStereoViewType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2643
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch

    .line 2699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2713
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
