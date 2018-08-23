.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;
.super Ljava/nio/charset/CharsetDecoder;
.source "MmbFwCharsetDecoderSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;


# static fields
.field private static final DEBUG:Z = false

.field protected static final REF:I = 0xfffe


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;FF)V
    .locals 0
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;
    .param p2, "aAveChars"    # F
    .param p3, "aMaxChars"    # F

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 90
    return-void
.end method

.method protected static getMaxChars(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "aCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x2

    .line 62
    .local v1, "maxChars":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 64
    goto :goto_0

    .line 68
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return v1
.end method


# virtual methods
.method protected assertBetween(IIILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "aValue"    # I
    .param p2, "aMin"    # I
    .param p3, "aMax"    # I
    .param p4, "aIn"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;->between(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v0

    .line 177
    :cond_0
    return-void
.end method

.method protected between(III)Z
    .locals 2
    .param p1, "aValue"    # I
    .param p2, "aMin"    # I
    .param p3, "aMax"    # I

    .prologue
    .line 227
    if-le p2, p3, :cond_0

    .line 228
    move v1, p2

    .line 229
    .local v1, "tmp":I
    move p2, p3

    .line 230
    move p3, v1

    .line 232
    .end local v1    # "tmp":I
    :cond_0
    if-gt p2, p1, :cond_1

    if-gt p1, p3, :cond_1

    const/4 v0, 0x1

    .line 236
    .local v0, "result":Z
    :goto_0
    return v0

    .line 232
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v4, 0x0

    .line 113
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 115
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;->decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/charset/UnmappableCharacterException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "err":Ljava/nio/BufferUnderflowException;
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 133
    .end local v0    # "err":Ljava/nio/BufferUnderflowException;
    :cond_0
    :goto_1
    return-object v1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    .local v0, "err":Ljava/nio/BufferOverflowException;
    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->printStackTrace()V

    .line 122
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 129
    goto :goto_1

    .line 123
    .end local v0    # "err":Ljava/nio/BufferOverflowException;
    :catch_2
    move-exception v0

    .line 124
    .local v0, "err":Ljava/nio/charset/MalformedInputException;
    const-string v2, "MalformedInputException"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v0}, Ljava/nio/charset/MalformedInputException;->getInputLength()I

    move-result v2

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 129
    goto :goto_1

    .line 126
    .end local v0    # "err":Ljava/nio/charset/MalformedInputException;
    :catch_3
    move-exception v0

    .line 127
    .local v0, "err":Ljava/nio/charset/UnmappableCharacterException;
    const-string v2, "MalformedInputException"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0}, Ljava/nio/charset/UnmappableCharacterException;->getInputLength()I

    move-result v2

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1
.end method

.method public abstract decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation
.end method

.method protected isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aString"    # Ljava/lang/String;

    .prologue
    .line 274
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 278
    .local v0, "result":Z
    :goto_0
    return v0

    .line 274
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readDoubleBytes(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v3, 0x0

    .line 197
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 198
    .local v1, "hi":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v2, v4, 0xff

    .line 199
    .local v2, "lo":I
    and-int/lit16 v4, v1, 0x80

    and-int/lit16 v5, v2, 0x80

    if-eq v4, v5, :cond_0

    .line 200
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    :catch_0
    move-exception v0

    .line 204
    .local v0, "err":Ljava/nio/BufferUnderflowException;
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 202
    .end local v0    # "err":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "hi":I
    .restart local v2    # "lo":I
    :cond_0
    shl-int/lit8 v4, v1, 0x8

    or-int v3, v4, v2

    .line 209
    return v3
.end method

.method protected toUtf16(I)Ljava/lang/String;
    .locals 4
    .param p1, "aUtf32"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    new-instance v0, Ljava/lang/String;

    new-array v1, v3, [I

    aput p1, v1, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([III)V

    .line 257
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
