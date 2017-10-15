.class Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$12;
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

.field final synthetic val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Lcom/samsung/sec/mtv/provider/MtvReservation;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$12;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$12;->val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$12;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$12;->val$reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-wide v2, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v1, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 434
    return-void
.end method
