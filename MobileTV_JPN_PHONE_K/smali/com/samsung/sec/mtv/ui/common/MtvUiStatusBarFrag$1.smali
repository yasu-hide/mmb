.class Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$1;
.super Ljava/lang/Object;
.source "MtvUiStatusBarFrag.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 136
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0xd1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 141
    :cond_0
    return v3
.end method
