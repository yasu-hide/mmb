.class public Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
.super Ljava/lang/Exception;
.source "MmbStRecCmMwException.java"


# instance fields
.field protected mErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;
    .param p2, "aErrorCode"    # I

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error code -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->mErrorCode:I

    .line 41
    iput p2, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->mErrorCode:I

    .line 42
    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->mErrorCode:I

    return v0
.end method
