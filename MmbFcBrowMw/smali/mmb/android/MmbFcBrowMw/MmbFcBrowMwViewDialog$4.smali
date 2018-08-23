.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$4;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$4;->val$aCbFunc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$4;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$4;->val$aCbFunc:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 319
    return-void
.end method
