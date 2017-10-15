.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;
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

.field final synthetic val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 239
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$100()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$900(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReserveAlertFrom()I

    move-result v1

    if-nez v1, :cond_1

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CANCEL_EXIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->access$1002(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;I)I

    .line 253
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$7;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity;->finish()V

    .line 254
    return-void
.end method
