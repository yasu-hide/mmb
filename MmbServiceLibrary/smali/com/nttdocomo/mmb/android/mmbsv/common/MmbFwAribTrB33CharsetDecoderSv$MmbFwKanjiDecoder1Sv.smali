.class Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;
.super Ljava/lang/Object;
.source "MmbFwAribTrB33CharsetDecoderSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFwKanjiDecoder1Sv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAscii(II)C
    .locals 4
    .param p1, "aHiByte"    # I
    .param p2, "aLoByte"    # I

    .prologue
    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "result":C
    const/16 v1, 0xa3

    if-ne p1, v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    const/16 v2, 0xb0

    const/16 v3, 0xb9

    invoke-virtual {v1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->between(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    add-int/lit16 v1, p2, -0xb0

    add-int/lit8 v1, v1, 0x30

    int-to-char v0, v1

    .line 913
    :cond_0
    :goto_0
    return v0

    .line 904
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    const/16 v2, 0xc1

    const/16 v3, 0xda

    invoke-virtual {v1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->between(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 905
    add-int/lit16 v1, p2, -0xc1

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    goto :goto_0

    .line 906
    :cond_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    const/16 v2, 0xe1

    const/16 v3, 0xfa

    invoke-virtual {v1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->between(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    add-int/lit16 v1, p2, -0xe1

    add-int/lit8 v1, v1, 0x61

    int-to-char v0, v1

    goto :goto_0
.end method


# virtual methods
.method public decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 9
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xfe

    const/16 v7, 0xa1

    .line 852
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->readDoubleBytes(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 853
    .local v2, "dbc":I
    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v3, v6, 0x80

    .line 854
    .local v3, "hi":I
    shr-int/lit8 v6, v2, 0x0

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v4, v6, 0x80

    .line 855
    .local v4, "lo":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v6, v3, v7, v8, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 856
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v6, v4, v7, v8, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 859
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)I

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_0

    .line 883
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)I

    move-result v6

    const/16 v7, 0x89

    if-ne v6, v7, :cond_1

    .line 864
    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->getAscii(II)C

    move-result v0

    .line 865
    .local v0, "ascii":C
    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 871
    .end local v0    # "ascii":C
    :cond_1
    const/4 v6, 0x2

    new-array v1, v6, [B

    .line 872
    .local v1, "buf":[B
    const/4 v6, 0x0

    int-to-byte v7, v3

    aput-byte v7, v1, v6

    .line 873
    const/4 v6, 0x1

    int-to-byte v7, v4

    aput-byte v7, v1, v6

    .line 874
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-static {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;[B)Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 876
    new-instance v6, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v6

    .line 878
    :cond_2
    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto :goto_0
.end method
