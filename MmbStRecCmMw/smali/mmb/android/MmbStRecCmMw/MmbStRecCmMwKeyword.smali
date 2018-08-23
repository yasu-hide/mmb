.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;
.super Ljava/lang/Object;
.source "MmbStRecCmMwKeyword.java"


# instance fields
.field public mKeyword:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeyword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwKeyword;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "mString":Ljava/lang/String;
    return-object v0
.end method
