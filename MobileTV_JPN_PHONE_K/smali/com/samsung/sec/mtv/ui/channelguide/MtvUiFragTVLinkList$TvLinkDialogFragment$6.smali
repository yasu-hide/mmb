.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$6;
.super Ljava/lang/Object;
.source "MtvUiFragTVLinkList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->createDialog(IILcom/samsung/sec/mtv/provider/MtvCProBMInfo;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$6;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 420
    .local v0, "bDelTvLink":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->access$302(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 421
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->access$400()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 422
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->access$400()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->access$300()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$6;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getID()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->deleteTvLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z

    move-result v0

    .line 425
    :goto_0
    if-nez v0, :cond_0

    .line 426
    const-string v1, "TvLinkDialogFragment"

    const-string v2, "Delete TV link failed"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    return-void

    .line 424
    :cond_1
    const-string v1, "TvLinkDialogFragment"

    const-string v2, "mMtvPlayerOneSeg handle is null"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
