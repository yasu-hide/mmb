.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitPromptDialog(ILjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

.field final synthetic val$aCbFunc:I

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/widget/EditText;I)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;->val$input:Landroid/widget/EditText;

    iput p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;->val$aCbFunc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 396
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "inputStr":Ljava/lang/String;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;->val$aCbFunc:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;IILjava/lang/String;)V

    .line 398
    return-void
.end method
