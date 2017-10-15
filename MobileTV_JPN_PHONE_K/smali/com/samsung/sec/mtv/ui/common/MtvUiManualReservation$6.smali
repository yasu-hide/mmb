.class Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;
.super Ljava/lang/Object;
.source "MtvUiManualReservation.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 1285
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 16
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 1288
    new-instance v6, Ljava/util/Date;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v6, v0, v1, v2}, Ljava/util/Date;-><init>(III)V

    .line 1289
    .local v6, "inputDate":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDefaultDate()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-gez v7, :cond_0

    .line 1290
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeShouldBeSetAfterCurrentTimeAlert()V

    .line 1319
    :goto_0
    return-void

    .line 1293
    :cond_0
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDefaultDate()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-nez v7, :cond_2

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1295
    .local v10, "streamTime":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v4

    .line 1296
    .local v4, "defaultHour":I
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v5

    .line 1298
    .local v5, "defaultMinute":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget v7, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    if-le v4, v7, :cond_1

    .line 1299
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeShouldBeSetAfterCurrentTimeAlert()V

    goto :goto_0

    .line 1301
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget v7, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartHour:I

    if-ne v4, v7, :cond_2

    .line 1302
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget v7, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMinute:I

    if-lt v5, v7, :cond_2

    .line 1303
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->startTimeShouldBeSetAfterCurrentTimeAlert()V

    goto :goto_0

    .line 1309
    .end local v4    # "defaultHour":I
    .end local v5    # "defaultMinute":I
    .end local v10    # "streamTime":J
    :cond_2
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->getDefaultDate()J

    move-result-wide v14

    sub-long v8, v12, v14

    .line 1310
    .local v8, "period":J
    const-wide/32 v12, 0x240c8400

    cmp-long v7, v8, v12

    if-lez v7, :cond_3

    .line 1311
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->setStartTimeWithinOneWeekAlert()V

    goto :goto_0

    .line 1314
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    move/from16 v0, p2

    iput v0, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    .line 1315
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    add-int/lit8 v12, p3, 0x1

    iput v12, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    .line 1316
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    move/from16 v0, p4

    iput v0, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    .line 1318
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;)Landroid/widget/Button;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget v13, v13, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartYear:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget v14, v14, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartMonth:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation$6;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    iget v15, v15, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->mStartDay:I

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;->access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
