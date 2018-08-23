.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitAuthDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

.field final synthetic val$aCbFunc:I

.field final synthetic val$inputpassword:Landroid/widget/EditText;

.field final synthetic val$inputusername:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->val$inputusername:Landroid/widget/EditText;

    iput-object p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->val$inputpassword:Landroid/widget/EditText;

    iput p4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->val$aCbFunc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 303
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->val$inputusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "usernamestr":Ljava/lang/String;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->val$inputpassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "passwordstr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 307
    .local v1, "save":Z
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;->val$aCbFunc:I

    invoke-static {v3, v4, v2, v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 308
    return-void
.end method
