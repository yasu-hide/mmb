.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V
    .locals 0

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1481
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mRunnableUpdateTvFilesDb Start"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 1483
    .local v0, "mTempAppContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_2

    .line 1485
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRunnableUpdateTvFilesDb: Type["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]. If LOCAL runnable will be self Posted again in 1sec."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v1, v2, :cond_1

    .line 1488
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1489
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1494
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "tvfiles"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1499
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mRunnableUpdateTvFilesDb: mMtvAppPlaybackContext is null, Fix it by Self Posting if there is any issue.!!!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
