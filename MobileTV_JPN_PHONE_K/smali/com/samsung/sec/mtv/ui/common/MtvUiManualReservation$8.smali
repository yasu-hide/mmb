.class Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$8;
.super Ljava/lang/Object;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;
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
    .line 1346
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$8;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$1002(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1350
    return-void
.end method
