.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->createDialog(I)V
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
    .line 189
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 197
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    const-class v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slotId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 201
    return-void
.end method
