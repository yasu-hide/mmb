.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->onPlayerNotification(III)V
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
    .line 1028
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 1032
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "channelguidelist"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1033
    .local v0, "channelListFrag":Landroid/app/Fragment;
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v1

    const/16 v2, 0xa6

    const/4 v3, 0x0

    const-string v4, "channelguidelist"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1037
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->openChannel()V

    .line 1038
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 1039
    return-void
.end method
