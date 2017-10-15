.class Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;
.super Ljava/lang/Object;
.source "MtvBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 264
    const-string v1, "MtvBaseActivity"

    const-string v2, "mRunnableUpdateTvFilesDb Start"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 266
    .local v0, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_1

    .line 268
    const-string v1, "MtvBaseActivity"

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

    .line 269
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v1, v2, :cond_0

    .line 271
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mBaseActivityhandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->mBaseActivityhandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$UpdateDBRunnable;

    invoke-direct {v2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity$UpdateDBRunnable;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 281
    :cond_1
    const-string v1, "MtvBaseActivity"

    const-string v2, "mRunnableUpdateTvFilesDb: mMtvAppPlaybackContext is null, Fix it by Self Posting if there is any issue.!!!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
