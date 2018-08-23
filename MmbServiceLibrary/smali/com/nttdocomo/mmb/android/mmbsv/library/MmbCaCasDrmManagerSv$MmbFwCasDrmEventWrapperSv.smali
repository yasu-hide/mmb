.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv$MmbFwCasDrmEventWrapperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub;
.source "MmbCaCasDrmManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwCasDrmEventWrapperSv"
.end annotation


# instance fields
.field private mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerSv;

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub;-><init>()V

    .line 555
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv$MmbFwCasDrmEventWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerSv;

    .line 556
    return-void
.end method


# virtual methods
.method public onContractCancelled([Ljava/lang/String;)V
    .locals 1
    .param p1, "aAuthorities"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmManagerSv$MmbFwCasDrmEventWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerSv;

    invoke-interface {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerSv;->onContractCancelled([Ljava/lang/String;)V

    .line 572
    return-void
.end method
