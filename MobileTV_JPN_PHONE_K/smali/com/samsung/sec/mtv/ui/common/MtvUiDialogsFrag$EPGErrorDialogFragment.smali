.class public Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiDialogsFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EPGErrorDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EPGErrorDialogFragment"


# instance fields
.field private myStringId:I

.field private myTitleID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 845
    return-void
.end method

.method public static newInstance(II)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;
    .locals 1
    .param p0, "myStringId"    # I
    .param p1, "myTitleID"    # I

    .prologue
    .line 849
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;-><init>()V

    .line 850
    .local v0, "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;
    iput p0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myStringId:I

    .line 851
    iput p1, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myTitleID:I

    .line 852
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f020073

    .line 866
    if-eqz p1, :cond_0

    .line 868
    const-string v1, "myStringId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myStringId:I

    .line 869
    const-string v1, "myTitleID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myTitleID:I

    .line 871
    :cond_0
    const/4 v0, 0x0

    .line 872
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myTitleID:I

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myStringId:I

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070298

    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 884
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 885
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0x100

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 892
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 893
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 858
    const-string v0, "myStringId"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myStringId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 859
    const-string v0, "myTitleID"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;->myTitleID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 861
    return-void
.end method
