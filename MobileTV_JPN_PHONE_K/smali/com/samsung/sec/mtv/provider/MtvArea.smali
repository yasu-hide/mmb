.class public Lcom/samsung/sec/mtv/provider/MtvArea;
.super Ljava/lang/Object;
.source "MtvArea.java"


# instance fields
.field public final mAreaId:I

.field public final mAreaName:Ljava/lang/String;

.field public mUriId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "areaId"    # I
    .param p2, "areaName"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mUriId:I

    .line 8
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    .line 9
    if-nez p2, :cond_0

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    .line 13
    :goto_0
    return-void

    .line 12
    :cond_0
    iput-object p2, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "areaId"    # I
    .param p2, "areaName"    # Ljava/lang/String;
    .param p3, "UriId"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mUriId:I

    .line 16
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    .line 17
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mUriId:I

    .line 18
    if-nez p2, :cond_0

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    iput-object p2, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    const-string v0, "MtvArea"

    .line 26
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[mUriId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mUriId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[areaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method
