.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetSv;
.super Ljava/nio/charset/Charset;
.source "MmbFwAribTrB33CharsetSv.java"


# instance fields
.field private final DEBUG:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "aCanonicalName"    # Ljava/lang/String;
    .param p2, "aAliases"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetSv;->DEBUG:Z

    .line 53
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 1
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 70
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetSv;

    .line 74
    .local v0, "result":Z
    return v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;-><init>(Ljava/nio/charset/Charset;)V

    .line 96
    .local v0, "result":Ljava/nio/charset/CharsetDecoder;
    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
