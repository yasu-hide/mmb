.class public Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;
.super Ljava/lang/Object;
.source "MmbCfConflictModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmbCfLocationInfoSv"
.end annotation


# instance fields
.field private actionFlag:Z

.field private foreign:I

.field private lastLocationTime:J

.field private latitude:D

.field private longitude:D

.field private requestFlag:Z

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 5094
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5100
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->foreign:I

    .line 5104
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->latitude:D

    .line 5108
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->longitude:D

    .line 5112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->lastLocationTime:J

    .line 5116
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->requestFlag:Z

    .line 5120
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->actionFlag:Z

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .prologue
    .line 5094
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->requestFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;
    .param p1, "x1"    # Z

    .prologue
    .line 5094
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->requestFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D
    .locals 2
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .prologue
    .line 5094
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->latitude:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;
    .param p1, "x1"    # D

    .prologue
    .line 5094
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->latitude:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D
    .locals 2
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .prologue
    .line 5094
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->longitude:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;
    .param p1, "x1"    # D

    .prologue
    .line 5094
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->longitude:D

    return-wide p1
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)J
    .locals 2
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .prologue
    .line 5094
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->lastLocationTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;J)J
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;
    .param p1, "x1"    # J

    .prologue
    .line 5094
    iput-wide p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->lastLocationTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .prologue
    .line 5094
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->actionFlag:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;
    .param p1, "x1"    # Z

    .prologue
    .line 5094
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->actionFlag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .prologue
    .line 5094
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->foreign:I

    return v0
.end method

.method static synthetic access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;
    .param p1, "x1"    # I

    .prologue
    .line 5094
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->foreign:I

    return p1
.end method
