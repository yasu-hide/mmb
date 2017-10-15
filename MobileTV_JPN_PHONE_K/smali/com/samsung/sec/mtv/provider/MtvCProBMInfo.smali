.class public Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
.super Ljava/lang/Object;
.source "MtvCProBMInfo.java"


# static fields
.field public static final CPROBMTYPE_HTML_CONTENTS:I = 0x3

.field public static final CPROBMTYPE_LINK_CONTENTS:I = 0x1

.field public static final CPROBMTYPE_MEMO:I = 0x0

.field public static final CPROBMTYPE_NO_LINK_CONTENTS:I = 0x2

.field public static final CPROBMTYPE_SPECIAL_NETWORK_CONTENTS:I = 0x4


# instance fields
.field public CproBMType:I

.field public affiliationID:[I

.field public dstURI:Ljava/lang/String;

.field public id:I

.field public index:I

.field public originalNetworkID:I

.field public outline:Ljava/lang/String;

.field public reserved:Ljava/lang/String;

.field public serviceID:I

.field public title:Ljava/lang/String;

.field public transportStreamID:I

.field public validdate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    .line 42
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->CproBMType:I

    .line 43
    iput-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->title:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->dstURI:Ljava/lang/String;

    .line 45
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->originalNetworkID:I

    .line 46
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->transportStreamID:I

    .line 47
    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->serviceID:I

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    .line 49
    iput-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->outline:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->reserved:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getAffiliationID()[I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->affiliationID:[I

    return-object v0
.end method

.method public getCproBMType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->CproBMType:I

    return v0
.end method

.method public getDstURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->dstURI:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->id:I

    return v0
.end method

.method public getOriginalNetworkID()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->originalNetworkID:I

    return v0
.end method

.method public getOutline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->outline:Ljava/lang/String;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceID()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->serviceID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportStreamID()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->transportStreamID:I

    return v0
.end method

.method public getValidDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->validdate:Ljava/util/Date;

    return-object v0
.end method
