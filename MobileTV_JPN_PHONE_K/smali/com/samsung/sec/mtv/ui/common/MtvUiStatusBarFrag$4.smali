.class Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$4;
.super Ljava/lang/Object;
.source "MtvUiStatusBarFrag.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->showPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 690
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 698
    :goto_0
    return v2

    .line 696
    :cond_0
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "Activity NULL"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
