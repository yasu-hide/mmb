.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv$Stub$Proxy;
.super Ljava/lang/Object;
.source "MmbStRecordingEventListenerAidlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onChangeStateRec(IIII)V
    .locals 5
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
    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.library.MmbStRecordingEventListenerAidlSv"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
