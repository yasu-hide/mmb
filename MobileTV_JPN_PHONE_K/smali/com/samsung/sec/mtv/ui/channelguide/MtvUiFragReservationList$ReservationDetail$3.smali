.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;
.super Ljava/lang/Object;
.source "MtvUiFragReservationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 667
    packed-switch p2, :pswitch_data_0

    .line 676
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 669
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
