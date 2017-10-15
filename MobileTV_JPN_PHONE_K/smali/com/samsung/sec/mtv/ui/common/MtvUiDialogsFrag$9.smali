.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;
.super Ljava/lang/Object;
.source "MtvUiDialogsFrag.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$renameButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->val$renameButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$302(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->val$renameButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->val$renameButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->val$renameButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;->val$renameButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 385
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 381
    return-void
.end method
