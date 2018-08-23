.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv$MmbStRecordingEventWrapperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv$Stub;
.source "MmbStRecordingManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbStRecordingEventWrapperSv"
.end annotation


# instance fields
.field private mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv$Stub;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv$MmbStRecordingEventWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;

    .line 159
    return-void
.end method


# virtual methods
.method public onChangeStateRec(IIII)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aResult"    # I
    .param p3, "aUserParam"    # I
    .param p4, "aPrgNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingManagerSv$MmbStRecordingEventWrapperSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerSv;->onChangeStateRec(IIII)V

    .line 179
    return-void
.end method
