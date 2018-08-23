.class Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;
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
    name = "MmbFwGaijiDecoderSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 12
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x7e

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 999
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->readDoubleBytes(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1000
    .local v1, "dbc":I
    shr-int/lit8 v7, v1, 0x8

    and-int/lit8 v2, v7, 0x7f

    .line 1001
    .local v2, "hi":I
    shr-int/lit8 v7, v1, 0x0

    and-int/lit8 v4, v7, 0x7f

    .line 1002
    .local v4, "lo":I
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    const/16 v8, 0x75

    invoke-virtual {v7, v2, v8, v11, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 1003
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    const/16 v8, 0x21

    invoke-virtual {v7, v4, v8, v11, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->assertBetween(IIILjava/nio/ByteBuffer;)V

    .line 1006
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)I

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1009
    :cond_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$1000()[[I

    move-result-object v7

    add-int/lit8 v8, v2, -0x75

    aget-object v5, v7, v8

    .line 1010
    .local v5, "row":[I
    if-nez v5, :cond_1

    .line 1011
    new-instance v7, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v7

    .line 1013
    :cond_1
    add-int/lit8 v7, v4, -0x21

    aget v0, v5, v7

    .line 1014
    .local v0, "codePoint":I
    const v7, 0xfffe

    if-ne v0, v7, :cond_3

    .line 1016
    shl-int/lit8 v7, v2, 0x8

    or-int v3, v7, v4

    .line 1017
    .local v3, "jis":I
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$1100()Ljava/util/Map;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1018
    .local v6, "str":Ljava/lang/String;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-virtual {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1019
    const-string v7, "unmappable char %x"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    new-instance v7, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v7

    .line 1022
    :cond_2
    invoke-virtual {p2, v6}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 1023
    .end local v3    # "jis":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 1025
    new-instance v7, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    throw v7

    .line 1027
    :cond_4
    new-instance v7, Ljava/lang/String;

    new-array v8, v9, [I

    aput v0, v8, v10

    invoke-direct {v7, v8, v10, v9}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    goto :goto_0
.end method
