.class Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl$1;
.super Ljava/lang/Object;
.source "MtvUiPopUpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl$1;->this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 731
    const-string v0, "MtvUiPopUpActivity"

    const-string v1, "runnableReenterKeyguard     :"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl$1;->this$1:Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;->access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl;)V

    .line 733
    return-void
.end method
