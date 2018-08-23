.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;
.source "MmbFwAribTrB33CharsetDecoderSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSingleDecoderSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwCsiHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwEscapeHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwStateHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwWidthHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwDelHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSpHandlerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwAprHandlerSv;
    }
.end annotation


# static fields
.field private static final ALTERNATIVE_MAP:Ljava/util/Map;
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

.field private static final APR:I = 0xd

.field private static final ARIB_TABLE:[[I

.field private static final CSI:I = 0x9b

.field private static final CSI_END:I = 0x20

.field private static final CSI_XCS:I = 0x66

.field private static final DEL:I = 0x7f

.field private static final ESC:I = 0x1b

.field private static final ESC_EXTEND:I = 0x24

.field private static final ESC_G0:I = 0x28

.field private static final ESC_G1:I = 0x29

.field private static final ESC_G3:I = 0x2b

.field private static final ESC_LS1R:I = 0x7e

.field private static final ESC_LS2:I = 0x6e

.field private static final ESC_LS3:I = 0x6f

.field private static final ESC_LS3R:I = 0x7c

.field private static final FULL_TABLE:Ljava/lang/String; = "\u3000\uff01\u201d\uff03\uff04\uff05\uff06\u2019\uff08\uff09\uff0a\uff0b\uff0c\uff0d\uff0e\uff0f\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff1a\uff1b\uff1c\uff1d\uff1e\uff1f\uff20\uff21\uff22\uff23\uff24\uff25\uff26\uff27\uff28\uff29\uff2a\uff2b\uff2c\uff2d\uff2e\uff2f\uff30\uff31\uff32\uff33\uff34\uff35\uff36\uff37\uff38\uff39\uff3a\uff3b\uffe5\uff3d\uff3e\uff3f\uff40\uff41\uff42\uff43\uff44\uff45\uff46\uff47\uff48\uff49\uff4a\uff4b\uff4c\uff4d\uff4e\uff4f\uff50\uff51\uff52\uff53\uff54\uff55\uff56\uff57\uff58\uff59\uff5a\uff5b\uff5c\uff5d\uffe3\u3000"

.field private static final HALF_TABLE:Ljava/lang/String; = " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~ "

.field private static final HIRAGANA_TABLE:Ljava/lang/String; = "\u3000\u3041\u3042\u3043\u3044\u3045\u3046\u3047\u3048\u3049\u304a\u304b\u304c\u304d\u304e\u304f\u3050\u3051\u3052\u3053\u3054\u3055\u3056\u3057\u3058\u3059\u305a\u305b\u305c\u305d\u305e\u305f\u3060\u3061\u3062\u3063\u3064\u3065\u3066\u3067\u3068\u3069\u306a\u306b\u306c\u306d\u306e\u306f\u3070\u3071\u3072\u3073\u3074\u3075\u3076\u3077\u3078\u3079\u307a\u307b\u307c\u307d\u307e\u307f\u3080\u3081\u3082\u3083\u3084\u3085\u3086\u3087\u3088\u3089\u308a\u308b\u308c\u308d\u308e\u308f\u3090\u3091\u3092\u3093\u3000\u3000\u3000\u309d\u309e\u30fc\u3002\u300c\u300d\u3001\u30fb\u3000"

.field private static final KATAKANA_TABLE:Ljava/lang/String; = "\u3000\u30a1\u30a2\u30a3\u30a4\u30a5\u30a6\u30a7\u30a8\u30a9\u30aa\u30ab\u30ac\u30ad\u30ae\u30af\u30b0\u30b1\u30b2\u30b3\u30b4\u30b5\u30b6\u30b7\u30b8\u30b9\u30ba\u30bb\u30bc\u30bd\u30be\u30bf\u30c0\u30c1\u30c2\u30c3\u30c4\u30c5\u30c6\u30c7\u30c8\u30c9\u30ca\u30cb\u30cc\u30cd\u30ce\u30cf\u30d0\u30d1\u30d2\u30d3\u30d4\u30d5\u30d6\u30d7\u30d8\u30d9\u30da\u30db\u30dc\u30dd\u30de\u30df\u30e0\u30e1\u30e2\u30e3\u30e4\u30e5\u30e6\u30e7\u30e8\u30e9\u30ea\u30eb\u30ec\u30ed\u30ee\u30ef\u30f0\u30f1\u30f2\u30f3\u30f4\u30f5\u30f6\u30fd\u30fe\u30fc\u3002\u300c\u300d\u3001\u30fb\u3000"

.field private static final LS0:I = 0xf

.field private static final LS1:I = 0xe

.field private static final MAX_CHARS_PER_BYTE:I

.field private static final MSZ:I = 0x89

.field private static final NSZ:I = 0x8a

.field private static final SP:I = 0x20

.field private static final SS2:I = 0x19

.field private static final SS3:I = 0x1d

.field private static final XCS_END:I = 0x31

.field private static final XCS_START:I = 0x30


# instance fields
.field private final DEBUG:Z

.field private final alphaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

.field private charWidth:I

.field private final dbcMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;",
            ">;"
        }
    .end annotation
.end field

.field private eucDecoder:Ljava/nio/charset/CharsetDecoder;

.field private final gaijiDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

.field private glIndex:I

.field private grIndex:I

.field private final hiraganaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

.field private final invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

.field private final kanjiDecoder1:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

.field private final kanjiDecoder2:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

.field private final katakanaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

.field private final sbcMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;",
            ">;"
        }
    .end annotation
.end field

.field private ssIndex:I

.field private switchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;",
            ">;"
        }
    .end annotation
.end field

.field private xcsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x5e

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0x7c3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6c0f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/16 v1, 0x7c3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u526f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/16 v1, 0x7c3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/16 v1, 0x7c3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u6545"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v1, 0x7c3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u524d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/16 v1, 0x7c3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u65b0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v1, 0x7c58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(vn)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v1, 0x7c59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(ob)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/16 v1, 0x7c5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(cb)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/16 v1, 0x7c5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "( ce"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const/16 v1, 0x7c5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mb )"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/16 v1, 0x7c5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(hp)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 v1, 0x7c5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(br)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/16 v1, 0x7c5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\uff50)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/16 v1, 0x7c60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\uff53)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/16 v1, 0x7c61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(ms)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/16 v1, 0x7c62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\uff54)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const/16 v1, 0x7c63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(bs)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v1, 0x7c64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(\uff42)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v1, 0x7c65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(tb)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/16 v1, 0x7c66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(tp)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/16 v1, 0x7c67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(ds)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v1, 0x7c68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(ag)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v1, 0x7c69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(eg)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/16 v1, 0x7c6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(vo)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v1, 0x7c6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(fl)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v1, 0x7c6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "( ke"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v1, 0x7c6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "y  )"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v1, 0x7c6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "( sa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/16 v1, 0x7c6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "x  )"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/16 v1, 0x7c70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "( sy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v1, 0x7c71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "n  )"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v1, 0x7c72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "( or"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/16 v1, 0x7c73

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "g  )"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v1, 0x7c74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "( pe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v1, 0x7c75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "r  )"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ALTERNATIVE_MAP:Ljava/util/Map;

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->getMaxChars(Ljava/util/Collection;)I

    move-result v1

    sput v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->MAX_CHARS_PER_BYTE:I

    .line 1069
    const/16 v1, 0xa

    new-array v1, v1, [[I

    const/4 v2, 0x0

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v5, v1, v2

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ARIB_TABLE:[[I

    return-void

    :array_0
    .array-data 4
        0x3402
        0xe016
        0x4efd
        0x4eff
        0x4f9a
        0x4fc9
        0x509c
        0x511e
        0x51bc
        0x351f
        0x5307
        0x5361
        0x536c
        0x8a79
        0xe017
        0x544d
        0x5496
        0x549c
        0x54a9
        0x550e
        0x554a
        0x5672
        0x56e4
        0x5733
        0x5734
        0x585a
        0x5880
        0x59e4
        0x5a23
        0x5a55
        0x5bec
        0xfa11
        0x37e2
        0x5eac
        0x5f34
        0x5f45
        0x5fb7
        0x6017
        0xe000
        0x6130
        0x6624
        0x66c8
        0x66d9
        0x66fa
        0x66fb
        0x6852
        0x9fc4
        0x6911
        0x693b
        0x6a45
        0x6a91
        0x6adb
        0xe018
        0xe019
        0xe01a
        0x6bf1
        0x6ce0
        0x6d2e
        0x6d77
        0x6dbf
        0x6dca
        0x6df8
        0x6e1a
        0x6f5e
        0x6ff9
        0x7064
        0xe002
        0xe01b
        0x7147
        0x71c1
        0x7200
        0x739f
        0x73a8
        0x73c9
        0x73d6
        0x741b
        0x7421
        0x7422
        0x7426
        0x742a
        0x742c
        0x7439
        0x744b
        0x3eda
        0x7575
        0x7581
        0x7772
        0x4093
        0x78c8
        0x78e0
        0x7947
        0x79ae
        0xe003
        0x4103
    .end array-data

    :array_1
    .array-data 4
        0xe004
        0x79da
        0x7a1e
        0x7b7f
        0x7c31
        0x4264
        0x7d8b
        0x7fa1
        0x8118
        0x813a
        0xe005
        0x82ae
        0x845b
        0x84dc
        0x84ec
        0x8559
        0x85ce    # 4.8E-41f
        0x8755
        0x87ec
        0x880b
        0x88f5
        0x89d2
        0x8af6
        0x8dce
        0x8fbb
        0x8ff6
        0x90dd
        0x9127
        0x912d
        0x91b2
        0x9233
        0x9288
        0x9321
        0x9348
        0x9592
        0x96de
        0x9903
        0x9940
        0x9ad9
        0x9bd6
        0x9dd7
        0x9eb4
        0x9eb5
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xf000
        0xf001
        0xf002
        0xf003
        0xf004
        0xf005
        0x3000
        0xf007
        0xf008
        0xf009
        0xf00a
        0x3000
        0x3000
        0x3000
        0x3000
        0xf00f
        0xf010
        0x3000
        0x3000
        0xf013
        0xf014
        0xf015
        0xf016
        0xf017
        0xf018
        0xf019
        0xf01a
        0xf01b
        0xf01c
        0xf01d
        0xf01e
        0xf01f
        0xf020
        0xf021
        0xf022
        0xf023
        0xf024
        0xf025
        0xf026
        0xf027
        0x3000
        0x3000
        0x3000
        0x3000
        0xf02c
        0xf02d
        0xf02e
        0xf02f
        0xf030
        0xf031
        0xf032
        0xf033
        0xf034
        0xf035
        0xf036
        0xf037
        0xf038
        0xf039
        0xf03a
        0xf03b
        0xf03c
        0xf03d
        0xf03e
        0xf03f
        0xf040
        0xf041
        0xf042
        0xf043
        0xf044
        0xf045
        0xf046
        0xf047
        0xf048
        0xf049
        0xf04a
        0xf04b
        0xf04c
        0xf04d
        0xf04e
        0xf04f
        0xf050
        0xf051
        0xf052
        0xf053
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
    .end array-data

    :array_3
    .array-data 4
        0xf05e
        0xf05f
        0xf060
        0xf061
        0xf062
        0xf063
        0xf064
        0xf065
        0xf066
        0xf067
        0xf068
        0xf069
        0xf06a
        0xf06b
        0xf06c
        0xf06d
        0xf06e
        0xf06f
        0xf070
        0xf071
        0xf072
        0xf073
        0xf074
        0xf075
        0xf076
        0xf077
        0xf078
        0xf079
        0xf07a
        0xf07b
        0xf07c
        0xf07d
        0xf07e
        0xf07f
        0xf080
        0xf081
        0xf082
        0xf083
        0xf084
        0xf085
        0xf086
        0xf087
        0xf088
        0xf089
        0xf08a
        0xf08b
        0xf08c
        0xf08d
        0xf08e
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
        0x3000
    .end array-data

    :array_4
    .array-data 4
        0xf0bc
        0xf0bd
        0xf0be
        0xf0bf
        0xf0c0
        0xf0c1
        0xf0c2
        0xf0c3
        0xf0c4
        0xf0c5
        0xf0c6
        0xf0c7
        0xf0c8
        0xf0c9
        0xf0ca
        0xf0cb
        0xf0cc
        0xf0cd
        0xf0ce
        0xf0cf
        0xf0d0
        0xf0d1
        0xf0d2
        0xf0d3
        0xf0d4
        0xf0d5
        0xf0d6
        0xf0d7
        0xf0d8
        0xf0d9
        0xf0da
        0xf0db
        0xf0dc
        0xf0dd
        0xf0de
        0xf0df
        0xf0e0
        0xf0e1
        0xf0e2
        0xf0e3
        0xf0e4
        0xf0e5
        0xf0e6
        0xf0e7
        0xf0e8
        0xf0e9
        0xf0ea
        0xf0eb
        0xf0ec
        0xf0ed
        0xf0ee
        0xf0ef
        0xf0f0
        0xf0f1
        0xf0f2
        0xf0f3
        0xf0f4
        0xf0f5
        0xf0f6
        0xf0f7
        0xf0f8
        0xf0f9
        0xf0fa
        0xf0fb
        0xf0fc
        0xf0fd
        0xf0fe
        0xf0ff
        0xf100
        0xf101
        0xf102
        0xf103
        0xf104
        0xf105
        0xf106
        0xf107
        0xf108
        0xf109
        0xf10a
        0xf10b
        0xf10c
        0xf10d
        0xf10e
        0xf10f
        0xf110
        0xf111
        0xf112
        0xf113
        0xf114
        0xf115
        0xf116
        0x3000
        0x3000
        0x3000
    .end array-data

    :array_5
    .array-data 4
        0xf11a
        0xf11b
        0xf11c
        0xf11d
        0xf11e
        0xf11f
        0xf120
        0xf121
        0xf122
        0xf123
        0xf124
        0xf125
        0xf126
        0xf127
        0xf128
        0xf129
        0xf12a
        0xf12b
        0xf12c
        0xf12d
        0xf12e
        0xf12f
        0xf130
        0xf131
        0xf132
        0xf133
        0xf134
        0xf135
        0xf136
        0xf137
        0xf138
        0xf139
        0xf13a
        0xf13b
        0xf13c
        0xf13d
        0xf13e
        0xf13f
        0xf140
        0xf141
        0xf142
        0xf143
        0xf144
        0xf145
        0xf146
        0x3000
        0x3000
        0xf149
        0xf14a
        0xf14b
        0xf14c
        0xf14d
        0xf14e
        0xf14f
        0xf150
        0xf151
        0xf152
        0xf153
        0xf154
        0xf155
        0xf156
        0xf157
        0xf158
        0xf159
        0xf15a
        0xf15b
        0xf15c
        0xf15d
        0xf15e
        0xf15f
        0xf160
        0xf161
        0xf162
        0xf163
        0xf164
        0xf165
        0xf166
        0xf167
        0xf168
        0xf169
        0xf16a
        0xf16b
        0xf16c
        0xf16d
        0xf16e
        0xf16f
        0x3000
        0xf171
        0xf172
        0xf173
        0xf174
        0x3000
        0x3000
        0x3000
    .end array-data

    :array_6
    .array-data 4
        0xf178
        0xf179
        0xf17a
        0xf17b
        0xf17c
        0xf17d
        0xf17e
        0xf17f
        0xf180
        0xf181
        0xf182
        0xf183
        0xf184
        0xf185
        0xf186
        0xf187
        0xf188
        0xf189
        0xf18a
        0xf18b
        0xf18c
        0xf18d
        0xf18e
        0xf18f
        0xf190
        0xf191
        0xf192
        0xf193
        0xf194
        0xf195
        0xf196
        0xf197
        0xf198
        0xf199
        0xf19a
        0xf19b
        0xf19c
        0xf19d
        0xf19e
        0xf19f
        0xf1a0
        0xf1a1
        0xf1a2
        0xf1a3
        0xf1a4
        0xf1a5
        0xf1a6
        0xf1a7
        0xf1a8
        0xf1a9
        0xf1aa
        0xf1ab
        0xf1ac
        0xf1ad
        0xf1ae
        0xf1af
        0xf1b0
        0xf1b1
        0xf1b2
        0xf1b3
        0xf1b4
        0xf1b5
        0xf1b6
        0xf1b7
        0xf1b8
        0xf1b9
        0xf1ba
        0xf1bb
        0xf1bc
        0xf1bd
        0xf1be
        0xf1bf
        0xf1c0
        0xf1c1
        0xf1c2
        0xf1c3
        0xf1c4
        0xf1c5
        0xf1c6
        0xf1c7
        0xf1c8
        0xf1c9
        0xf1ca
        0xf1cb
        0xf1cc
        0xf1cd
        0xf1ce
        0xf1cf
        0xf1d0
        0xf1d1
        0xf1d2
        0xf1d3
        0xf1d4
        0x3000
    .end array-data
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 5
    .param p1, "aCharset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 293
    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->MAX_CHARS_PER_BYTE:I

    int-to-float v3, v3

    invoke-direct {p0, p1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->DEBUG:Z

    .line 217
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSingleDecoderSv;

    const-string v3, "\u3000\uff01\u201d\uff03\uff04\uff05\uff06\u2019\uff08\uff09\uff0a\uff0b\uff0c\uff0d\uff0e\uff0f\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19\uff1a\uff1b\uff1c\uff1d\uff1e\uff1f\uff20\uff21\uff22\uff23\uff24\uff25\uff26\uff27\uff28\uff29\uff2a\uff2b\uff2c\uff2d\uff2e\uff2f\uff30\uff31\uff32\uff33\uff34\uff35\uff36\uff37\uff38\uff39\uff3a\uff3b\uffe5\uff3d\uff3e\uff3f\uff40\uff41\uff42\uff43\uff44\uff45\uff46\uff47\uff48\uff49\uff4a\uff4b\uff4c\uff4d\uff4e\uff4f\uff50\uff51\uff52\uff53\uff54\uff55\uff56\uff57\uff58\uff59\uff5a\uff5b\uff5c\uff5d\uffe3\u3000"

    const-string v4, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~ "

    invoke-direct {v2, p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSingleDecoderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->alphaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 220
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSingleDecoderSv;

    const-string v3, "\u3000\u3041\u3042\u3043\u3044\u3045\u3046\u3047\u3048\u3049\u304a\u304b\u304c\u304d\u304e\u304f\u3050\u3051\u3052\u3053\u3054\u3055\u3056\u3057\u3058\u3059\u305a\u305b\u305c\u305d\u305e\u305f\u3060\u3061\u3062\u3063\u3064\u3065\u3066\u3067\u3068\u3069\u306a\u306b\u306c\u306d\u306e\u306f\u3070\u3071\u3072\u3073\u3074\u3075\u3076\u3077\u3078\u3079\u307a\u307b\u307c\u307d\u307e\u307f\u3080\u3081\u3082\u3083\u3084\u3085\u3086\u3087\u3088\u3089\u308a\u308b\u308c\u308d\u308e\u308f\u3090\u3091\u3092\u3093\u3000\u3000\u3000\u309d\u309e\u30fc\u3002\u300c\u300d\u3001\u30fb\u3000"

    invoke-direct {v2, p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSingleDecoderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->hiraganaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 223
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSingleDecoderSv;

    const-string v3, "\u3000\u30a1\u30a2\u30a3\u30a4\u30a5\u30a6\u30a7\u30a8\u30a9\u30aa\u30ab\u30ac\u30ad\u30ae\u30af\u30b0\u30b1\u30b2\u30b3\u30b4\u30b5\u30b6\u30b7\u30b8\u30b9\u30ba\u30bb\u30bc\u30bd\u30be\u30bf\u30c0\u30c1\u30c2\u30c3\u30c4\u30c5\u30c6\u30c7\u30c8\u30c9\u30ca\u30cb\u30cc\u30cd\u30ce\u30cf\u30d0\u30d1\u30d2\u30d3\u30d4\u30d5\u30d6\u30d7\u30d8\u30d9\u30da\u30db\u30dc\u30dd\u30de\u30df\u30e0\u30e1\u30e2\u30e3\u30e4\u30e5\u30e6\u30e7\u30e8\u30e9\u30ea\u30eb\u30ec\u30ed\u30ee\u30ef\u30f0\u30f1\u30f2\u30f3\u30f4\u30f5\u30f6\u30fd\u30fe\u30fc\u3002\u300c\u300d\u3001\u30fb\u3000"

    invoke-direct {v2, p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSingleDecoderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->katakanaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 226
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder1Sv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->kanjiDecoder1:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 229
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwKanjiDecoder2Sv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->kanjiDecoder2:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 232
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwGaijiDecoderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->gaijiDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 243
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 298
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->sbcMap:Ljava/util/Map;

    .line 299
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->sbcMap:Ljava/util/Map;

    const/16 v3, 0x4a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->alphaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->sbcMap:Ljava/util/Map;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->hiraganaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->sbcMap:Ljava/util/Map;

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->katakanaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->dbcMap:Ljava/util/Map;

    .line 304
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->dbcMap:Ljava/util/Map;

    const/16 v3, 0x39

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->kanjiDecoder1:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->dbcMap:Ljava/util/Map;

    const/16 v3, 0x3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->kanjiDecoder2:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->dbcMap:Ljava/util/Map;

    const/16 v3, 0x3b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->gaijiDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    .line 309
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwAprHandlerSv;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwAprHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSpHandlerSv;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwSpHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x7f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwDelHandlerSv;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwDelHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwWidthHandlerSv;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwWidthHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    .line 313
    .local v1, "widthHandler":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x8a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x89

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwStateHandlerSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwStateHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    .line 316
    .local v0, "stateHandler":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwEscapeHandlerSv;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwEscapeHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    const/16 v3, 0x9b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwCsiHandlerSv;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv$MmbFwCsiHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "X-EUC-JIS-2004"

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwEucJis2004CharsetProviderSv;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->eucDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    .prologue
    .line 36
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->xcsMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->xcsMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    .prologue
    .line 36
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->charWidth:I

    return v0
.end method

.method static synthetic access$1000()[[I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ARIB_TABLE:[[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->charWidth:I

    return p1
.end method

.method static synthetic access$1100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ALTERNATIVE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->glIndex:I

    return p1
.end method

.method static synthetic access$302(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ssIndex:I

    return p1
.end method

.method static synthetic access$402(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->grIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->sbcMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;Ljava/nio/ByteBuffer;Ljava/util/Map;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->findDecoder(Ljava/nio/ByteBuffer;Ljava/util/Map;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->dbcMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;
    .param p1, "x1"    # [B

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->convertEuc([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertEuc([B)Ljava/lang/String;
    .locals 5
    .param p1, "aEucBytes"    # [B

    .prologue
    .line 1053
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1054
    .local v1, "in":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->eucDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 1055
    .local v2, "out":Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1062
    .end local v1    # "in":Ljava/nio/ByteBuffer;
    .end local v2    # "out":Ljava/nio/CharBuffer;
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1056
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private findDecoder(Ljava/nio/ByteBuffer;Ljava/util/Map;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
    .locals 4
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;",
            ">;)",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;
        }
    .end annotation

    .prologue
    .line 718
    .local p2, "aDecoderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;>;"
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 719
    .local v1, "key":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 720
    .local v0, "decoder":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
    if-nez v0, :cond_0

    .line 721
    new-instance v2, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v2

    .line 726
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 5
    .param p1, "aIn"    # Ljava/nio/ByteBuffer;
    .param p2, "aOut"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/MalformedInputException;,
            Ljava/nio/charset/UnmappableCharacterException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 380
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 382
    .local v1, "prefetchByte":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->switchMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    .line 383
    .local v0, "decoder":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;
    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;->decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 407
    :goto_0
    return-void

    .line 386
    :cond_0
    const/16 v2, 0x21

    const/16 v3, 0x7e

    invoke-virtual {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->between(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ssIndex:I

    if-eq v2, v4, :cond_1

    .line 390
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ssIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;->decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 391
    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ssIndex:I

    goto :goto_0

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->glIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;->decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 396
    :cond_2
    const/16 v2, 0xa1

    const/16 v3, 0xfe

    invoke-virtual {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->between(III)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 398
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->grIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;->decodePiece(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    goto :goto_0

    .line 401
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 402
    new-instance v2, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v2
.end method

.method protected implReset()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 344
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwCharsetDecoderSv;->implReset()V

    .line 345
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->kanjiDecoder1:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    aput-object v1, v0, v3

    .line 346
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->alphaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    aput-object v2, v0, v1

    .line 347
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->hiraganaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    aput-object v1, v0, v4

    .line 348
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->invokeTable:[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->katakanaDecoder:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwSubDecoderSv;

    aput-object v2, v0, v1

    .line 349
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->glIndex:I

    .line 350
    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->grIndex:I

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->ssIndex:I

    .line 352
    const/16 v0, 0x8a

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->charWidth:I

    .line 353
    const/16 v0, 0x31

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwAribTrB33CharsetDecoderSv;->xcsMode:I

    .line 357
    return-void
.end method
