.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$10;
.super Ljava/lang/Object;
.source "MtvUiPopUpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->createPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$10;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 315
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "POPUP_TYPE_LAUNCH_ANTENNA_ALERT_DIALOG onClick OK "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$10;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$10;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)V

    .line 318
    return-void
.end method
