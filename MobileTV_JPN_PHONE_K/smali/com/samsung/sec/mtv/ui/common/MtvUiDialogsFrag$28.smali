.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$28;
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
    .line 732
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$28;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 734
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 735
    const/4 p1, 0x0

    .line 736
    return-void
.end method
