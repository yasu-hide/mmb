.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;
.super Ljava/lang/Object;
.source "MmbFcContentScheduleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MmbFcComplementPossibleTimeList"
.end annotation


# instance fields
.field endTime:J

.field startTime:J

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;


# direct methods
.method private constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 4128
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4129
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->startTime:J

    .line 4130
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->endTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .param p2, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$1;

    .prologue
    .line 4128
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;)V

    return-void
.end method
