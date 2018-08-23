.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$14;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitSinglePopupList([Ljava/lang/String;[Z[ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

.field final synthetic val$aUserData:I


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$14;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$14;->val$aUserData:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "aDialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$14;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$14;->val$aUserData:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;III[Z)V

    .line 462
    return-void
.end method
