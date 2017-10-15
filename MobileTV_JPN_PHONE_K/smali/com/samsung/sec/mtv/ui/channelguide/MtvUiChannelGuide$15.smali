.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$15;
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

.field final synthetic val$extra:I


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$15;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    iput p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$15;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1288
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1289
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v0

    const/16 v1, 0x98

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$15;->val$extra:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "channelguidelist"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$15;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 1293
    return-void
.end method
