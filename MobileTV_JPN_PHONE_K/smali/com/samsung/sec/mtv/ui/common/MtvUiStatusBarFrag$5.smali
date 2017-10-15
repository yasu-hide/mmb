.class Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$5;
.super Ljava/lang/Object;
.source "MtvUiStatusBarFrag.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    .line 702
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/PopupMenu;

    .prologue
    const/4 v3, 0x0

    .line 705
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-static {v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->access$302(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;Z)Z

    .line 706
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$5;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 709
    .local v0, "mListener":Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    const/16 v1, 0xd1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 711
    .end local v0    # "mListener":Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :cond_0
    return-void
.end method
