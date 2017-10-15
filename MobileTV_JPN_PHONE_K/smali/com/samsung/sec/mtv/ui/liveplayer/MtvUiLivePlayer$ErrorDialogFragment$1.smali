.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment$1;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 332
    const/4 p1, 0x0

    .line 333
    return-void
.end method
