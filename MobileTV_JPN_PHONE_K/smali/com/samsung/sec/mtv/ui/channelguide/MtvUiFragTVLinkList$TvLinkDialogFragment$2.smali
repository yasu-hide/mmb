.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$2;
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
    .line 365
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 367
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 368
    return-void
.end method
