.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
.source "MmbFcIndividualResultSv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 54
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "cancel() is not supported."

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSessionId()I
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualResultSv<TT;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "result":I
    return v0
.end method
