.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$3;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 239
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$3;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0x1f5

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$3;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 240
    return-void
.end method
