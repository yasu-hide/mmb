.class final Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;
.super Ljava/lang/Object;
.source "MmbTmDatabaseAccessSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScheduleListTblColumnIndex"
.end annotation


# instance fields
.field final COLUMNINDEX_CONTENT_END_TIME:I

.field final COLUMNINDEX_CONTENT_INDEX:I

.field final COLUMNINDEX_CONTENT_MEDIA:I

.field final COLUMNINDEX_CONTENT_PLAY_DATE:I

.field final COLUMNINDEX_CONTENT_PLAY_TIME:I

.field final COLUMNINDEX_CONTENT_START_TIME:I

.field final COLUMNINDEX_CONTENT_TITLE:I

.field final COLUMNINDEX_CRID:I

.field final COLUMNINDEX_HISTORY:I

.field final COLUMNINDEX_ID:I

.field final COLUMNINDEX_INTENT_CLASS_NAME:I

.field final COLUMNINDEX_INTENT_PACKAGE_NAME:I

.field final COLUMNINDEX_REPEAT_FLAG:I

.field final COLUMNINDEX_RESERVED_PACKAGE_NAME:I

.field final COLUMNINDEX_RESERVE_TYPE:I

.field final COLUMNINDEX_SCHEDULE_TYPE:I

.field final COLUMNINDEX_SERIES_ID:I

.field final COLUMNINDEX_SERVICE_ID:I

.field final COLUMNINDEX_TIMER_FINISH_FLAG:I

.field final COLUMNINDEX_TIME_STAMP:I

.field final COLUMNINDEX_TRIGGER_TIME:I

.field final COLUMNINDEX_WORK_1:I

.field final COLUMNINDEX_WORK_2:I

.field final COLUMNINDEX_WORK_3:I

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)V
    .locals 5

    .prologue
    .line 343
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scheduleListTbl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    .local v1, "sqlsb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 354
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 356
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_ID:I

    .line 358
    const-string v2, "scheduleType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SCHEDULE_TYPE:I

    .line 360
    const-string v2, "triggerTime"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_TRIGGER_TIME:I

    .line 362
    const-string v2, "repeatFlag"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_REPEAT_FLAG:I

    .line 364
    const-string v2, "timerFinishFlag"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_TIMER_FINISH_FLAG:I

    .line 366
    const-string v2, "crid"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CRID:I

    .line 368
    const-string v2, "history"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_HISTORY:I

    .line 370
    const-string v2, "intentPackageName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_INTENT_PACKAGE_NAME:I

    .line 372
    const-string v2, "intentClassName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_INTENT_CLASS_NAME:I

    .line 374
    const-string v2, "reservedPackageName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_RESERVED_PACKAGE_NAME:I

    .line 376
    const-string v2, "reserveType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_RESERVE_TYPE:I

    .line 378
    const-string v2, "contentTitle"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_TITLE:I

    .line 380
    const-string v2, "contentStartTime"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_START_TIME:I

    .line 382
    const-string v2, "contentEndTime"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_END_TIME:I

    .line 384
    const-string v2, "contentPlayTime"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_PLAY_TIME:I

    .line 386
    const-string v2, "contentPlayDate"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_PLAY_DATE:I

    .line 388
    const-string v2, "contentIndex"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_INDEX:I

    .line 390
    const-string v2, "contentMedia"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_CONTENT_MEDIA:I

    .line 392
    const-string v2, "serviceId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SERVICE_ID:I

    .line 394
    const-string v2, "seriesId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_SERIES_ID:I

    .line 396
    const-string v2, "work1"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_1:I

    .line 398
    const-string v2, "work2"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_2:I

    .line 400
    const-string v2, "work3"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_WORK_3:I

    .line 402
    const-string v2, "timeStamp"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseAccessSv$ScheduleListTblColumnIndex;->COLUMNINDEX_TIME_STAMP:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_0
    return-void

    .line 406
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 407
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2
.end method
