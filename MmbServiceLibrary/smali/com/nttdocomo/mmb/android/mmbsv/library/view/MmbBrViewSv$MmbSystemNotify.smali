.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;
.super Ljava/lang/Object;
.source "MmbBrViewSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbSystemNotify"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V
    .locals 0

    .prologue
    .line 2749
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 9
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2766
    if-nez p1, :cond_0

    .line 2767
    const-string v4, "MMBI_SVC"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "[MmbBrViewSv] Bad Argument"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2768
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 2773
    :cond_0
    :try_start_0
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2775
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$1;

    invoke-direct {v5, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2787
    :cond_1
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 2789
    .local v0, "BLUETOOTH_ACTION":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2791
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1600(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getUsbConnectState(Landroid/content/Intent;)I

    move-result v3

    .line 2794
    .local v3, "state":I
    if-eq v7, v3, :cond_3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1600(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isConnectedIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2796
    :cond_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1700(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    .line 2806
    .end local v3    # "state":I
    :cond_4
    :goto_0
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2808
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    .line 2810
    .local v2, "saveDevice":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    iget v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-ne v4, v7, :cond_5

    .line 2812
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$2;

    invoke-direct {v5, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2830
    .end local v0    # "BLUETOOTH_ACTION":Ljava/lang/String;
    .end local v2    # "saveDevice":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :cond_5
    :goto_1
    return-void

    .line 2798
    .restart local v0    # "BLUETOOTH_ACTION":Ljava/lang/String;
    .restart local v3    # "state":I
    :cond_6
    if-eq v6, v3, :cond_7

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1600(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2801
    :cond_7
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1800(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2823
    .end local v0    # "BLUETOOTH_ACTION":Ljava/lang/String;
    .end local v3    # "state":I
    :catch_0
    move-exception v1

    .line 2824
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MMBI_SVC"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "[MmbBrViewSv] "

    aput-object v6, v5, v8

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public notifyOnCreate()V
    .locals 0

    .prologue
    .line 2849
    return-void
.end method

.method public notifyOnDestroy()V
    .locals 5

    .prologue
    .line 2966
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$1300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2967
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->end()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2975
    :cond_0
    :goto_0
    return-void

    .line 2969
    :catch_0
    move-exception v0

    .line 2970
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]State Exception"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyOnPause()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2915
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$302(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2917
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->isPlayingAudio()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 2919
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2920
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    .line 2921
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2929
    :cond_0
    :goto_0
    return-void

    .line 2923
    :catch_0
    move-exception v0

    .line 2924
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "MMBI_SVC"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]State Exception"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyOnRestart()V
    .locals 0

    .prologue
    .line 2994
    return-void
.end method

.method public notifyOnResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2885
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$302(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2887
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 2888
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z

    .line 2889
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    .line 2890
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2898
    :cond_0
    :goto_0
    return-void

    .line 2892
    :catch_0
    move-exception v0

    .line 2893
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "MMBI_SVC"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv]State Exception"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyOnStart()V
    .locals 0

    .prologue
    .line 2868
    return-void
.end method

.method public notifyOnStop()V
    .locals 0

    .prologue
    .line 2948
    return-void
.end method
