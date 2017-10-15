.class public Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ErrorDialogFragment"


# instance fields
.field private myStringId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 301
    return-void
.end method

.method public static newInstance(I)Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;
    .locals 1
    .param p0, "myStringId"    # I

    .prologue
    .line 305
    new-instance v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;-><init>()V

    .line 306
    .local v0, "frag":Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;
    iput p0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->myStringId:I

    .line 307
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 322
    const-string v1, "myStringId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->myStringId:I

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 325
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701ec

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->myStringId:I

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070298

    new-instance v3, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 337
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    const-string v0, "myStringId"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ErrorDialogFragment;->myStringId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    return-void
.end method
