.class public Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;
.super Ljava/lang/Object;
.source "MtvUiGenericPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ControlAnimationRunnable"
.end annotation


# instance fields
.field private isEnable:Z

.field private isRotating:Z

.field private mStrAnimation:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;


# direct methods
.method protected constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 361
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isRotating:Z

    .line 362
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isEnable:Z

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->mStrAnimation:Ljava/lang/String;

    .line 364
    const-string v0, "MtvUiGenericPlayer"

    const-string v1, "ControlAnimationRunnable..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;
    .param p1, "x1"    # Z

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->setAnimationEnable(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->setAnimationText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->postAnimationToRunInUIThread()V

    return-void
.end method

.method private controlAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 417
    const-string v0, "MtvUiGenericPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlAnimation: called :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isEnable:Z

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isRotating:Z

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isRotating:Z

    .line 423
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->rotatingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->mStrAnimation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mTxtAnimation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->mStrAnimation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mTxtAnimation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 438
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isRotating:Z

    .line 439
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 440
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 444
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method private postAnimationToRunInUIThread()V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 463
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 465
    :cond_0
    return-void
.end method

.method private setAnimationEnable(Z)V
    .locals 3
    .param p1, "bEnableAnimation"    # Z

    .prologue
    .line 378
    const-string v0, "MtvUiGenericPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlAnimationRunnable: setAnimationEnable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isEnable:Z

    .line 382
    return-void
.end method

.method private setAnimationText(Ljava/lang/String;)V
    .locals 3
    .param p1, "mStr"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string v0, "MtvUiGenericPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlAnimationRunnable: setAnimationText :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->mStrAnimation:Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
.method public getIsEnable()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->isEnable:Z

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->controlAnimation()V

    .line 414
    return-void
.end method
