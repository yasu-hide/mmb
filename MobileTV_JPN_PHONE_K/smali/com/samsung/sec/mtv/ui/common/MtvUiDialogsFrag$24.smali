.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$24;
.super Ljava/lang/Object;
.source "MtvUiDialogsFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->createDialogByType(ILandroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$24;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 674
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$24;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "signal_alert_retry_exit"

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 676
    .local v0, "dlgInfoBundle":Landroid/os/Bundle;
    const-string v1, "dialogType"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$24;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "signal_alert_terminate"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 678
    return-void
.end method
