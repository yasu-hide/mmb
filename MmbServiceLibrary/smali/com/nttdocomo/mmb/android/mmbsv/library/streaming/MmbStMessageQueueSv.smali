.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;
.super Ljava/lang/Object;
.source "MmbStMessageQueueSv.java"


# instance fields
.field private args:[Ljava/lang/Object;

.field private processId:I

.field private resultObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "aProcessId"    # I
    .param p3, "aArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "aResultObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;>;"
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->processId:I

    .line 35
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->args:[Ljava/lang/Object;

    .line 36
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->resultObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 59
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->processId:I

    .line 60
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->args:[Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->resultObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 65
    return-void
.end method


# virtual methods
.method protected getArgument()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method protected getProcessId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->processId:I

    return v0
.end method

.method protected getResultObj()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStResultDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->resultObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    return-object v0
.end method

.method protected varargs setArgument([Ljava/lang/Object;)V
    .locals 0
    .param p1, "aArgs"    # [Ljava/lang/Object;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStMessageQueueSv;->args:[Ljava/lang/Object;

    .line 84
    return-void
.end method
