.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub;
.super Landroid/os/Binder;
.source "MmbCfCallbackIfSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.library.MmbCfCallbackIfSv"

    invoke-virtual {p0, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "com.nttdocomo.mmb.android.mmbsv.library.MmbCfCallbackIfSv"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.nttdocomo.mmb.android.mmbsv.library.MmbCfCallbackIfSv"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    move-result-object v1

    .line 57
    .local v1, "_arg1":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    :sswitch_2
    const-string v3, "com.nttdocomo.mmb.android.mmbsv.library.MmbCfCallbackIfSv"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    move-result-object v1

    .line 68
    .restart local v1    # "_arg1":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackIfSv$Stub;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method