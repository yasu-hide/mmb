.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;
.super Ljava/lang/Object;
.source "MmbStTimeFunctionSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;
    }
.end annotation


# static fields
.field private static final ARIB_STD_B10_14956:I = 0x3a6c

.field private static final ARIB_STD_B10_149561:D = 14956.1

.field private static final ARIB_STD_B10_150782:D = 15078.2

.field private static final ARIB_STD_B10_3060001:D = 30.6001

.field private static final ARIB_STD_B10_36525:D = 365.25

.field private static final BCD_MUSK:I = 0xffffff

.field private static final DURATION_UNDECIDED:I = 0xffffff

.field private static final MJD_MUSK:I = 0xffff

.field private static final MJD_OLD_VALUE:I = 0xd90a

.field private static final ONE_DAY:J = 0x1000000L

.field private static final SEC_OF_DAY:I = 0x15180

.field private static final START_TIME_UNDECIDED:J = 0xffffffffffL

.field static final TIME_FUNCTION_ALREADY_END_EVENT:J = 0x3L

.field private static final TIME_FUNCTION_NON_ERROR:J = 0x0L

.field static final TIME_FUNCTION_NOT_START_EVENT:J = 0x1L

.field static final TIME_FUNCTION_PARAMETER_ERROR:J = -0x3e8L

.field static final TIME_FUNCTION_STARTING_EVENT:J = 0x2L

.field static final TIME_FUNCTION_UNDECIDED:J = -0x3e9L

.field static final TIME_FUNCTION_UNDECIDED_END:J = -0x3eaL

.field private static final TIME_RESET:J = 0xffff000000L

.field private static final TIME_ZOME:Ljava/lang/String; = "Asia/Tokyo"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method private checkOnAirStartMSec(JJ)J
    .locals 3
    .param p1, "aNowMSec"    # J
    .param p3, "aStartMSec"    # J

    .prologue
    .line 602
    cmp-long v2, p1, p3

    if-ltz v2, :cond_0

    .line 604
    const-wide/16 v0, 0x2

    .line 614
    .local v0, "result":J
    :goto_0
    return-wide v0

    .line 608
    .end local v0    # "result":J
    :cond_0
    const-wide/16 v0, 0x1

    .restart local v0    # "result":J
    goto :goto_0
.end method

.method private checkOnAirStartMSecAndEndMSec(JJJ)J
    .locals 3
    .param p1, "aNowMSec"    # J
    .param p3, "aStartMSec"    # J
    .param p5, "aEndMSec"    # J

    .prologue
    .line 640
    cmp-long v2, p3, p1

    if-gtz v2, :cond_0

    cmp-long v2, p1, p5

    if-gez v2, :cond_0

    .line 642
    const-wide/16 v0, 0x2

    .line 655
    .local v0, "result":J
    :goto_0
    return-wide v0

    .line 644
    .end local v0    # "result":J
    :cond_0
    cmp-long v2, p1, p3

    if-gez v2, :cond_1

    .line 646
    const-wide/16 v0, 0x1

    .restart local v0    # "result":J
    goto :goto_0

    .line 649
    .end local v0    # "result":J
    :cond_1
    const-wide/16 v0, 0x3

    .restart local v0    # "result":J
    goto :goto_0
.end method

.method private checkUndecided(I)Z
    .locals 3
    .param p1, "aTime"    # I

    .prologue
    const v2, 0xffffff

    .line 793
    const/4 v0, 0x1

    .line 795
    .local v0, "result":Z
    and-int v1, p1, v2

    if-ne v2, v1, :cond_0

    .line 799
    const/4 v0, 0x0

    .line 805
    :cond_0
    return v0
.end method

.method private checkUndecided(J)Z
    .locals 7
    .param p1, "aTime"    # J

    .prologue
    const-wide v4, 0xffffffffffL

    .line 759
    const/4 v0, 0x1

    .line 761
    .local v0, "result":Z
    and-long v2, p1, v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 765
    const/4 v0, 0x0

    .line 771
    :cond_0
    return v0
.end method

.method private checkYearMonthDay(III)Z
    .locals 7
    .param p1, "aYear"    # I
    .param p2, "aMonth"    # I
    .param p3, "aDay"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1170
    const/4 v2, 0x1

    .line 1173
    .local v2, "daymin":I
    if-gez p1, :cond_1

    .line 1174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "day error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 1205
    :cond_0
    :goto_0
    return v3

    .line 1182
    :cond_1
    if-lt p2, v6, :cond_2

    const/16 v5, 0xc

    if-ge v5, p2, :cond_3

    .line 1183
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "day error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 1187
    goto :goto_0

    .line 1191
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1192
    .local v0, "cal":Ljava/util/Calendar;
    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v0, p1, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 1193
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 1195
    .local v1, "daymax":I
    const/4 v3, 0x1

    .line 1197
    .local v3, "result":Z
    if-lt p3, v2, :cond_4

    if-ge v1, p3, :cond_0

    .line 1198
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "day error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getEndTime(JI)J
    .locals 15
    .param p1, "aStartTime"    # J
    .param p3, "aDuration"    # I

    .prologue
    .line 1079
    invoke-direct/range {p0 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkUndecided(J)Z

    move-result v5

    .line 1081
    .local v5, "result":Z
    if-nez v5, :cond_0

    .line 1085
    const-wide/16 v6, -0x3e9

    .line 1145
    :goto_0
    return-wide v6

    .line 1089
    :cond_0
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkUndecided(I)Z

    move-result v5

    .line 1091
    if-nez v5, :cond_1

    .line 1095
    const-wide/16 v6, -0x3ea

    goto :goto_0

    .line 1099
    :cond_1
    const-wide/32 v10, 0xffffff

    and-long v10, v10, p1

    long-to-int v9, v10

    invoke-direct {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getSec(I)I

    move-result v8

    .line 1101
    .local v8, "startsec":I
    const-wide/16 v10, -0x3e8

    int-to-long v12, v8

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 1105
    const-wide/16 v6, -0x3e8

    goto :goto_0

    .line 1109
    :cond_2
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getSec(I)I

    move-result v2

    .line 1111
    .local v2, "durationsec":I
    const-wide/16 v10, -0x3e8

    int-to-long v12, v2

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    .line 1115
    const-wide/16 v6, -0x3e8

    goto :goto_0

    .line 1118
    :cond_3
    move-wide/from16 v6, p1

    .line 1120
    .local v6, "endtime":J
    add-int v4, v8, v2

    .line 1122
    .local v4, "endsec":I
    :goto_1
    const v9, 0x15180

    if-le v4, v9, :cond_4

    .line 1124
    const-wide/32 v10, 0x1000000

    add-long/2addr v6, v10

    .line 1125
    const v9, 0x15180

    sub-int/2addr v4, v9

    goto :goto_1

    .line 1129
    :cond_4
    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->toBcdFromSec(I)I

    move-result v3

    .line 1131
    .local v3, "endbcd":I
    const-wide/16 v10, -0x3e8

    int-to-long v12, v3

    cmp-long v9, v10, v12

    if-nez v9, :cond_5

    .line 1135
    const-wide/16 v6, -0x3e8

    goto :goto_0

    .line 1138
    :cond_5
    const-wide v10, 0xffff000000L

    and-long/2addr v6, v10

    .line 1140
    int-to-long v10, v3

    add-long/2addr v6, v10

    .line 1145
    goto :goto_0
.end method

.method private getSec(I)I
    .locals 7
    .param p1, "aTime"    # I

    .prologue
    .line 997
    const/16 v4, -0x3e8

    .line 999
    .local v4, "retsecond":I
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;

    invoke-direct {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;-><init>(I)V

    .line 1001
    .local v1, "localtime":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->checkHms()Z

    move-result v3

    .line 1003
    .local v3, "result":Z
    const/4 v6, 0x1

    if-ne v6, v3, :cond_0

    .line 1004
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->getHour()I

    move-result v0

    .line 1005
    .local v0, "hour":I
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->getMinute()I

    move-result v2

    .line 1006
    .local v2, "min":I
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->getSecond()I

    move-result v5

    .line 1008
    .local v5, "sec":I
    mul-int/lit8 v6, v0, 0x3c

    mul-int/lit8 v4, v6, 0x3c

    .line 1009
    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v4, v6

    .line 1010
    add-int/2addr v4, v5

    .line 1016
    .end local v0    # "hour":I
    .end local v2    # "min":I
    .end local v5    # "sec":I
    :cond_0
    return v4
.end method

.method private setCalendarFromTime(JLjava/util/Calendar;)Z
    .locals 7
    .param p1, "aStartTime"    # J
    .param p3, "aCal"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 945
    if-nez p3, :cond_1

    .line 946
    const-string v3, "calendar class is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    :cond_0
    :goto_0
    return v2

    .line 954
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->setYmdFromMjd(JLjava/util/Calendar;)Z

    move-result v1

    .line 956
    .local v1, "result":Z
    if-ne v3, v1, :cond_0

    .line 964
    const-wide/32 v4, 0xffffff

    and-long/2addr v4, p1

    long-to-int v0, v4

    .line 965
    .local v0, "bcd":I
    invoke-direct {p0, v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->setHmsFromBcd(ILjava/util/Calendar;)Z

    move-result v1

    .line 967
    if-ne v3, v1, :cond_0

    move v2, v3

    .line 977
    goto :goto_0
.end method

.method private setHmsFromBcd(ILjava/util/Calendar;)Z
    .locals 5
    .param p1, "aTime"    # I
    .param p2, "aCal"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x0

    .line 901
    if-nez p2, :cond_1

    .line 902
    const-string v3, "calendar class is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 924
    :cond_0
    :goto_0
    return v1

    .line 910
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;-><init>(I)V

    .line 911
    .local v0, "localtime":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->checkHms()Z

    move-result v1

    .line 913
    .local v1, "result":Z
    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    .line 915
    const/16 v3, 0xb

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->getHour()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 916
    const/16 v3, 0xc

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->getMinute()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 917
    const/16 v3, 0xd

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv$MmbStInnerTimeSv;->getSecond()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 918
    const/16 v3, 0xe

    invoke-virtual {p2, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private setYmdFromMjd(JLjava/util/Calendar;)Z
    .locals 19
    .param p1, "aStartTime"    # J
    .param p3, "aCal"    # Ljava/util/Calendar;

    .prologue
    .line 826
    if-nez p3, :cond_1

    .line 830
    const/4 v10, 0x0

    .line 879
    :cond_0
    :goto_0
    return v10

    .line 835
    :cond_1
    const-wide/32 v14, 0xffff

    const/16 v16, 0x18

    shr-long v16, p1, v16

    and-long v14, v14, v16

    long-to-int v6, v14

    .line 838
    .local v6, "mjd":I
    const v14, 0xd90a

    if-lt v14, v6, :cond_2

    .line 839
    const/high16 v14, 0x10000

    add-int/2addr v6, v14

    .line 842
    :cond_2
    int-to-double v8, v6

    .line 845
    .local v8, "mjddouble":D
    const-wide v14, 0x40cd73199999999aL    # 15078.2

    sub-double v14, v8, v14

    const-wide v16, 0x4076d40000000000L    # 365.25

    div-double v14, v14, v16

    double-to-int v11, v14

    .line 846
    .local v11, "ydush":I
    int-to-double v14, v11

    const-wide v16, 0x4076d40000000000L    # 365.25

    mul-double v14, v14, v16

    double-to-int v12, v14

    .line 847
    .local v12, "ydushtemp":I
    const-wide v14, 0x40cd360ccccccccdL    # 14956.1

    sub-double v14, v8, v14

    int-to-double v0, v12

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide v16, 0x403e99a027525461L    # 30.6001

    div-double v14, v14, v16

    double-to-int v4, v14

    .line 848
    .local v4, "mdush":I
    int-to-double v14, v4

    const-wide v16, 0x403e99a027525461L    # 30.6001

    mul-double v14, v14, v16

    double-to-int v5, v14

    .line 849
    .local v5, "mdushtemp":I
    add-int/lit16 v14, v6, -0x3a6c

    sub-int/2addr v14, v12

    sub-int v2, v14, v5

    .line 851
    .local v2, "day":I
    const/4 v3, 0x0

    .line 853
    .local v3, "k":I
    const/16 v14, 0xe

    if-eq v14, v4, :cond_3

    const/16 v14, 0xf

    if-ne v14, v4, :cond_4

    .line 854
    :cond_3
    const/4 v3, 0x1

    .line 857
    :cond_4
    add-int v14, v11, v3

    add-int/lit16 v13, v14, 0x76c

    .line 858
    .local v13, "year":I
    add-int/lit8 v14, v4, -0x1

    mul-int/lit8 v15, v3, 0xc

    sub-int v7, v14, v15

    .line 865
    .local v7, "month":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkYearMonthDay(III)Z

    move-result v10

    .line 866
    .local v10, "result":Z
    if-eqz v10, :cond_0

    .line 874
    add-int/lit8 v14, v7, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14, v2}, Ljava/util/Calendar;->set(III)V

    goto :goto_0
.end method

.method private toBcdFromSec(I)I
    .locals 8
    .param p1, "aSec"    # I

    .prologue
    .line 1037
    if-ltz p1, :cond_0

    const v5, 0x15180

    if-ge v5, p1, :cond_1

    .line 1041
    :cond_0
    const/16 v2, -0x3e8

    .line 1059
    :goto_0
    return v2

    .line 1045
    :cond_1
    move v4, p1

    .line 1046
    .local v4, "temp":I
    div-int/lit16 v0, v4, 0xe10

    .line 1047
    .local v0, "hour":I
    rem-int/lit16 v4, v4, 0xe10

    .line 1048
    div-int/lit8 v1, v4, 0x3c

    .line 1049
    .local v1, "minute":I
    rem-int/lit8 v3, v4, 0x3c

    .line 1052
    .local v3, "second":I
    div-int/lit8 v5, v0, 0xa

    const/high16 v6, 0x100000

    mul-int/2addr v5, v6

    rem-int/lit8 v6, v0, 0xa

    const/high16 v7, 0x10000

    mul-int/2addr v6, v7

    add-int v2, v5, v6

    .line 1053
    .local v2, "retbcd":I
    div-int/lit8 v5, v1, 0xa

    mul-int/lit16 v5, v5, 0x1000

    rem-int/lit8 v6, v1, 0xa

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1054
    div-int/lit8 v5, v3, 0xa

    mul-int/lit8 v5, v5, 0x10

    rem-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1059
    goto :goto_0
.end method


# virtual methods
.method checkOnAir(JJI)J
    .locals 15
    .param p1, "aNowMSec"    # J
    .param p3, "aStartTime"    # J
    .param p5, "aDuration"    # I

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v12, -0x3e8

    .line 536
    cmp-long v4, v6, p1

    if-ltz v4, :cond_1

    move-wide v8, v12

    .line 579
    :cond_0
    :goto_0
    return-wide v8

    .line 545
    :cond_1
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEventMSec(J)J

    move-result-wide v8

    .line 547
    .local v8, "startmsec":J
    cmp-long v4, v6, v8

    if-gtz v4, :cond_0

    .line 555
    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEventMSec(JI)J

    move-result-wide v10

    .line 557
    .local v10, "endmsec":J
    cmp-long v4, v12, v10

    if-nez v4, :cond_2

    move-wide v8, v10

    .line 561
    goto :goto_0

    .line 564
    :cond_2
    const-wide/16 v12, -0x3e8

    .line 567
    .local v12, "result":J
    const-wide/16 v4, -0x3ea

    cmp-long v4, v4, v10

    if-nez v4, :cond_3

    .line 569
    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkOnAirStartMSec(JJ)J

    move-result-wide v12

    :goto_1
    move-wide v8, v12

    .line 579
    goto :goto_0

    :cond_3
    move-object v5, p0

    move-wide/from16 v6, p1

    .line 573
    invoke-direct/range {v5 .. v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkOnAirStartMSecAndEndMSec(JJJ)J

    move-result-wide v12

    goto :goto_1
.end method

.method getEventMSec(J)J
    .locals 11
    .param p1, "aStartTime"    # J

    .prologue
    const/4 v9, 0x1

    .line 424
    const-wide/16 v4, 0x0

    .line 426
    .local v4, "rettime":J
    const-string v8, "Asia/Tokyo"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 427
    .local v3, "tz":Ljava/util/TimeZone;
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 430
    .local v0, "cal":Ljava/util/Calendar;
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkUndecided(J)Z

    move-result v2

    .line 432
    .local v2, "result":Z
    if-eq v9, v2, :cond_0

    .line 437
    const-wide/16 v4, -0x3e9

    move-wide v6, v4

    .line 468
    .end local v4    # "rettime":J
    .local v6, "rettime":J
    :goto_0
    return-wide v6

    .line 444
    .end local v6    # "rettime":J
    .restart local v4    # "rettime":J
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->setCalendarFromTime(JLjava/util/Calendar;)Z

    move-result v2

    .line 446
    if-ne v9, v2, :cond_1

    .line 449
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_1
    move-wide v6, v4

    .line 468
    .end local v4    # "rettime":J
    .restart local v6    # "rettime":J
    goto :goto_0

    .line 450
    .end local v6    # "rettime":J
    .restart local v4    # "rettime":J
    :catch_0
    move-exception v1

    .line 455
    .local v1, "exception":Ljava/lang/IllegalArgumentException;
    const-wide/16 v4, -0x3e8

    .line 456
    goto :goto_1

    .line 462
    .end local v1    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-wide/16 v4, -0x3e8

    goto :goto_1
.end method

.method getEventMSec(JI)J
    .locals 7
    .param p1, "aStartTime"    # J
    .param p3, "aDuration"    # I

    .prologue
    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEndTime(JI)J

    move-result-wide v0

    .line 391
    .local v0, "endtime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 404
    .end local v0    # "endtime":J
    :goto_0
    return-wide v0

    .line 399
    .restart local v0    # "endtime":J
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEventMSec(J)J

    move-result-wide v2

    .local v2, "rettime":J
    move-wide v0, v2

    .line 404
    goto :goto_0
.end method

.method getEventSec(I)I
    .locals 6
    .param p1, "aDuration"    # I

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->checkUndecided(I)Z

    move-result v1

    .line 491
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 495
    const/16 v0, -0x3ea

    .line 511
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getSec(I)I

    move-result v0

    .line 501
    .local v0, "durationsec":I
    const-wide/16 v2, -0x3e8

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 505
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method getRelativeTime(JJ)J
    .locals 9
    .param p1, "aNowMSec"    # J
    .param p3, "aStartTime"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 678
    cmp-long v4, v6, p1

    if-ltz v4, :cond_1

    .line 683
    const-wide/16 v2, -0x3e8

    .line 702
    :cond_0
    :goto_0
    return-wide v2

    .line 687
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getEventMSec(J)J

    move-result-wide v2

    .line 689
    .local v2, "startmsec":J
    cmp-long v4, v6, v2

    if-gtz v4, :cond_0

    .line 697
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTimeFunctionSv;->getRelativeTimeFromMSec(JJ)J

    move-result-wide v0

    .local v0, "result":J
    move-wide v2, v0

    .line 702
    goto :goto_0
.end method

.method getRelativeTimeFromMSec(JJ)J
    .locals 5
    .param p1, "aNowMSec"    # J
    .param p3, "aEventMSec"    # J

    .prologue
    .line 724
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    .line 729
    const-wide/16 v0, -0x3e8

    .line 737
    :goto_0
    return-wide v0

    .line 732
    :cond_0
    sub-long v0, p3, p1

    .line 737
    .local v0, "result":J
    goto :goto_0
.end method
