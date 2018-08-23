.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetSv;
.super Ljava/nio/charset/Charset;
.source "MmbFwEucJis2004CharsetSv.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "aCanonicalName"    # Ljava/lang/String;
    .param p2, "aAliases"    # [Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 1
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 71
    instance-of v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetSv;

    .line 75
    .local v0, "result":Z
    return v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;-><init>(Ljava/nio/charset/Charset;)V

    .line 97
    .local v0, "result":Ljava/nio/charset/CharsetDecoder;
    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
