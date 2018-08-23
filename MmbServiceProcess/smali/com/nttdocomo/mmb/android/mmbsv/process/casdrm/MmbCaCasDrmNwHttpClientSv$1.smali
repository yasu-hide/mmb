.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$1;
.super Ljava/lang/Object;
.source "MmbCaCasDrmNwHttpClientSv.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 3
    .param p1, "aException"    # Ljava/io/IOException;
    .param p2, "aExecutionCount"    # I
    .param p3, "aContext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    const/4 v2, 0x5

    if-lt p2, v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_2

    move v0, v1

    .line 240
    goto :goto_0

    .line 241
    :cond_2
    instance-of v2, p1, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v2, :cond_0

    move v0, v1

    .line 242
    goto :goto_0
.end method
