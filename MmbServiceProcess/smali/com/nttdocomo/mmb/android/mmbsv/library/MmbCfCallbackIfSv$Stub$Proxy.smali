.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub$Proxy;
.super Ljava/lang/Object;
.source "MmbCfCallbackIfSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .locals 5
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.library.MmbCfCallbackIfSv"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 107
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-void

    .line 106
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .locals 5
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.library.MmbCfCallbackIfSv"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 132
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 133
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 131
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
