.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitMultiPopupList(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

.field final synthetic val$aPopup:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

.field final synthetic val$aUserData:I


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;->val$aUserData:I

    iput-object p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;->val$aPopup:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;->val$aUserData:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;->val$aPopup:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getItemSelections()[Z

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;III[Z)V

    .line 562
    return-void
.end method
