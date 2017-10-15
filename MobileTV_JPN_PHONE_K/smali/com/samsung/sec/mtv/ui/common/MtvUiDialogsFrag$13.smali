.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;
.super Ljava/lang/Object;
.source "MtvUiDialogsFrag.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->createDialogByType(ILandroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

.field final synthetic val$end_reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

.field final synthetic val$isbRecordStop:Z


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Lcom/samsung/sec/mtv/provider/MtvReservation;Z)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->val$end_reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iput-boolean p3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->val$isbRecordStop:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->val$end_reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->val$end_reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->val$end_reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->UpdateStatus(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;I)V

    .line 484
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->val$isbRecordStop:Z

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v0

    const/16 v1, 0xe6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 486
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 487
    const/4 p1, 0x0

    .line 488
    return-void

    .line 475
    :cond_1
    const-string v0, "MtvUiDialogsFrag"

    const-string v1, "Picture not yet started ah ? What you do now?!!! Reservation not Updated."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_2
    const-string v0, "MtvUiDialogsFrag"

    const-string v1, "reserve is NULL, then what are you ending!!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
