.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;
.super Ljava/lang/Object;
.source "MtvUiSettingsDialogFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "itemPosition"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 462
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$200()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 578
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$200()I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 579
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 580
    :cond_0
    :goto_1
    return-void

    .line 465
    :pswitch_1
    if-nez p2, :cond_1

    .line 466
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setCaptionEnabled(Z)V

    .line 469
    :goto_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v3

    const/16 v4, 0xca

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setCaptionEnabled(Z)V

    goto :goto_2

    .line 472
    :pswitch_2
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    .line 473
    .local v1, "mPBContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    const/4 v2, 0x0

    .line 474
    .local v2, "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    if-eqz v1, :cond_2

    .line 476
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 477
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v2

    .line 479
    :cond_2
    if-nez v2, :cond_3

    .line 481
    const-string v3, "SettingsPopUpDialogFragment"

    const-string v4, "Failure in obtaining Video Control Component !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :cond_3
    if-nez p2, :cond_4

    .line 486
    const-string v3, "SettingsPopUpDialogFragment"

    const-string v4, "frame interpolation enabled ! ~ "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-interface {v2, v5}, Landroid/broadcast/IMtvOneSegVideoControl;->setFrameRateChange(I)Z

    .line 488
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setFrameIPEnabled(Z)V

    goto :goto_0

    .line 492
    :cond_4
    const-string v3, "SettingsPopUpDialogFragment"

    const-string v4, "frame interpolation disabled ! ~ "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-interface {v2, v8}, Landroid/broadcast/IMtvOneSegVideoControl;->setFrameRateChange(I)Z

    .line 494
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setFrameIPEnabled(Z)V

    goto/16 :goto_0

    .line 498
    .end local v1    # "mPBContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .end local v2    # "mVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$602(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;I)I

    .line 499
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v3

    invoke-virtual {v3, p2, v8}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEffect(IZ)I

    goto/16 :goto_0

    .line 502
    :pswitch_4
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 504
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMode(I)I

    .line 505
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAudioLanguage(I)V

    goto/16 :goto_0

    .line 508
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMode(I)I

    .line 509
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAudioLanguage(I)V

    goto/16 :goto_0

    .line 512
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMode(I)I

    .line 513
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAudioLanguage(I)V

    goto/16 :goto_0

    .line 542
    :pswitch_8
    if-nez p2, :cond_5

    .line 543
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSaveToStorage(I)V

    goto/16 :goto_0

    .line 546
    :cond_5
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v3

    if-nez v3, :cond_6

    .line 547
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;

    const v3, 0x7f070279

    invoke-direct {v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;-><init>(I)V

    .line 548
    .local v0, "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "MemCardErrFragment"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    .end local v0    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    :cond_6
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v4

    const-wide/32 v6, 0x204000

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    .line 551
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;

    const v3, 0x7f070277

    invoke-direct {v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;-><init>(I)V

    .line 552
    .restart local v0    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "MemCardErrFragment"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v0    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
    :cond_7
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSaveToStorage(I)V

    goto/16 :goto_0

    .line 559
    :pswitch_9
    if-nez p2, :cond_8

    .line 561
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAntennaOnOff(I)V

    .line 562
    const-string v3, "SettingsPopUpDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch Antenna "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 568
    :cond_8
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAntennaOnOff(I)V

    .line 569
    const-string v3, "SettingsPopUpDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch Antenna "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 502
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
