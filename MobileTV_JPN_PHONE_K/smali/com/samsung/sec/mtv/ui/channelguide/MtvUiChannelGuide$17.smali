.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;
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
    .line 1328
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    iput p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1330
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1331
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    move-result-object v1

    const/16 v2, 0x9b

    iget v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;->val$extra:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "channelguidelist"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1334
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 1336
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v0, "scoverIntent":Landroid/content/Intent;
    const-string v1, "coverOpen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1339
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v1, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->sendBroadcast(Landroid/content/Intent;)V

    .line 1341
    .end local v0    # "scoverIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
