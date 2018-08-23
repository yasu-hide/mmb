.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;

.field final synthetic val$aPosition:I


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;I)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;->val$aPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 525
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;)I

    move-result v1

    const/4 v2, 0x1

    iget v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;->val$aPosition:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;III[Z)V

    .line 526
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 527
    return-void
.end method
