.class public Lcom/samsung/sec/mtv/provider/MtvChannel;
.super Ljava/lang/Object;
.source "MtvChannel.java"


# instance fields
.field public final mAvailable:I

.field public final mChannelName:Ljava/lang/String;

.field public final mFavorite:I

.field public mMultiChannelNo:I

.field public final mPhysicalNum:I

.field public mServiceID:I

.field public mServiceID1:I

.field public mServiceID2:I

.field public mServiceName:Ljava/lang/String;

.field public final mSlot:I

.field public mUriId:I

.field public final mVirtualNum:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;I)V
    .locals 1
    .param p1, "virNum"    # I
    .param p2, "phyNum"    # I
    .param p3, "fav"    # I
    .param p4, "available"    # I
    .param p5, "chName"    # Ljava/lang/String;
    .param p6, "slot"    # I

    .prologue
    const/4 v0, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 78
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 79
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 80
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 81
    iput p4, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 82
    iput-object p5, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 83
    iput p6, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 85
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;II)V
    .locals 1
    .param p1, "virNum"    # I
    .param p2, "phyNum"    # I
    .param p3, "fav"    # I
    .param p4, "available"    # I
    .param p5, "chName"    # Ljava/lang/String;
    .param p6, "slot"    # I
    .param p7, "uriID"    # I

    .prologue
    const/4 v0, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 87
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 88
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 89
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 90
    iput p4, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 91
    iput-object p5, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 92
    iput p6, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 93
    iput p7, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 95
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;III)V
    .locals 1
    .param p1, "virNum"    # I
    .param p2, "phyNum"    # I
    .param p3, "fav"    # I
    .param p4, "available"    # I
    .param p5, "chName"    # Ljava/lang/String;
    .param p6, "slot"    # I
    .param p7, "serviceID1"    # I
    .param p8, "serviceID2"    # I

    .prologue
    const/4 v0, -0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 111
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 112
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 113
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 114
    iput p4, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 115
    iput-object p5, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 116
    iput p6, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 117
    iput p7, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 118
    iput p8, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 121
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;IIII)V
    .locals 1
    .param p1, "virNum"    # I
    .param p2, "phyNum"    # I
    .param p3, "fav"    # I
    .param p4, "available"    # I
    .param p5, "chName"    # Ljava/lang/String;
    .param p6, "slot"    # I
    .param p7, "uriID"    # I
    .param p8, "serviceID1"    # I
    .param p9, "serviceID2"    # I

    .prologue
    const/4 v0, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 97
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 98
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 99
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 100
    iput p4, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 101
    iput-object p5, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 102
    iput p6, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 103
    iput p8, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 104
    iput p9, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 105
    iput p7, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 107
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;IIIIIILjava/lang/String;)V
    .locals 1
    .param p1, "virNum"    # I
    .param p2, "phyNum"    # I
    .param p3, "fav"    # I
    .param p4, "available"    # I
    .param p5, "chName"    # Ljava/lang/String;
    .param p6, "slot"    # I
    .param p7, "uriID"    # I
    .param p8, "serviceID1"    # I
    .param p9, "serviceID2"    # I
    .param p10, "serviceID"    # I
    .param p11, "multichannelno"    # I
    .param p12, "servName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 143
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 144
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 145
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 146
    iput p4, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 147
    iput-object p5, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 148
    iput p6, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 149
    iput p8, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 150
    iput p9, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 151
    iput p7, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 152
    iput p10, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 153
    iput p11, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 154
    iput-object p12, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;IIIIILjava/lang/String;)V
    .locals 1
    .param p1, "virNum"    # I
    .param p2, "phyNum"    # I
    .param p3, "fav"    # I
    .param p4, "available"    # I
    .param p5, "chName"    # Ljava/lang/String;
    .param p6, "slot"    # I
    .param p7, "serviceID1"    # I
    .param p8, "serviceID2"    # I
    .param p9, "serviceID"    # I
    .param p10, "multichannelno"    # I
    .param p11, "servName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 126
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 127
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 128
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 129
    iput p4, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 130
    iput-object p5, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 131
    iput p6, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 132
    iput p7, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 133
    iput p8, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 134
    iput p9, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 135
    iput p10, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 136
    iput-object p11, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/broadcast/helper/types/MtvOneSegChannel;I)V
    .locals 4
    .param p1, "serviceChannel"    # Landroid/broadcast/helper/types/MtvOneSegChannel;
    .param p2, "available"    # I

    .prologue
    const/4 v3, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 26
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 29
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServID()I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 30
    const-string v0, "Sujay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhysicalNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 32
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 33
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 34
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 45
    :goto_0
    return-void

    .line 37
    :cond_0
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 38
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 39
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 42
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/broadcast/helper/types/MtvOneSegChannel;II)V
    .locals 4
    .param p1, "serviceChannel"    # Landroid/broadcast/helper/types/MtvOneSegChannel;
    .param p2, "available"    # I
    .param p3, "multiChannelNo"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    .line 15
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    .line 16
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    .line 19
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 20
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 49
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 52
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServID()I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 53
    const-string v0, "Sujay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhysicalNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 55
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 56
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 57
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 58
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalID()I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 59
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 60
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    .line 65
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 66
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    .line 67
    iput v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 69
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    .line 70
    iput v3, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 71
    iput v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    const-string v0, "MtvChannel"

    .line 160
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[virtual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", physical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", favorite="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ser_ServiceID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ser_ServiceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", multiChannelNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method
