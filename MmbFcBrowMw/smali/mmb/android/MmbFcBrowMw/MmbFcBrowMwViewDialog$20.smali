.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$20;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitFormResubmission(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$20;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "aDialog"    # Landroid/content/DialogInterface;
    .param p2, "aId"    # I

    .prologue
    .line 774
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$20;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$1300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->setResult(Z)V

    .line 775
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 776
    return-void
.end method
