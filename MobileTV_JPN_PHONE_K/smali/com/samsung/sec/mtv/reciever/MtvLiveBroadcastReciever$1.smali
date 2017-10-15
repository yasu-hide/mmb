.class Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;
.super Ljava/lang/Object;
.source "MtvLiveBroadcastReciever.java"

# interfaces
.implements Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->initializeAndRegisterScoverstateListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 8
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    const-string v4, "MtvLiveBroadcastReciever"

    const-string v5, "onCoverStateChanged"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v4, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$302(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    .line 113
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v4}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$400(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v4

    if-nez v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v6, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$402(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v4}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$300(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-ne v4, v2, :cond_3

    move v0, v2

    .line 117
    .local v0, "isSViewCoverOpened":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v4}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$400(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    if-nez v0, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSViewCoverClosed(Z)V

    .line 118
    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v4}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$500(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/android/sdk/cover/Scover;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/cover/Scover;->isFeatureEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v4}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$500(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/android/sdk/cover/Scover;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/cover/Scover;->isFeatureEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-static {v4}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->access$500(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/android/sdk/cover/Scover;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/cover/Scover;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    :cond_1
    if-eqz v0, :cond_5

    .line 121
    const-string v2, "MtvLiveBroadcastReciever"

    const-string v3, "MTVAPP_ANDROID_SERVICE_SCOVER_OPEN"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyTopListener(ILandroid/content/Intent;)V

    .line 135
    :cond_2
    :goto_2
    return-void

    .end local v0    # "isSViewCoverOpened":Z
    :cond_3
    move v0, v3

    .line 116
    goto :goto_0

    .restart local v0    # "isSViewCoverOpened":Z
    :cond_4
    move v4, v3

    .line 117
    goto :goto_1

    .line 124
    :cond_5
    const-string v2, "MtvLiveBroadcastReciever"

    const-string v4, "MTVAPP_ANDROID_SERVICE_SCOVER_CLOSE"

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v7}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "scoverIntent":Landroid/content/Intent;
    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;->this$0:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v2, v1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method
