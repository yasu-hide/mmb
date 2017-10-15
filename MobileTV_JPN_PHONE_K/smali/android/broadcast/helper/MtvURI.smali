.class public Landroid/broadcast/helper/MtvURI;
.super Ljava/lang/Object;
.source "MtvURI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvURI"


# instance fields
.field private chnlNum:I

.field private fileIndex:I

.field private filePath:Ljava/lang/String;

.field isSwitchService:Z

.field private pbType:I

.field private serviceID:I

.field private tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 34
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 35
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 36
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 40
    iput v1, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 41
    iput-boolean v1, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "pbType"    # I
    .param p2, "chnlNum"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 34
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 35
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 36
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 40
    iput v1, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 41
    iput-boolean v1, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 57
    iput p1, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 58
    iput p2, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 59
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "pbType"    # I
    .param p2, "chnlNum"    # I
    .param p3, "serviceID"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 34
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 35
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 36
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 40
    iput v1, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 41
    iput-boolean v1, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 79
    iput p1, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 80
    iput p2, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 81
    iput p3, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 83
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;[I)V
    .locals 3
    .param p1, "pbType"    # I
    .param p2, "origNWID"    # I
    .param p3, "transStreamID"    # I
    .param p4, "servID"    # I
    .param p5, "compTag"    # I
    .param p6, "destURI"    # Ljava/lang/String;
    .param p7, "affilID"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 34
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 35
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 36
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 40
    iput v1, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 41
    iput-boolean v1, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 141
    iput p1, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 142
    new-instance v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;

    invoke-direct {v0}, Landroid/broadcast/helper/types/MtvOneSegTVLink;-><init>()V

    iput-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 144
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iput p2, v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    .line 146
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iput p3, v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    .line 147
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iput p4, v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    .line 148
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iput p5, v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    .line 149
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iput-object p6, v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    iput-object p7, v0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->affilID:[I

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "MtvURI"

    const-string v1, "Failure in creating object for tvLinkURI!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(IIIZ)V
    .locals 3
    .param p1, "pbType"    # I
    .param p2, "chnlNum"    # I
    .param p3, "serviceID"    # I
    .param p4, "bSwitchService"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 34
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 35
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 36
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 40
    iput v1, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 41
    iput-boolean v1, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 89
    iput p1, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 90
    iput p2, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 91
    iput p3, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 92
    iput-boolean p4, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 93
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 3
    .param p1, "pbType"    # I
    .param p2, "fPath"    # Ljava/lang/String;
    .param p3, "fileIndex"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 34
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 35
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 36
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 40
    iput v1, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 41
    iput-boolean v1, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 67
    iput p1, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 68
    iput-object p2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 69
    iput p3, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 3
    .param p1, "pbType"    # I
    .param p2, "fPath"    # Ljava/lang/String;
    .param p3, "fileIndex"    # I
    .param p4, "serviceID"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 34
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    .line 35
    iput v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 36
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    .line 40
    iput v1, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 41
    iput-boolean v1, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    .line 129
    iput p1, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    .line 130
    iput-object p2, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    .line 131
    iput p3, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    .line 132
    iput p4, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    .line 133
    return-void
.end method


# virtual methods
.method public chnlNum()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    return v0
.end method

.method public fileIndex()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    return v0
.end method

.method public filePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public isSwitchService()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/broadcast/helper/MtvURI;->isSwitchService:Z

    return v0
.end method

.method public pbType()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    return v0
.end method

.method public serviceID()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Landroid/broadcast/helper/MtvURI;->serviceID:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pbType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/broadcast/helper/MtvURI;->pbType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chnlNum : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/broadcast/helper/MtvURI;->chnlNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fileIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/broadcast/helper/MtvURI;->fileIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filePath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/broadcast/helper/MtvURI;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tvLink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tvLink()Landroid/broadcast/helper/types/MtvOneSegTVLink;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/broadcast/helper/MtvURI;->tvLink:Landroid/broadcast/helper/types/MtvOneSegTVLink;

    return-object v0
.end method
