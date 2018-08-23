.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$13;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$13;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "aDialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v6, 0x0

    .line 444
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$13;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 445
    .local v4, "decorview":Landroid/view/ViewGroup;
    if-nez v4, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 447
    .local v0, "childvg1":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 449
    .local v1, "childvg2":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 450
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 451
    .local v2, "childvg3":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 453
    .local v3, "childvg4":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 454
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method
