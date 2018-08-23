.class Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;
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
    name = "MmbFwKanjiDecoder2Sv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 8
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xfe

    const/16 v6, 0xa1

    .line 945
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->readDoubleBytes(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 946
    .local v1, "dbc":I
    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v2, v5, 0x80

    .line 947
    .local v2, "hi":I
    shr-int/lit8 v5, v1, 0x0

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v3, v5, 0x80

    .line 948
    .local v3, "lo":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v5, v2, v6, v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 949
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v5, v3, v6, v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 952
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)I

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 968
    :goto_0
    return-void

    .line 955
    :cond_0
    const/4 v5, 0x3

    new-array v0, v5, [B

    .line 956
    .local v0, "buf":[B
    const/4 v5, 0x0

    const/16 v6, -0x71

    aput-byte v6, v0, v5

    .line 957
    const/4 v5, 0x1

    int-to-byte v6, v2

    aput-byte v6, v0, v5

    .line 958
    const/4 v5, 0x2

    int-to-byte v6, v3

    aput-byte v6, v0, v5

    .line 959
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-static {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$900(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;[B)Ljava/lang/String;

    move-result-object v4

    .line 960
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 961
    :cond_1
    new-instance v5, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v5

    .line 963
    :cond_2
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto :goto_0
.end method
