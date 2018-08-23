.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
.super Ljava/lang/Object;
.source "MmbFcContentScheduleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbFcElementListSv"
.end annotation


# instance fields
.field isListExclude:Z

.field isOutrange:Z

.field mCompTimePeriod:J

.field mCycleEndDate:J

.field mCycleStartDate:J

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;JJ)V
    .locals 4
    .param p2, "aCycleStartDate"    # J
    .param p4, "aCycleEndDate"    # J

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 3641
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3617
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    .line 3619
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    .line 3621
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCompTimePeriod:J

    .line 3623
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isOutrange:Z

    .line 3625
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isListExclude:Z

    .line 3643
    iput-wide p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    .line 3644
    iput-wide p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    .line 3645
    return-void
.end method


# virtual methods
.method public devideElement(JJ)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .locals 13
    .param p1, "aDevideStartTime"    # J
    .param p3, "aDevideEndTime"    # J

    .prologue
    .line 3682
    const/4 v0, 0x2

    new-array v12, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    .line 3683
    .local v12, "ret":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    invoke-static {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;J)J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 3684
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    invoke-static {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;J)J

    move-result-wide v0

    add-long p3, p3, v0

    .line 3692
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    .line 3693
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    move-wide v4, p1

    .line 3694
    .local v4, "newStartTime":J
    :goto_0
    const/4 v6, 0x0

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;JJ)V

    aput-object v0, v12, v6

    .line 3699
    .end local v4    # "newStartTime":J
    :goto_1
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_3

    .line 3700
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    iget-wide v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    .line 3701
    .local v8, "newEndTime":J
    :goto_2
    const/4 v0, 0x1

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    iget-wide v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    invoke-direct/range {v6 .. v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;JJ)V

    aput-object v6, v12, v0

    .line 3705
    .end local v8    # "newEndTime":J
    :goto_3
    return-object v12

    .line 3693
    :cond_0
    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    goto :goto_0

    .line 3696
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v12, v0

    goto :goto_1

    :cond_2
    move-wide/from16 v8, p3

    .line 3700
    goto :goto_2

    .line 3703
    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, v12, v0

    goto :goto_3
.end method

.method public getNextElement()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    .line 3661
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    add-long/2addr v2, v6

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    add-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;JJ)V

    return-object v0
.end method

.method public setAfterStartTime(J)V
    .locals 3
    .param p1, "aStartTime"    # J

    .prologue
    .line 3722
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    .end local p1    # "aStartTime":J
    :cond_0
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    .line 3723
    return-void
.end method

.method public setBeforeEndTime(J)V
    .locals 9
    .param p1, "aEndTime"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3741
    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    cmp-long v0, v4, p1

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isOutrange:Z

    .line 3742
    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    cmp-long v0, v4, p1

    if-gez v0, :cond_0

    iget-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    .end local p1    # "aEndTime":J
    :cond_0
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    .line 3743
    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    iget-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->isListExclude:Z

    .line 3744
    return-void

    .restart local p1    # "aEndTime":J
    :cond_1
    move v0, v2

    .line 3741
    goto :goto_0

    .end local p1    # "aEndTime":J
    :cond_2
    move v1, v2

    .line 3743
    goto :goto_1
.end method

.method public setCompTimePeriod(J)J
    .locals 5
    .param p1, "aTotalPeriod"    # J

    .prologue
    .line 3762
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleEndDate:J

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCycleStartDate:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCompTimePeriod:J

    .line 3763
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv$MmbFcElementListSv;->mCompTimePeriod:J

    add-long/2addr p1, v0

    return-wide p1
.end method
