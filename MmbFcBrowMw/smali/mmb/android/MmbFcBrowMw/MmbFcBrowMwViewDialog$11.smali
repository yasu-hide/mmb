.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$11;
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


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$11;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$11;->val$aCbFunc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$11;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$11;->val$aCbFunc:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;IILjava/lang/String;)V

    .line 404
    return-void
.end method
