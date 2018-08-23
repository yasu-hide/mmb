.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;
.source "MmbFwEucJis2004CharsetDecoderSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv$MmbFwExtendedSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv$MmbFwKatakanaSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv$MmbFwBasicSv;
    }
.end annotation


# static fields
.field private static final LIGACHAR_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CHARS_PER_BYTE:I

.field private static final SS2:I = 0x8e

.field private static final SS3:I = 0x8f


# instance fields
.field private final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v1, 0xa4f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u304b\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const v1, 0xa4f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u304d\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const v1, 0xa4f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u304f\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const v1, 0xa4fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u3051\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const v1, 0xa4fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u3053\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const v1, 0xa5f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30ab\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const v1, 0xa5f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30ad\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const v1, 0xa5f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30af\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const v1, 0xa5fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30b1\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const v1, 0xa5fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30b3\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const v1, 0xa5fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30bb\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const v1, 0xa5fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30c4\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const v1, 0xa5fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u30c8\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const v1, 0xa6f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u31f7\u309a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const v1, 0xabc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u00e6\u0300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const v1, 0xabc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0254\u0300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const v1, 0xabc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0254\u0301"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const v1, 0xabca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u028c\u0300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const v1, 0xabcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u028c\u0301"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const v1, 0xabcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0259\u0300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const v1, 0xabcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0259\u0301"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const v1, 0xabce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u025a\u0300"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const v1, 0xabcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u025a\u0301"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const v1, 0xabe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u02e9\u02e5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const v1, 0xabe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u02e5\u02e9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->LIGACHAR_MAP:Ljava/util/Map;

    .line 80
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->getMaxChars(Ljava/util/Collection;)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->MAX_CHARS_PER_BYTE:I

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->MAX_CHARS_PER_BYTE:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->DEBUG:Z

    .line 103
    return-void
.end method

.method private decodeEuc(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;
    .param p3, "aHiData"    # Ljava/lang/Object;
    .param p4, "aLoByte"    # I
    .param p5, "aEuc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation

    .prologue
    const v6, 0xfffe

    .line 165
    instance-of v5, p3, [I

    if-eqz v5, :cond_4

    .line 166
    check-cast p3, [I

    .end local p3    # "aHiData":Ljava/lang/Object;
    move-object v3, p3

    check-cast v3, [I

    .line 167
    .local v3, "intRow":[I
    add-int/lit16 v5, p4, -0xa1

    aget v2, v3, v5

    .line 168
    .local v2, "codePoint":I
    if-ne v2, v6, :cond_1

    .line 170
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->LIGACHAR_MAP:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    .local v4, "ucs":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    new-instance v5, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v5

    .line 174
    :cond_0
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    .line 207
    .end local v2    # "codePoint":I
    .end local v3    # "intRow":[I
    .end local v4    # "ucs":Ljava/lang/String;
    :goto_0
    return-void

    .line 175
    .restart local v2    # "codePoint":I
    .restart local v3    # "intRow":[I
    :cond_1
    if-nez v2, :cond_2

    .line 177
    new-instance v5, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v5

    .line 178
    :cond_2
    const v5, 0xffff

    if-gt v2, v5, :cond_3

    .line 180
    int-to-char v5, v2

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->toUtf16(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 185
    .end local v2    # "codePoint":I
    .end local v3    # "intRow":[I
    .restart local p3    # "aHiData":Ljava/lang/Object;
    :cond_4
    instance-of v5, p3, [C

    if-eqz v5, :cond_8

    .line 186
    check-cast p3, [C

    .end local p3    # "aHiData":Ljava/lang/Object;
    move-object v1, p3

    check-cast v1, [C

    .line 187
    .local v1, "charRow":[C
    add-int/lit16 v5, p4, -0xa1

    aget-char v0, v1, v5

    .line 188
    .local v0, "ch":C
    if-ne v0, v6, :cond_6

    .line 190
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->LIGACHAR_MAP:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    .restart local v4    # "ucs":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 192
    new-instance v5, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v5

    .line 194
    :cond_5
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 195
    .end local v4    # "ucs":Ljava/lang/String;
    :cond_6
    if-nez v0, :cond_7

    .line 197
    new-instance v5, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v5

    .line 199
    :cond_7
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 202
    .end local v0    # "ch":C
    .end local v1    # "charRow":[C
    .restart local p3    # "aHiData":Ljava/lang/Object;
    :cond_8
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "bug"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 18
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v14, v2, 0xff

    .line 125
    .local v14, "firstByte":I
    const/16 v2, 0x7f

    if-gt v14, v2, :cond_0

    .line 127
    int-to-byte v2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    :goto_0
    return-void

    .line 128
    :cond_0
    const/16 v2, 0x8e

    if-ne v14, v2, :cond_1

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v6, v2, 0xff

    .line 131
    .local v6, "kanaByte":I
    const/16 v2, 0xa1

    const/16 v3, 0xfe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 132
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv$MmbFwKatakanaSv;->access$000()[Ljava/lang/Object;

    move-result-object v17

    .line 133
    .local v17, "table":[Ljava/lang/Object;
    shl-int/lit8 v2, v14, 0x8

    or-int v7, v2, v6

    .line 134
    .local v7, "euc":I
    const/4 v2, 0x0

    aget-object v5, v17, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->decodeEuc(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/lang/Object;II)V

    goto :goto_0

    .line 137
    .end local v6    # "kanaByte":I
    .end local v7    # "euc":I
    .end local v17    # "table":[Ljava/lang/Object;
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv$MmbFwBasicSv;->access$100()[Ljava/lang/Object;

    move-result-object v17

    .line 138
    .restart local v17    # "table":[Ljava/lang/Object;
    const/16 v16, 0x0

    .line 139
    .local v16, "prefix":I
    const/16 v2, 0x8f

    if-ne v14, v2, :cond_2

    .line 140
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv$MmbFwExtendedSv;->access$200()[Ljava/lang/Object;

    move-result-object v17

    .line 141
    move/from16 v16, v14

    .line 142
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v14, v2, 0xff

    .line 144
    :cond_2
    move v15, v14

    .line 145
    .local v15, "hi":I
    const/16 v2, 0xa1

    const/16 v3, 0xfe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 146
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v12, v2, 0xff

    .line 147
    .local v12, "lo":I
    const/16 v2, 0xa1

    const/16 v3, 0xfe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v2, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 148
    shl-int/lit8 v2, v16, 0x10

    shl-int/lit8 v3, v15, 0x8

    or-int/2addr v2, v3

    or-int v7, v2, v12

    .line 149
    .restart local v7    # "euc":I
    add-int/lit8 v2, v15, -0x80

    add-int/lit8 v2, v2, -0x21

    aget-object v11, v17, v2

    .line 150
    .local v11, "row":Ljava/lang/Object;
    if-nez v11, :cond_3

    .line 151
    new-instance v2, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v2

    :cond_3
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v13, v7

    .line 153
    invoke-direct/range {v8 .. v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetDecoderSv;->decodeEuc(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/lang/Object;II)V

    goto/16 :goto_0
.end method
