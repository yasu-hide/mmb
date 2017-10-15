.class public Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiSettingsDialogFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemCardErrFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MemCardErrFragment"


# instance fields
.field private messageStringId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->messageStringId:I

    .line 617
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageStringId"    # I

    .prologue
    .line 619
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 615
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->messageStringId:I

    .line 620
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->messageStringId:I

    .line 621
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 626
    if-eqz p1, :cond_0

    .line 628
    const-string v0, "messageStringId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->messageStringId:I

    .line 630
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 634
    const-string v0, ""

    .line 635
    .local v0, "messageString":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->messageStringId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 636
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->messageStringId:I

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070276

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070298

    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 648
    const-string v0, "messageStringId"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;->messageStringId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 650
    return-void
.end method
