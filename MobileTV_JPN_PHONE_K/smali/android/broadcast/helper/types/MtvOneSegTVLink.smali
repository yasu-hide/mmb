.class public Landroid/broadcast/helper/types/MtvOneSegTVLink;
.super Ljava/lang/Object;
.source "MtvOneSegTVLink.java"


# instance fields
.field public affilID:[I

.field public compTag:I

.field public destURI:Ljava/lang/String;

.field public origNWID:I

.field public servID:I

.field public transStreamID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    .line 31
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    .line 32
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    .line 33
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    .line 34
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->affilID:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origNWID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->origNWID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " transStreamID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->transStreamID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " servID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->servID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " compTag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->compTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destURI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegTVLink;->destURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
