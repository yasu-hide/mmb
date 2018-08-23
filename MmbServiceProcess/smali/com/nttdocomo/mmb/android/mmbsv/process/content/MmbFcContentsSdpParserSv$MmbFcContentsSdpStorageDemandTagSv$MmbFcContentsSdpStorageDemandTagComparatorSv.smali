.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;
.super Ljava/lang/Object;
.source "MmbFcContentsSdpParserSv.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbFcContentsSdpStorageDemandTagComparatorSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mFirst:J

.field private mSecond:J

.field private mSortFlgOrder:Z

.field final synthetic this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;Z)V
    .locals 4
    .param p2, "aSortFlgOrder"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 634
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->this$1:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mSortFlgOrder:Z

    .line 617
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mFirst:J

    .line 619
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mSecond:J

    .line 635
    iput-boolean p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mSortFlgOrder:Z

    .line 636
    return-void
.end method

.method private compareFlgOrder()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 681
    const-wide/16 v0, 0x0

    .line 682
    .local v0, "result":J
    const/4 v2, 0x0

    .line 683
    .local v2, "retVal":I
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mSortFlgOrder:Z

    if-eqz v3, :cond_1

    .line 684
    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mFirst:J

    iget-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mSecond:J

    sub-long v0, v4, v6

    .line 688
    :goto_0
    cmp-long v3, v0, v8

    if-lez v3, :cond_2

    .line 689
    const/4 v2, 0x1

    .line 696
    :cond_0
    :goto_1
    return v2

    .line 686
    :cond_1
    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mSecond:J

    iget-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mFirst:J

    sub-long v0, v4, v6

    goto :goto_0

    .line 690
    :cond_2
    cmp-long v3, v0, v8

    if-gez v3, :cond_0

    .line 691
    const/4 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public compare(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 4
    .param p1, "aFirst"    # Ljava/lang/Long;
    .param p2, "aSecond"    # Ljava/lang/Long;

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "retVal":I
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mFirst:J

    .line 658
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->mSecond:J

    .line 659
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->compareFlgOrder()I

    move-result v0

    .line 663
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 613
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv$MmbFcContentsSdpStorageDemandTagComparatorSv;->compare(Ljava/lang/Long;Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
