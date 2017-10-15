.class Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;
.super Ljava/lang/Object;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 577
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 610
    :cond_0
    :goto_0
    return v4

    .line 580
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 581
    .local v1, "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 582
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->isStartTimeGreaterThanCurrentTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 583
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->isReservationDurationValid()I

    move-result v0

    .line 584
    .local v0, "checkDur":I
    if-ne v0, v4, :cond_2

    .line 585
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->isReservationAlreadyTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showAlreadyReserveDlg()V

    goto :goto_0

    .line 590
    :cond_2
    if-nez v0, :cond_3

    .line 591
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->durationWrongAlert()V

    goto :goto_0

    .line 592
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->EndTimeShouldBeSetAfterStartTimeAlert()V

    goto :goto_0

    .line 597
    .end local v0    # "checkDur":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeShouldBeSetAfterCurrentTimeAlert()V

    goto :goto_0

    .line 603
    .end local v1    # "mInputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)V

    .line 604
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$2;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->finish()V

    goto :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a014e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
