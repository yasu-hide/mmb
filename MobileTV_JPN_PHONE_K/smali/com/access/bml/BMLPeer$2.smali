.class Lcom/access/bml/BMLPeer$2;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLPeer;->dtvControl_NotifyHaltPeer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLPeer;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLPeer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 517
    iget-object v0, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v0, v0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v1, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v1, v1, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v1, v1, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/access/bml/BMLView;->removeView(Landroid/view/View;)V

    .line 519
    iget-object v0, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v0, v0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    iget-object v1, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v1, v1, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v1}, Lcom/access/bml/BMLView;->getBitMapLeft()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v2, v2, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v2}, Lcom/access/bml/BMLView;->getBitMapTop()F

    move-result v2

    float-to-int v2, v2

    .line 524
    iget-object v3, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v3, v3, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v3}, Lcom/access/bml/BMLView;->getScreenWidth()I

    move-result v3

    iget-object v4, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v4, v4, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v4}, Lcom/access/bml/BMLView;->getScreenHeight()I

    move-result v4

    sget v5, Lcom/access/bml/BMLView;->mBgColor:I

    .line 523
    invoke-virtual/range {v0 .. v5}, Lcom/access/bml/BMLView;->fillRect(IIIII)V

    .line 525
    iget-object v0, p0, Lcom/access/bml/BMLPeer$2;->this$0:Lcom/access/bml/BMLPeer;

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mBMLView:Lcom/access/bml/BMLView;

    invoke-virtual {v0}, Lcom/access/bml/BMLView;->refreshScreen()V

    .line 526
    return-void
.end method
