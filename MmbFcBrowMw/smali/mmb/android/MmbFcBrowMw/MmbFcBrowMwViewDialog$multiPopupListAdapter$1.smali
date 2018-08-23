.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;

.field final synthetic val$aPosition:I

.field final synthetic val$holder:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;ILmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;

    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->val$aPosition:I

    iput-object p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->val$holder:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 652
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;)[Z

    move-result-object v0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->val$aPosition:I

    aget-boolean v0, v0, v1

    if-ne v2, v0, :cond_0

    .line 653
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;)[Z

    move-result-object v0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->val$aPosition:I

    aput-boolean v3, v0, v1

    .line 654
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->val$holder:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 659
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;)[Z

    move-result-object v0

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->val$aPosition:I

    aput-boolean v2, v0, v1

    .line 657
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;->val$holder:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
