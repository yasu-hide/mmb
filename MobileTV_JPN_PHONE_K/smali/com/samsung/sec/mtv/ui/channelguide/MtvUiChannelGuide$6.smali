.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$6;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->showPopupMenu()V
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
    .line 370
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$6;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/PopupMenu;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$6;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$402(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Z)Z

    .line 374
    return-void
.end method
