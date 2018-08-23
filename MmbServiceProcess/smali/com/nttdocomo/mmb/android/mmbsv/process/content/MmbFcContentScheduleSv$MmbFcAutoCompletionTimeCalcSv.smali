.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;
.super Ljava/lang/Object;
.source "MmbFcContentScheduleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFcAutoCompletionTimeCalcSv"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    }
.end annotation


# instance fields
.field mCurrentTime:J

.field mEndDate:J

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;",
            ">;"
        }
    .end annotation
.end field

.field mReceptionCycleEndTime:J

.field mReceptionCycleStartTime:J

.field mStartDate:J

.field private mTmpCal:Ljava/util/Calendar;

.field mTotalPeriod:J


# direct methods
.method constructor <init>(JJJJJJ)V
    .locals 7
    .param p1, "aCurrentTime"    # J
    .param p3, "aStartDateLastBroadcast"    # J
    .param p5, "aOffsetTime"    # J
    .param p7, "aRandomTimePeriod"    # J
    .param p9, "aReceptionCycleStartTime"    # J
    .param p11, "aReceptionCycleEndTime"    # J

    .prologue
    .line 3797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3595
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    .line 3597
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    .line 3599
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    .line 3602
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    .line 3605
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    .line 3607
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    .line 3610
    const-string v2, "Asia/Tokyo"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTmpCal:Ljava/util/Calendar;

    .line 3768
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mList:Ljava/util/ArrayList;

    .line 3813
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    .line 3814
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    .line 3815
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    .line 3819
    add-long v2, p3, p5

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    .line 3822
    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    add-long/2addr v2, p7

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    .line 3824
    const-wide v2, 0x1f3fffffc18L

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 3847
    :goto_0
    return-void

    .line 3831
    :cond_0
    const-wide v2, 0x1f3fffffc18L

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 3835
    const-wide v2, 0x1f3fffffc18L

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    .line 3838
    :cond_1
    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 3840
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    .line 3841
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    .line 3843
    :cond_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->setList()V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;J)J
    .locals 3
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;
    .param p1, "x1"    # J

    .prologue
    .line 3589
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getBaseTime(J)J
    .locals 5
    .param p1, "aMillis"    # J

    .prologue
    const/4 v4, 0x0

    .line 3865
    const-wide/16 v0, 0x0

    .line 3868
    .local v0, "ret":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTmpCal:Ljava/util/Calendar;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3869
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTmpCal:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 3870
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTmpCal:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 3871
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTmpCal:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 3872
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTmpCal:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 3874
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTmpCal:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 3878
    return-wide v0
.end method

.method private setList()V
    .locals 22

    .prologue
    .line 3896
    const/4 v4, 0x0

    .line 3897
    .local v4, "element":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mList:Ljava/util/ArrayList;

    .line 3898
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    cmp-long v5, v10, v12

    if-gtz v5, :cond_b

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    cmp-long v5, v10, v12

    if-gtz v5, :cond_b

    .line 3901
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v6

    .line 3902
    .local v6, "startCycle":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long v20, v10, v12

    .line 3903
    .local v20, "endCycleLastDay":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_0

    .line 3907
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    add-long v20, v10, v12

    .line 3909
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    add-long v6, v10, v12

    .line 3912
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    cmp-long v5, v10, v20

    if-lez v5, :cond_2

    .end local v20    # "endCycleLastDay":J
    :goto_0
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    .line 3914
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_3

    .line 4001
    .end local v6    # "startCycle":J
    :cond_1
    :goto_1
    return-void

    .line 3912
    .restart local v6    # "startCycle":J
    .restart local v20    # "endCycleLastDay":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-wide/from16 v20, v0

    goto :goto_0

    .line 3923
    .end local v20    # "endCycleLastDay":J
    :cond_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    cmp-long v5, v10, v6

    if-gez v5, :cond_8

    move-wide v10, v6

    :goto_2
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    .line 3925
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    :goto_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    .line 3927
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    cmp-long v5, v10, v12

    if-ltz v5, :cond_1

    .line 3937
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long v8, v10, v12

    .line 3938
    .local v8, "endCycle":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_4

    .line 3939
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    add-long v8, v10, v12

    .line 3941
    :cond_4
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    .end local v4    # "element":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;JJ)V

    .line 3943
    .restart local v4    # "element":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    const/16 v16, 0x0

    .line 3944
    .local v16, "devidedElement":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    const/16 v17, 0x0

    .line 3945
    .local v17, "element1":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    const/16 v18, 0x0

    .line 3946
    .local v18, "element2":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    const/16 v19, 0x1

    .line 3948
    .local v19, "isLoop":Z
    :cond_5
    :goto_4
    if-eqz v19, :cond_1

    .line 3949
    move-object/from16 v17, v4

    .line 3950
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->getNextElement()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    move-result-object v4

    .line 3951
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->setAfterStartTime(J)V

    .line 3952
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->setBeforeEndTime(J)V

    .line 3953
    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isOutrange:Z

    if-nez v5, :cond_a

    .line 3956
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_6

    .line 3957
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->devideElement(JJ)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    move-result-object v16

    .line 3958
    const/4 v5, 0x0

    aget-object v17, v16, v5

    .line 3959
    const/4 v5, 0x1

    aget-object v18, v16, v5

    .line 3961
    :cond_6
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isOutrange:Z

    if-nez v5, :cond_7

    .line 3962
    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isListExclude:Z

    if-nez v5, :cond_7

    .line 3967
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->setCompTimePeriod(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    .line 3968
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3971
    :cond_7
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isOutrange:Z

    if-nez v5, :cond_5

    .line 3972
    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isListExclude:Z

    if-nez v5, :cond_5

    .line 3977
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->setCompTimePeriod(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    .line 3978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 3923
    .end local v8    # "endCycle":J
    .end local v16    # "devidedElement":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .end local v17    # "element1":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .end local v18    # "element2":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .end local v19    # "isLoop":Z
    :cond_8
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    goto/16 :goto_2

    .line 3925
    :cond_9
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    goto/16 :goto_3

    .line 3982
    .restart local v8    # "endCycle":J
    .restart local v16    # "devidedElement":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .restart local v17    # "element1":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .restart local v18    # "element2":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .restart local v19    # "isLoop":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 3985
    .end local v6    # "startCycle":J
    .end local v8    # "endCycle":J
    .end local v16    # "devidedElement":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .end local v17    # "element1":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .end local v18    # "element2":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .end local v19    # "isLoop":Z
    :cond_b
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v10, v12

    if-lez v5, :cond_1

    .line 3988
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_c

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    :goto_5
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    .line 3989
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    .end local v4    # "element":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    move-object v10, v4

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;JJ)V

    .line 3994
    .restart local v4    # "element":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    invoke-virtual {v4, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->setCompTimePeriod(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    .line 3995
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3988
    :cond_c
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    goto :goto_5
.end method


# virtual methods
.method getResult()J
    .locals 18

    .prologue
    .line 4020
    const-wide/16 v6, 0x0

    .line 4021
    .local v6, "result":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    .line 4023
    .local v12, "timeRandom":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mTotalPeriod:J

    move-wide/from16 v16, v0

    cmp-long v5, v14, v16

    if-ltz v5, :cond_1

    :cond_0
    move-wide v8, v6

    .line 4048
    .end local v6    # "result":J
    .local v8, "result":J
    :goto_0
    return-wide v8

    .line 4032
    .end local v8    # "result":J
    .restart local v6    # "result":J
    :cond_1
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 4033
    .local v4, "rand":Ljava/util/Random;
    long-to-double v14, v12

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v12, v14

    .line 4034
    const-wide/16 v10, 0x0

    .line 4036
    .local v10, "timePeriod":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    .line 4037
    .local v3, "list":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    iget-wide v14, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCompTimePeriod:J

    add-long/2addr v14, v10

    cmp-long v5, v14, v12

    if-ltz v5, :cond_3

    .line 4038
    sub-long v14, v12, v10

    iget-wide v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .end local v3    # "list":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    :cond_2
    move-wide v8, v6

    .line 4048
    .end local v6    # "result":J
    .restart local v8    # "result":J
    goto :goto_0

    .line 4041
    .end local v8    # "result":J
    .restart local v3    # "list":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .restart local v6    # "result":J
    :cond_3
    iget-wide v14, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCompTimePeriod:J

    add-long/2addr v10, v14

    .line 4042
    goto :goto_1
.end method

.method isWithinPeriod()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 4068
    const/4 v4, 0x1

    .line 4070
    .local v4, "result":Z
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    iget-wide v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mStartDate:J

    cmp-long v5, v8, v10

    if-ltz v5, :cond_0

    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mEndDate:J

    iget-wide v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_2

    .line 4077
    :cond_0
    const/4 v4, 0x0

    .line 4116
    :cond_1
    :goto_0
    return v4

    .line 4079
    :cond_2
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    cmp-long v5, v12, v8

    if-gtz v5, :cond_1

    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    cmp-long v5, v12, v8

    if-gtz v5, :cond_1

    .line 4081
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    invoke-direct {p0, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getBaseTime(J)J

    move-result-wide v0

    .line 4083
    .local v0, "curBaseTime":J
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    add-long v6, v0, v8

    .line 4085
    .local v6, "startCycle":J
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    add-long v2, v0, v8

    .line 4087
    .local v2, "endCycle":J
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleStartTime:J

    iget-wide v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mReceptionCycleEndTime:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_4

    .line 4089
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v8, v6

    if-ltz v5, :cond_3

    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v2, v8

    if-gez v5, :cond_1

    .line 4096
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 4100
    :cond_4
    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v2, v8

    if-gez v5, :cond_1

    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->mCurrentTime:J

    cmp-long v5, v8, v6

    if-gez v5, :cond_1

    .line 4107
    const/4 v4, 0x0

    goto :goto_0
.end method
