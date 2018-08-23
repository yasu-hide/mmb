.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwUtil;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 33
    return-object p0
.end method

.method static getBufferText([B)Ljava/lang/String;
    .locals 5
    .param p0, "aBuffer"    # [B

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const-string v4, "null"

    .line 62
    :goto_0
    return-object v4

    .line 48
    :cond_0
    array-length v2, p0

    .line 49
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v2, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v3, "strb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 53
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 55
    .local v0, "bt":I
    const/16 v4, 0x10

    if-ge v0, v4, :cond_1

    .line 56
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v0    # "bt":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
