.class Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$CustomTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "MtvUiSleepTimerDialogFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomTimePickerDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 269
    invoke-direct/range {p0 .. p5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 270
    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 273
    invoke-super {p0, p1, p2, p3}, Landroid/app/TimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 274
    const v0, 0x7f0702de

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag$CustomTimePickerDialog;->setTitle(I)V

    .line 275
    return-void
.end method
