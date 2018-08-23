.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub;
.super Landroid/os/Binder;
.source "MmbCoOpenStateListenerAidlSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.library.MmbCoOpenStateListenerAidlSv"

    invoke-virtual {p0, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.library.MmbCoOpenStateListenerAidlSv"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 50
    :sswitch_0
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.library.MmbCoOpenStateListenerAidlSv"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v2, "com.nttdocomo.mmb.android.mmbsv.library.MmbCoOpenStateListenerAidlSv"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub;->onOpenStateChange(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
