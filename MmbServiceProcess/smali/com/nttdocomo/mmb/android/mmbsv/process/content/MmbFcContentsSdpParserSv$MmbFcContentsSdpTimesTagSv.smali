.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
.super Ljava/lang/Object;
.source "MmbFcContentsSdpParserSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbFcContentsSdpTimesTagSv"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagComparatorSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    }
.end annotation


# instance fields
.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;)V
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->mListData:Ljava/util/ArrayList;

    .line 386
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->setData(Ljava/lang/String;)V

    return-void
.end method

.method private setData(Ljava/lang/String;)V
    .locals 9
    .param p1, "aSdpLine"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->mListData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->mListData:Ljava/util/ArrayList;

    .line 186
    :cond_0
    const-string v0, "t="

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "strTimes":[Ljava/lang/String;
    if-eqz v7, :cond_1

    const/4 v0, 0x2

    array-length v1, v7

    if-ne v0, v1, :cond_1

    .line 191
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->mListData:Ljava/util/ArrayList;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;JJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 196
    :catch_0
    move-exception v6

    .line 197
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 200
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "T tag in SDP is nothing"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sortList(ZZ)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .locals 3
    .param p1, "aSortFlg"    # Z
    .param p2, "aSortFlgOrder"    # Z

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "retVal":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->mListData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->mListData:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "retVal":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .line 339
    .restart local v0    # "retVal":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagComparatorSv;

    invoke-direct {v1, p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagComparatorSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;ZZ)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 345
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getListSortStart(Z)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .locals 2
    .param p1, "aSortFlgOrder"    # Z

    .prologue
    .line 284
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->sortList(ZZ)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v0

    .line 288
    .local v0, "result":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    return-object v0
.end method

.method public getStartTime(Z)J
    .locals 4
    .param p1, "aGetFlgOrder"    # Z

    .prologue
    .line 226
    const-wide/16 v2, 0x0

    .line 227
    .local v2, "result":J
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->sortList(ZZ)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v0

    .line 228
    .local v0, "list":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v0, :cond_0

    .line 229
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    .line 234
    :cond_0
    return-wide v2
.end method

.method public getStopTime(Z)J
    .locals 4
    .param p1, "aGetFlgOrder"    # Z

    .prologue
    const/4 v1, 0x0

    .line 255
    const-wide/16 v2, 0x0

    .line 256
    .local v2, "result":J
    invoke-direct {p0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->sortList(ZZ)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v0

    .line 257
    .local v0, "list":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v0, :cond_0

    .line 258
    aget-object v1, v0, v1

    iget-wide v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    .line 263
    :cond_0
    return-wide v2
.end method
