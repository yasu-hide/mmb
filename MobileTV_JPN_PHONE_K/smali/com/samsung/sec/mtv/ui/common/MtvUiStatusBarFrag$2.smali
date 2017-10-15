.class Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;
.super Ljava/lang/Object;
.source "MtvUiStatusBarFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;
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
    .line 616
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 618
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "Mute Volume onClick:..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    .line 620
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0xd6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 621
    return-void
.end method
