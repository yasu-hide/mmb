.class public Landroid/broadcast/helper/types/MtvOneSegChannel;
.super Ljava/lang/Object;
.source "MtvOneSegChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/broadcast/helper/types/MtvOneSegChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private numberOfPhysicalIDs:I

.field private physicalID:I

.field private physicalIDName:Ljava/lang/String;

.field private physicalIDProviderName:Ljava/lang/String;

.field private physicalIDType:I

.field private remoteKeyID:I

.field private serviceID:I

.field private serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Landroid/broadcast/helper/types/MtvOneSegChannel$1;

    invoke-direct {v0}, Landroid/broadcast/helper/types/MtvOneSegChannel$1;-><init>()V

    sput-object v0, Landroid/broadcast/helper/types/MtvOneSegChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceID:I

    .line 28
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->remoteKeyID:I

    .line 29
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceName:Ljava/lang/String;

    .line 41
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->numberOfPhysicalIDs:I

    .line 42
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalID:I

    .line 43
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDType:I

    .line 44
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDName:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDProviderName:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceID:I

    .line 28
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->remoteKeyID:I

    .line 29
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceName:Ljava/lang/String;

    .line 41
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->numberOfPhysicalIDs:I

    .line 42
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalID:I

    .line 43
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDType:I

    .line 44
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDName:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDProviderName:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceID:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->remoteKeyID:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceName:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->numberOfPhysicalIDs:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalID:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDType:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDName:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDProviderName:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberOfPhysicalIDs()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->numberOfPhysicalIDs:I

    return v0
.end method

.method public getPhysicalID()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalID:I

    return v0
.end method

.method public getPhysicalIDName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalIDProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhysicalIDType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDType:I

    return v0
.end method

.method public getRemoteKeyID()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->remoteKeyID:I

    return v0
.end method

.method public getServID()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceID:I

    return v0
.end method

.method public getServName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public setNumberOfPhysicalIDs(I)V
    .locals 0
    .param p1, "numberOfPhysicalIDs"    # I

    .prologue
    .line 107
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->numberOfPhysicalIDs:I

    .line 108
    return-void
.end method

.method public setPhysicalID(I)V
    .locals 0
    .param p1, "physicalID"    # I

    .prologue
    .line 111
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalID:I

    .line 112
    return-void
.end method

.method public setPhysicalIDName(Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalIDName"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setPhysicalIDProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "physicalIDProviderName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDProviderName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPhysicalIDType(I)V
    .locals 0
    .param p1, "physicalIDType"    # I

    .prologue
    .line 115
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDType:I

    .line 116
    return-void
.end method

.method public setRemoteKeyID(I)V
    .locals 0
    .param p1, "mRemoteKeyID"    # I

    .prologue
    .line 99
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->remoteKeyID:I

    .line 100
    return-void
.end method

.method public setServID(I)V
    .locals 0
    .param p1, "mServiceID"    # I

    .prologue
    .line 95
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceID:I

    .line 96
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServiceName"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceName:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->remoteKeyID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    :goto_0
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->numberOfPhysicalIDs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    :goto_1
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDProviderName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegChannel;->physicalIDProviderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    :goto_2
    return-void

    .line 147
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
