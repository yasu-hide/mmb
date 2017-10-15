.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$4;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 205
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$4;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$4;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$4;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "noAreaSet"

    sget-boolean v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSet:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setResult(ILandroid/content/Intent;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$4;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 212
    return-void
.end method
