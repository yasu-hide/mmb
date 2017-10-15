.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$1;
.super Ljava/lang/Object;
.source "MtvUiFragTVLinkList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->initDetails(Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 638
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$1;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 641
    :cond_0
    return-void
.end method
