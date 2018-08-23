.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;
.super Landroid/os/Binder;
.source "MmbFwIpcResponseSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

.field static final TRANSACTION_notifyBroadcastAction:I = 0xc

.field static final TRANSACTION_notifyFatalError:I = 0xd

.field static final TRANSACTION_receiveHello:I = 0xe

.field static final TRANSACTION_setBitmapResult:I = 0xa

.field static final TRANSACTION_setBooleanResult:I = 0x2

.field static final TRANSACTION_setDoubleResult:I = 0x6

.field static final TRANSACTION_setError:I = 0xb

.field static final TRANSACTION_setFloatResult:I = 0x5

.field static final TRANSACTION_setIntResult:I = 0x3

.field static final TRANSACTION_setListResult:I = 0x8

.field static final TRANSACTION_setLongResult:I = 0x4

.field static final TRANSACTION_setObjectResult:I = 0x9

.field static final TRANSACTION_setProgress:I = 0x1

.field static final TRANSACTION_setStringResult:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p0, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 58
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 59
    .local v4, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setProgress(IIII)V

    goto :goto_0

    .line 64
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_2
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    .line 71
    .local v2, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setBooleanResult(IIZ)V

    goto :goto_0

    .line 70
    .end local v2    # "_arg2":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 76
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setIntResult(III)V

    goto :goto_0

    .line 88
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_4
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 95
    .local v2, "_arg2":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setLongResult(IIJ)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :sswitch_5
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 107
    .local v2, "_arg2":F
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setFloatResult(IIF)V

    goto :goto_0

    .line 112
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :sswitch_6
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 119
    .local v2, "_arg2":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setDoubleResult(IID)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":D
    :sswitch_7
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setStringResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg1":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 143
    .local v5, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "_arg2":Ljava/util/List;
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setListResult(IILjava/util/List;)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_9
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 156
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-virtual {v7, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->createFromParcel(Landroid/os/Parcel;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    .line 161
    .local v2, "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    goto/16 :goto_0

    .line 159
    .end local v2    # "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    goto :goto_2

    .line 166
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :sswitch_a
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 178
    .local v2, "_arg2":Landroid/graphics/Bitmap;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setBitmapResult(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 176
    .end local v2    # "_arg2":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 183
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/graphics/Bitmap;
    :sswitch_b
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 190
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->CREATOR:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;

    invoke-virtual {v7, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->createFromParcel(Landroid/os/Parcel;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    .line 195
    .local v2, "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    goto/16 :goto_0

    .line 193
    .end local v2    # "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    goto :goto_4

    .line 200
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :sswitch_c
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 203
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 208
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->notifyBroadcastAction(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_5

    .line 213
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_d
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->notifyFatalError()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 220
    :sswitch_e
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.common.MmbFwIpcResponseSv"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;->receiveHello()V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
