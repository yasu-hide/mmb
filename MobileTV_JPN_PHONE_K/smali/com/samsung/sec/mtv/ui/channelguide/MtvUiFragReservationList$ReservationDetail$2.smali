.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;
.super Ljava/lang/Object;
.source "MtvUiFragReservationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->initDetails(Lcom/samsung/sec/mtv/provider/MtvReservation;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

.field final synthetic val$mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;->val$mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;->val$mtvreserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->delete(Landroid/content/Context;J)V

    .line 646
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail$2;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;->access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 649
    :cond_0
    return-void
.end method
