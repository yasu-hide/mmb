.class public Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field cal:Ljava/util/Calendar;

.field private hour:I

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private minute:I

.field private type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1360
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->cal:Ljava/util/Calendar;

    .line 1362
    return-void
.end method

.method public constructor <init>(IILcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;)V
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "type"    # Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .prologue
    .line 1379
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->cal:Ljava/util/Calendar;

    .line 1380
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->hour:I

    .line 1381
    iput p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->minute:I

    .line 1382
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1383
    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 1425
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->minute:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1372
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 1374
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    return-void

    .line 1375
    :catch_0
    move-exception v1

    .line 1376
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IMtvFragEventListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1386
    const/4 v0, 0x0

    .line 1388
    .local v0, "dialog":Landroid/app/TimePickerDialog;
    if-eqz p1, :cond_0

    .line 1389
    const-string v1, "HOUR_OF_DAY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->hour:I

    .line 1390
    const-string v1, "MINUTE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->minute:I

    .line 1391
    const-string v1, "TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1392
    .local v7, "typeOrdinal":I
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->ordinal()I

    move-result v1

    if-ne v7, v1, :cond_1

    .line 1393
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    .line 1399
    .end local v7    # "typeOrdinal":I
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/TimePickerDialog;

    .end local v0    # "dialog":Landroid/app/TimePickerDialog;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->hour:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->minute:I

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 1400
    .restart local v0    # "dialog":Landroid/app/TimePickerDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 1401
    return-object v0

    .line 1394
    .restart local v7    # "typeOrdinal":I
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->ordinal()I

    move-result v1

    if-ne v7, v1, :cond_2

    .line 1395
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    goto :goto_0

    .line 1397
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1365
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1366
    const-string v0, "HOUR_OF_DAY"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->hour:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1367
    const-string v0, "MINUTE"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->minute:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    const-string v0, "TYPE"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1369
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 1405
    const/4 v0, -0x1

    .line 1406
    .local v0, "event":I
    const-string v1, "MtvUiManualReservation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimeSet: hour - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minute - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->cal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1408
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->cal:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 1409
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->START_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    if-ne v1, v2, :cond_1

    .line 1410
    const/16 v0, 0x10f

    .line 1415
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->cal:Ljava/util/Calendar;

    invoke-interface {v1, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 1416
    iput p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->hour:I

    .line 1417
    iput p3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->minute:I

    .line 1418
    return-void

    .line 1412
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$TimePickerFragment;->type:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;->END_TIME:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$PopupType;

    if-ne v1, v2, :cond_0

    .line 1413
    const/16 v0, 0x110

    goto :goto_0
.end method
