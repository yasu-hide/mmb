.class Lcom/access/bml/BMLHandleCommandProc$3;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLHandleCommandProc;->ShowProgressPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLHandleCommandProc;

.field private final synthetic val$bShow:Z


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    iput-boolean p2, p0, Lcom/access/bml/BMLHandleCommandProc$3;->val$bShow:Z

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v5, 0x3c

    .line 144
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-boolean v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->val$bShow:Z

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    iget-object v4, v4, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/access/bml/BMLView;->Browser_GetRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 151
    .local v1, "outRect":Landroid/graphics/Rect;
    const/16 v3, 0x3c

    .line 152
    .local v3, "progress_width":I
    const/16 v2, 0x3c

    .line 153
    .local v2, "progress_height":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 154
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/lit8 v4, v4, -0x3c

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/lit8 v4, v4, -0x3c

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 156
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v6}, Lcom/access/bml/BMLHandleCommandProc;->access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 157
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v5

    iget-object v5, v5, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5, v0}, Lcom/access/bml/BMLView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 161
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "outRect":Landroid/graphics/Rect;
    .end local v2    # "progress_height":I
    .end local v3    # "progress_width":I
    :cond_2
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    iget-object v4, v4, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v5}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v5

    iget-object v5, v5, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Lcom/access/bml/BMLView;->removeView(Landroid/view/View;)V

    .line 163
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    iget-object v4, v4, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v4, p0, Lcom/access/bml/BMLHandleCommandProc$3;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v4}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/access/bml/BMLView;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0
.end method
