.class Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;
.super Ljava/lang/Object;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->showMtvDialog(I)V
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
    .line 1058
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v2, 0x7f0a0013

    .line 1060
    if-nez p2, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    .line 1062
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0702ad

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1072
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1073
    return-void

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mReservationType:I

    .line 1065
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$4;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070315

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
