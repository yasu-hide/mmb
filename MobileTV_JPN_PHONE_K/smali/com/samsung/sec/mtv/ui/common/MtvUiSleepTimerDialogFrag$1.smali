.class Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;
.super Ljava/lang/Object;
.source "MtvUiSleepTimerDialogFrag.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minuteOfDay"    # I

    .prologue
    .line 68
    const-string v0, "MtvUiSleepTimerDialogFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hourOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minuteOfDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v0, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;II)V

    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$102(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;I)I

    .line 71
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0702d9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;Landroid/content/Context;I)V

    goto :goto_0
.end method
