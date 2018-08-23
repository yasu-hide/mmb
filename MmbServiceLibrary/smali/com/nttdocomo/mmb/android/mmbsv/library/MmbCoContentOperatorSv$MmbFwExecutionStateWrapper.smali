.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwExecutionStateWrapper;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv$Stub;
.source "MmbCoContentOperatorSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwExecutionStateWrapper"
.end annotation


# instance fields
.field mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv$Stub;-><init>()V

    .line 828
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwExecutionStateWrapper;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;

    .line 829
    return-void
.end method


# virtual methods
.method public onExecutionProgressChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwExecutionStateWrapper;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;

    invoke-interface {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;->onExecutionProgressChange(Ljava/lang/String;I)V

    .line 886
    return-void
.end method

.method public onExecutionStateChange(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I
    .param p3, "aFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwExecutionStateWrapper;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;

    invoke-interface {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerSv;->onExecutionStateChange(Ljava/lang/String;ILjava/lang/String;)V

    .line 866
    return-void
.end method
