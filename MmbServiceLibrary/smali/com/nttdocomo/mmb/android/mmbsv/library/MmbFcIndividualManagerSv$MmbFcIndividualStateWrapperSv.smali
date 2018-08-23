.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv$Stub;
.source "MmbFcIndividualManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFcIndividualStateWrapperSv"
.end annotation


# instance fields
.field private mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv$Stub;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;

    .line 322
    return-void
.end method


# virtual methods
.method public onIndividualDeleted(Ljava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;

    invoke-interface {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;->onIndividualDeleted(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public onIndividualProgressChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;

    invoke-interface {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;->onIndividualProgressChange(Ljava/lang/String;I)V

    .line 398
    return-void
.end method

.method public onIndividualStateChange(Ljava/lang/String;ILjava/lang/String;)V
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
    .line 366
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualManagerSv$MmbFcIndividualStateWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;

    invoke-interface {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerSv;->onIndividualStateChange(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    return-void
.end method
