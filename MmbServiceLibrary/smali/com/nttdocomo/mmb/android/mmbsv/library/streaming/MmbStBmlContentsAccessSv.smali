.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;
.super Ljava/lang/Object;
.source "MmbStBmlContentsAccessSv.java"


# instance fields
.field mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 52
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 56
    return-void
.end method


# virtual methods
.method public getDownloadProgress([BZ)Z
    .locals 6
    .param p1, "aCrid"    # [B
    .param p2, "aSet"    # Z

    .prologue
    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 74
    .local v0, "crid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 76
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 77
    .local v2, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;>;"
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    .line 79
    .local v3, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    if-eqz p2, :cond_1

    .line 80
    if-nez v3, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    const/16 v5, 0x33

    if-ne v4, v5, :cond_0

    .line 88
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    return-object v0
.end method
