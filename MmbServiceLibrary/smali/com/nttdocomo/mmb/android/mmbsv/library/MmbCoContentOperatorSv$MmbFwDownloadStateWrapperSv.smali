.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv$Stub;
.source "MmbCoContentOperatorSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwDownloadStateWrapperSv"
.end annotation


# instance fields
.field private mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv$Stub;-><init>()V

    .line 589
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;

    .line 590
    return-void
.end method


# virtual methods
.method public onBroadcastLevelChange(I)V
    .locals 1
    .param p1, "aLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;

    invoke-interface {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;->onBroadcastLevelChange(I)V

    .line 683
    return-void
.end method

.method public onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .param p3, "aState"    # I
    .param p4, "aReturnCode"    # Ljava/lang/String;
    .param p5, "aErrorDetail"    # Ljava/lang/String;
    .param p6, "aReturnMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public onDownloadProgressChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 632
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;

    invoke-interface {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;->onDownloadProgressChange(Ljava/lang/String;I)V

    .line 633
    return-void
.end method

.method public onDownloadStateChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwDownloadStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;

    invoke-interface {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerSv;->onDownloadStateChange(Ljava/lang/String;I)V

    .line 613
    return-void
.end method
