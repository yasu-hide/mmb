.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;
.super Ljava/lang/Object;
.source "MmbStRecCmMwSetThumbnail.java"


# instance fields
.field public mPrgNo:I

.field public mThumbnail:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mPrgNo:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mThumbnail:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrgNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSetThumbnail;->mPrgNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
