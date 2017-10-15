.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;
.super Ljava/lang/Object;
.source "MtvUiPopUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtvReservationAlertControl"
.end annotation


# instance fields
.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final runnableReenterKeyguard:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 1

    .prologue
    .line 696
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->runnableReenterKeyguard:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$1;

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->runnableReenterKeyguard:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->cheakAndReEnableScreenLock()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->checkAndDisableScreenLock()V

    return-void
.end method

.method private cheakAndReEnableScreenLock()V
    .locals 3

    .prologue
    .line 724
    const-string v0, "MtvUiPopUpActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable  Key Guard     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 727
    :cond_0
    return-void
.end method

.method private checkAndDisableScreenLock()V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$1600(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 704
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 705
    const-string v0, "MtvUiPopUpActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable Key Guard     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 720
    :cond_0
    return-void
.end method
