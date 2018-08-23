.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;
.super Ljava/lang/Object;
.source "MmbStRecCmMwGenre.java"


# instance fields
.field public mGenre:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGenre="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwGenre;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "mString":Ljava/lang/String;
    return-object v0
.end method
