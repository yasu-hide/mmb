.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
.super Ljava/lang/Object;
.source "MmbFwServiceFacadeSv.java"


# instance fields
.field private mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 50
    return-void
.end method


# virtual methods
.method protected createResult()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 161
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getResponse()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 165
    return-object v0
.end method

.method protected getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v0

    .line 118
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "result":Landroid/content/Context;
    return-object v0
.end method

.method public getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 95
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    return-object v0
.end method

.method protected getSessionId()I
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    move-result v0

    .line 141
    .local v0, "result":I
    return v0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 375
    return-void
.end method

.method public notifyOnCreate(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 229
    return-void
.end method

.method public notifyOnDestroy(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 333
    return-void
.end method

.method public notifyOnLoad()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public notifyOnPause(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 291
    return-void
.end method

.method public notifyOnRestart(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 354
    return-void
.end method

.method public notifyOnResume(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 270
    return-void
.end method

.method public notifyOnStart(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 250
    return-void
.end method

.method public notifyOnStop(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 0
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 312
    return-void
.end method

.method public notifyOnUnload()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method
