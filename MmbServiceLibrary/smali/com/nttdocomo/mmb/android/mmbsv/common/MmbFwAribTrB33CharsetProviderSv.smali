.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetProviderSv;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "MmbFwAribTrB33CharsetProviderSv.java"


# static fields
.field private static final CHARSET_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_NAME:Ljava/lang/String; = "X-ARIB-TR-B33"

.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    const-string v1, "X-ARIB-TR-B33"

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetSv;

    const-string v3, "X-ARIB-TR-B33"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetSv;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetProviderSv;->CHARSET_MAP:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    return-void
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "aCharsetName"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetProviderSv;->CHARSET_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 118
    .local v0, "result":Ljava/nio/charset/Charset;
    return-object v0
.end method


# virtual methods
.method public charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "aCharsetName"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetProviderSv;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 94
    .local v0, "result":Ljava/nio/charset/Charset;
    return-object v0
.end method

.method public charsets()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetProviderSv;->CHARSET_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    return-object v0
.end method
