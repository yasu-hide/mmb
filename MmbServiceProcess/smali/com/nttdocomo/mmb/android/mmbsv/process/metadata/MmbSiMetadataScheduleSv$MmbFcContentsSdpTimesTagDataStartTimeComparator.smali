.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv$MmbFcContentsSdpTimesTagDataStartTimeComparator;
.super Ljava/lang/Object;
.source "MmbSiMetadataScheduleSv.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFcContentsSdpTimesTagDataStartTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265b456005621991L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)I
    .locals 5
    .param p1, "aArg0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .param p2, "aArg1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .prologue
    .line 111
    iget-wide v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    .line 112
    .local v0, "startTime1":J
    iget-wide v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    .line 113
    .local v2, "startTime2":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 114
    const/4 v4, -0x1

    .line 118
    :goto_0
    return v4

    .line 115
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 116
    const/4 v4, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv$MmbFcContentsSdpTimesTagDataStartTimeComparator;->compare(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)I

    move-result v0

    return v0
.end method
