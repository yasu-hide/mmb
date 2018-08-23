.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv$Stub;
.source "MmbFwInternalFacadeSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwCallbackWrapperSv"
.end annotation


# instance fields
.field mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv$Stub;-><init>()V

    .line 627
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;

    .line 628
    return-void
.end method


# virtual methods
.method public onFinishFunctionCallback(I)V
    .locals 1
    .param p1, "aErrorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;

    invoke-interface {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;->onFinishFunctionCallback(I)V

    .line 644
    return-void
.end method

.method public onFinishReleaseResourceCallback(I)V
    .locals 1
    .param p1, "aResultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv$MmbFwCallbackWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;

    invoke-interface {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;->onFinishReleaseResourceCallback(I)V

    .line 659
    return-void
.end method
