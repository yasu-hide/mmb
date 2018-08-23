.class public Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;
.super Ljava/lang/Object;
.source "MmbStRecCmMwCutData.java"


# instance fields
.field public mCutData:[B

.field public mCutNum:I

.field public mCutPosition:I

.field public mCutSize:I

.field public mWholeSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    .line 28
    iput v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutNum:I

    .line 31
    iput v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    .line 34
    iput v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutData:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWholeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mWholeSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCutNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCutPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCutData;->mCutSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "mString":Ljava/lang/String;
    return-object v0
.end method
