.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$1;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onTabChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 745
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v0

    const/16 v1, 0xa9

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "channelguidelist"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$1;->this$1:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->access$1300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 750
    return-void
.end method
