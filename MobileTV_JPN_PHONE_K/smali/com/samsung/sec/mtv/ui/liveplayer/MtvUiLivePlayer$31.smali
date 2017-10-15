.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0

    .prologue
    .line 5812
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5815
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "signal_alert_retry_exit"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5817
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5819
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "RunnableRemoveWeakSignalDialogue... removed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5820
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "signal_alert_retry_exit"

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 5823
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$31;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/16 v1, 0x102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->onFragEvent(ILjava/lang/Object;)V

    .line 5826
    :cond_0
    return-void
.end method
