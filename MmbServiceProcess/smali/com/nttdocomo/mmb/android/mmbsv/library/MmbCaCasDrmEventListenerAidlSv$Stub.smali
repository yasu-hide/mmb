.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub;
.super Landroid/os/Binder;
.source "MmbCaCasDrmEventListenerAidlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.library.MmbCaCasDrmEventListenerAidlSv"

    invoke-virtual {p0, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.library.MmbCaCasDrmEventListenerAidlSv"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 51
    :sswitch_0
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.library.MmbCaCasDrmEventListenerAidlSv"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.library.MmbCaCasDrmEventListenerAidlSv"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv$Stub;->onContractCancelled([Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
