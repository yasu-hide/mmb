.class Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwDelHandlerSv;
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
    name = "MmbFwDelHandlerSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwDelHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 2
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;

    .prologue
    .line 507
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 509
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwDelHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 517
    :goto_0
    return-void

    .line 512
    :cond_0
    const/16 v0, 0x7f

    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    goto :goto_0
.end method
