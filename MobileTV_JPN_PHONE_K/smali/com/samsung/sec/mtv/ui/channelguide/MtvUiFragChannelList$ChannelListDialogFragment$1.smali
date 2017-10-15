.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$1;
.super Ljava/lang/Object;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;)V
    .locals 0

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1808
    packed-switch p2, :pswitch_data_0

    .line 1817
    :goto_0
    return-void

    .line 1811
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ChannelListDialogFragment"

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1812
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->newInstance(I)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChannelListDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
