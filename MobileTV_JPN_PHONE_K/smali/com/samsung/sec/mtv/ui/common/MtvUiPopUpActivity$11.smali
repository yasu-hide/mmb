.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;
.super Ljava/lang/Object;
.source "MtvUiPopUpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->createPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 385
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701e0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->hasExternalAntenna()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0701e2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070298

    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$11;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 394
    .local v0, "alert_dialog":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 396
    return-void

    .line 385
    .end local v0    # "alert_dialog":Landroid/app/AlertDialog;
    :cond_0
    const v1, 0x7f0701e1

    goto :goto_0
.end method
