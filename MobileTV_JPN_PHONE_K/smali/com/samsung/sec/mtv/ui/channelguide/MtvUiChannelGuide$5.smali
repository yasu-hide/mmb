.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$5;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
    .line 362
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$5;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 366
    return v1
.end method
