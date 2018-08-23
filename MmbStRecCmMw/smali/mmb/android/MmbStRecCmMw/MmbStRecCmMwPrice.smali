.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;
.super Ljava/lang/Object;
.source "MmbStRecCmMwPrice.java"


# instance fields
.field public mCurrency:I

.field public mPrice:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mPrice:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwPrice;->mCurrency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "mString":Ljava/lang/String;
    return-object v0
.end method
