.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;
.super Ljava/lang/Object;
.source "MmbStBmlObjectControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableArgments;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnableRes;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$MmbBmlRunnable;
    }
.end annotation


# static fields
.field public static final MMB_OUTLINE_MAX_LENGTH:I = 0x82

.field public static final MMB_TITLE_MAX_LENGTH:I = 0x28

.field public static final MMB_URI_MAX_LENGTH:I = 0x3c

.field protected static mKeyTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static mPermTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static mXprobmTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

.field protected client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

.field protected cona:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;

.field protected ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

.field protected gps:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

.field protected http:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

.field private mFileName:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

.field protected nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

.field protected pict:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

.field protected service:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field protected tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    .line 175
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    .line 180
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    .line 191
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;)V
    .locals 2
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .param p2, "aClient"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;
    .param p3, "aCtrl"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 95
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 100
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .line 105
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 110
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    .line 120
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    .line 125
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->gps:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    .line 130
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->http:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    .line 135
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    .line 140
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->cona:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;

    .line 145
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->pict:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

    .line 150
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mFileName:Ljava/lang/String;

    .line 386
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 387
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .line 388
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    .line 390
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    .line 394
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    .line 396
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->gps:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    .line 398
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->http:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    .line 400
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    .line 402
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->cona:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;

    .line 404
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->pict:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

    .line 409
    return-void
.end method

.method private checkBmType(I)Z
    .locals 1
    .param p1, "aType"    # I

    .prologue
    .line 595
    packed-switch p1, :pswitch_data_0

    .line 610
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 605
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkMmbStBmlMwPictureSaveReqInfo(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V
    .locals 4
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;

    .prologue
    const/4 v3, 0x0

    .line 2669
    if-nez p1, :cond_0

    .line 2670
    const-string v2, "MmbStBmlObjectControllerSv#onPictureSaveReq() aInfo is null. "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2673
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 2675
    :cond_0
    iget-object v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbPictureUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2676
    const-string v2, "MmbStBmlObjectControllerSv#onPictureSaveReq() mmbPictureUri is emptry."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2679
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 2681
    :cond_1
    iget-object v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2682
    const-string v2, "MmbStBmlObjectControllerSv#onPictureSaveReq() mmbFileName is empty."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2685
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 2689
    :cond_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->pict:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;->checkSdCardStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2691
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 2695
    :cond_3
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->pict:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;->getSdCardFreeSpace()J

    move-result-wide v0

    .line 2696
    .local v0, "fspace":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 2698
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 2701
    :cond_4
    iget v2, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbFileSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 2703
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 2709
    :cond_5
    return-void
.end method

.method private checkMmbStBmlMwTvLinkEnrolReqInfo(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 8
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;
    .param p2, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 3193
    const-wide/16 v2, 0x0

    .line 3196
    .local v2, "ndate":J
    if-nez p1, :cond_0

    .line 3197
    const-string v1, "MmbStBmlObjectControllerSv#onTvLinkEnrolReq() aInfo is null. "

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3200
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 3202
    :cond_0
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3203
    const-string v1, "MmbStBmlObjectControllerSv#onTvLinkEnrolReq() mmbTitle is empty."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3206
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 3211
    :cond_1
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbTitle:Ljava/lang/String;

    iput-object v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    .line 3212
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbDstUri:Ljava/lang/String;

    iput-object v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    .line 3213
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbOutline:Ljava/lang/String;

    iput-object v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    .line 3215
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mXprobmTable:Ljava/util/Hashtable;

    iget v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbXprobmtype:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3216
    .local v0, "bmtype":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 3217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBmType:I

    .line 3226
    iget-object v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbExpire:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->parseAribDate(Ljava/lang/String;)J

    move-result-wide v2

    .line 3227
    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    .line 3228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlObjectControllerSv#onTvLinkEnrolReq() mmbExpire is not date format."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbExpire:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3232
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 3219
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlObjectControllerSv#onTvLinkEnrolReq() mmbXprobmtype out of range."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbXprobmtype:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3223
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 3236
    :cond_3
    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    .line 3237
    iput-wide v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbExpire:J

    .line 3241
    :goto_0
    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbServiceId:I

    iput v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbServiceId:I

    .line 3242
    iget v1, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbBroadcasterId:I

    iput v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBroadcasterId:I

    .line 3247
    return-void

    .line 3239
    :cond_4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->getAribDate(Ljava/util/Date;)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbExpire:J

    goto :goto_0
.end method

.method private checkStringCharCodeRange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aString"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 567
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 568
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 569
    .local v0, "charactercord":I
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7e

    if-le v0, v3, :cond_1

    .line 573
    :cond_0
    const/4 v3, 0x0

    .line 580
    .end local v0    # "charactercord":I
    :goto_1
    return v3

    .line 567
    .restart local v0    # "charactercord":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v0    # "charactercord":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)Ljava/lang/String;
    .locals 4
    .param p1, "aTvLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, "ret":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 676
    .end local v0    # "ret":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 636
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_0
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBmType:I

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->checkBmType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmbBmType out of range. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbBmType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 642
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 645
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_2

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmbTitle is too long. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 652
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 654
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3c

    if-le v2, v3, :cond_3

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmbUri is too long. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 661
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 663
    .end local v1    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_3
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbOutline:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x82

    if-le v2, v3, :cond_4

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmbOutline is too long. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;->mmbUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 670
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .end local v1    # "ret":Ljava/lang/String;
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_4
    move-object v1, v0

    .line 676
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getAribDate(Ljava/util/Date;)J
    .locals 5
    .param p1, "aDate"    # Ljava/util/Date;

    .prologue
    .line 772
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 776
    .local v3, "yyyyMMddHHmm":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, "tmp":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 782
    .local v0, "ret":J
    return-wide v0
.end method


# virtual methods
.method public clearNvram()V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->clearNvram()V

    .line 1305
    return-void
.end method

.method public deleteBmlBrowser()V
    .locals 2

    .prologue
    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->http:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->gps:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    :goto_1
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 525
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 526
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getTvLink()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    const/4 v0, 0x0

    .line 1127
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getTvLink()Ljava/util/List;

    move-result-object v0

    .line 1132
    return-object v0
.end method

.method public initializeBmlBrowser()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public notifyKey(II)V
    .locals 6
    .param p1, "aKeyCode"    # I
    .param p2, "aKeyEvent"    # I

    .prologue
    const/4 v5, 0x0

    .line 1322
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;-><init>()V

    .line 1324
    .local v1, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mKeyTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1325
    .local v2, "translateedkeycode":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 1326
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbKeycode:I

    .line 1331
    packed-switch p2, :pswitch_data_0

    .line 1339
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aKeyEvent out of a range."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1328
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aKeyCode out of a range."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1333
    :pswitch_0
    iput v5, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbKeyevent:I

    .line 1342
    :goto_0
    iput v5, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbTouchX:I

    .line 1343
    iput v5, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbTouchY:I

    .line 1346
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 1350
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->notifyKey(Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    :goto_1
    return-void

    .line 1336
    :pswitch_1
    const/4 v3, 0x1

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwKeyInfo;->mmbKeyevent:I

    goto :goto_0

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#notifyKey() failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyOnCreate()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public notifyOnDestroy()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public notifyOnLoad()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->notifyOnLoad()V

    .line 425
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->notifyOnLoad()V

    .line 429
    return-void
.end method

.method public notifyOnUnload()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->notifyOnUnload()V

    .line 446
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->notifyOnUnload()V

    .line 450
    return-void
.end method

.method public onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;

    .prologue
    const/4 v9, 0x0

    .line 2146
    const/4 v3, 0x0

    .line 2154
    .local v3, "result":Z
    if-nez p1, :cond_0

    .line 2155
    :try_start_0
    const-string v4, "MmbStBmlObjectControllerSv#onBrowserReq() aInfo is null. "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2158
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2202
    :catch_0
    move-exception v1

    .line 2205
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyBrowser(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2215
    :goto_0
    return-void

    .line 2163
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2164
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v2, :cond_1

    .line 2165
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$4;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-boolean v8, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbIsShowAv:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v5, p0, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2192
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->lunchBrowser(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v3

    .line 2199
    :goto_2
    :try_start_4
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2182
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_1
    :try_start_5
    const-string v4, "MmbStBmlObjectControllerSv#onRequestComBrowser listener is null."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2184
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :catch_1
    move-exception v0

    .line 2185
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlObjectControllerSv#onRequestComBrowser() NG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2186
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2193
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2194
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlAppLuncherSv#lunchBrowser() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2195
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 2206
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2207
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlMwClient#replyBrowser() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2208
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;

    .prologue
    const/4 v5, 0x0

    .line 2037
    const/4 v2, 0x0

    .line 2044
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 2045
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onCallReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2048
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :catch_0
    move-exception v1

    .line 2067
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyCall(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2077
    :goto_0
    return-void

    .line 2054
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->lunchCall(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 2061
    :goto_1
    :try_start_3
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 2055
    :catch_1
    move-exception v0

    .line 2056
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlAppLuncherSv#lunchCall() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2057
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2068
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2069
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyCall() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2070
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V
    .locals 7
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;

    .prologue
    const/4 v6, 0x0

    .line 1374
    const/4 v2, 0x0

    .line 1379
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 1380
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onCheckStorageStatusReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :catch_0
    move-exception v1

    .line 1416
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyCheckStrageStatus(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1426
    :goto_0
    return-void

    .line 1385
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;->mmbCrid:[B

    if-nez v3, :cond_1

    .line 1386
    const-string v3, "MmbStBmlObjectControllerSv#onCheckStorageStatusReq() mmbCrid is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1389
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 1391
    :cond_1
    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;->mmbCrid:[B

    array-length v3, v3

    if-gtz v3, :cond_2

    .line 1392
    const-string v3, "MmbStBmlObjectControllerSv#onCheckStorageStatusReq()mmbCrid is emplty."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1396
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1402
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->cona:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;

    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;->mmbCrid:[B

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;->getDownloadProgress([BZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    .line 1410
    :goto_1
    :try_start_4
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 1403
    :catch_1
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlContentsAccessSv#getDownloadProgress() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1417
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1418
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyCheckStrageStatus() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1419
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDispIcon(Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;)V
    .locals 8
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;

    .prologue
    .line 3041
    const/4 v1, 0x0

    .line 3046
    .local v1, "icontype":I
    if-nez p1, :cond_0

    .line 3047
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onDispIcon() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3050
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 3094
    :catch_0
    move-exception v0

    .line 3102
    :goto_0
    return-void

    .line 3053
    :cond_0
    iget v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;->mmbIconKind:I

    packed-switch v3, :pswitch_data_0

    .line 3062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mmbIconKind out of a range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;->mmbIconKind:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3065
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 3055
    :pswitch_0
    const/4 v1, 0x0

    .line 3069
    :goto_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 3070
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v2, :cond_1

    .line 3071
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$15;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-boolean v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwDispIconNotifyInfo;->mmbIsDisp:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, p0, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$15;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3059
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :pswitch_1
    const/4 v1, 0x1

    .line 3060
    goto :goto_1

    .line 3090
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_1
    const-string v3, "MmbStBmlObjectControllerSv#onDispIcon listener is null."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3053
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEndFepReq()V
    .locals 3

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 3004
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v0, :cond_0

    .line 3005
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$14;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$14;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3025
    :goto_0
    return-void

    .line 3019
    :cond_0
    const-string v1, "MmbStBmlObjectControllerSv#onEndFepReq listener is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V
    .locals 9
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;

    .prologue
    const/4 v8, 0x0

    .line 2480
    if-nez p1, :cond_0

    .line 2481
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onEpgTuneReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2484
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2519
    :catch_0
    move-exception v1

    .line 2522
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyEpgTune(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2532
    .end local v1    # "e2":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2488
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2489
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v2, :cond_1

    .line 2490
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;->mmbOriginalNetworkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;->mmbTransportStreamId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;->mmbServiceId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, p0, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$8;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2512
    :cond_1
    const-string v3, "MmbStBmlObjectControllerSv#onEpgTuneReq listener is null."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2515
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2523
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2524
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyEpgTune() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2525
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V
    .locals 7
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;

    .prologue
    const/4 v6, 0x0

    .line 1513
    if-nez p1, :cond_0

    .line 1514
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onGetGpsReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1517
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :catch_0
    move-exception v1

    .line 1536
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;-><init>()V

    .line 1537
    .local v2, "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLatitude:D

    .line 1538
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLongitude:D

    .line 1539
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbAccurary:D

    .line 1540
    const/4 v3, 0x0

    new-array v3, v3, [B

    iput-object v3, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbProvider:[B

    .line 1541
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyGps(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1551
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    :goto_0
    return-void

    .line 1523
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->gps:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->getGpsPosition(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1524
    :catch_1
    move-exception v0

    .line 1525
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlGpsReceiverSv#getGpsPosition() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1526
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1529
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1542
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1543
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyGps() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1544
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHttpCancelReq()V
    .locals 3

    .prologue
    .line 1750
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->http:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->cancelHttpData()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    :goto_0
    return-void

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbStBmlHttpClientSv#cancelHttpData() is failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V
    .locals 7
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    .prologue
    const/4 v6, 0x0

    .line 1684
    const/4 v2, 0x0

    .line 1691
    .local v2, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    if-nez p1, :cond_0

    .line 1692
    :try_start_0
    const-string v4, "MmbStBmlObjectControllerSv#onHttpStartReq() aInfo is null. "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1695
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    :catch_0
    move-exception v1

    .line 1714
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;

    invoke-direct {v3}, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1715
    .end local v2    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    .local v3, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    :try_start_2
    iget v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSqNum:I

    iput v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbSqNum:I

    .line 1716
    const/4 v4, 0x2

    iput v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbState:I

    .line 1717
    const/4 v4, 0x0

    iput-object v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRpHeaders:[B

    .line 1718
    const/4 v4, 0x0

    iput v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbTotalSize:I

    .line 1719
    const/4 v4, 0x0

    iput-object v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;->mmbRedirectUri:[B

    .line 1722
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyHttpStart(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 1732
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v3    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    .restart local v2    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    :goto_0
    return-void

    .line 1702
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->http:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v4, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlHttpClientSv;->getHttpData(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1703
    :catch_1
    move-exception v0

    .line 1704
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlHttpClientSv#getHttpData() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1705
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1708
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1723
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1724
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlMwClient#replyHttpStart() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1725
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1723
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    .restart local v3    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    .restart local v2    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReplyInfo;
    goto :goto_1
.end method

.method public onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V
    .locals 7
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;

    .prologue
    const/4 v6, 0x0

    .line 1441
    const/4 v2, 0x0

    .line 1446
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 1447
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onIsContentsStoredReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1479
    :catch_0
    move-exception v1

    .line 1482
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyIsContentsStored(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1492
    :goto_0
    return-void

    .line 1452
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;->mmbCrid:[B

    if-nez v3, :cond_1

    .line 1453
    const-string v3, "MmbStBmlObjectControllerSv#onIsContentsStoredReq() mmbCrid is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1456
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 1458
    :cond_1
    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;->mmbCrid:[B

    array-length v3, v3

    if-gtz v3, :cond_2

    .line 1459
    const-string v3, "MmbStBmlObjectControllerSv#onIsContentsStoredReq() mmbCrid is emplty. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1462
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1468
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->cona:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;

    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;->mmbCrid:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlContentsAccessSv;->getDownloadProgress([BZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    .line 1476
    :goto_1
    :try_start_4
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 1469
    :catch_1
    move-exception v0

    .line 1470
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlContentsAccessSv#getDownloadProgress() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1472
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1483
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1484
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyIsContentsStored() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1485
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;

    .prologue
    const/4 v9, 0x0

    .line 2231
    const/4 v0, 0x0

    .line 2236
    .local v0, "acrid":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2237
    :try_start_0
    const-string v5, "MmbStBmlObjectControllerSv#onLaunchContentReq() aInfo is null. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2240
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    :catch_0
    move-exception v3

    .line 2286
    .local v3, "e2":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyLaunchContent(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2296
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2242
    :cond_0
    :try_start_2
    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;->mmbCrid:[B

    if-nez v5, :cond_1

    .line 2243
    const-string v5, "MmbStBmlObjectControllerSv#onLaunchContentReq() mmbCrid is null. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2246
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 2248
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;->mmbCrid:[B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2249
    .end local v0    # "acrid":Ljava/lang/String;
    .local v1, "acrid":Ljava/lang/String;
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2250
    const-string v5, "MmbStBmlObjectControllerSv#onLaunchContentReq() mmbCrid is emplty. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2253
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 2283
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "acrid":Ljava/lang/String;
    .restart local v0    # "acrid":Ljava/lang/String;
    goto :goto_0

    .line 2257
    .end local v0    # "acrid":Ljava/lang/String;
    .restart local v1    # "acrid":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2258
    .local v4, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v4, :cond_3

    .line 2259
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$5;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-direct {v6, p0, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 2291
    .end local v1    # "acrid":Ljava/lang/String;
    .restart local v0    # "acrid":Ljava/lang/String;
    goto :goto_1

    .line 2276
    .end local v0    # "acrid":Ljava/lang/String;
    .restart local v1    # "acrid":Ljava/lang/String;
    :cond_3
    const-string v5, "MmbStBmlObjectControllerSv#onLaunchContentReq listener is null."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2279
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2287
    .end local v1    # "acrid":Ljava/lang/String;
    .end local v4    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v0    # "acrid":Ljava/lang/String;
    .restart local v3    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2288
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmbStBmlMwClient#replyLaunchContent() is failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2289
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;

    .prologue
    const/4 v5, 0x0

    .line 1929
    const/4 v2, 0x0

    .line 1936
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 1937
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onMailSendReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1940
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    :catch_0
    move-exception v1

    .line 1959
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyMailSend(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1969
    :goto_0
    return-void

    .line 1946
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->lunchMailer(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 1953
    :goto_1
    :try_start_3
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 1947
    :catch_1
    move-exception v0

    .line 1948
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlAppLuncherSv#lunchMailer() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1949
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1960
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1961
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyMailSend() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1962
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V
    .locals 7
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;

    .prologue
    const/4 v6, 0x0

    .line 1621
    const/4 v2, 0x0

    .line 1628
    .local v2, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    if-nez p1, :cond_0

    .line 1629
    :try_start_0
    const-string v4, "MmbStBmlObjectControllerSv#onNvramReadReq() aInfo is null. "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1632
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 1650
    .end local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .local v1, "e2":Ljava/lang/Exception;
    .local v3, "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    if-eqz v3, :cond_1

    .line 1652
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyNvramRead(ZLmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 1669
    .end local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :goto_0
    return-void

    .line 1638
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->readNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 1645
    :goto_1
    :try_start_3
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4

    .line 1639
    :catch_1
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlNvRamPersistentSv#readNvram() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1656
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v1    # "e2":Ljava/lang/Exception;
    .restart local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :cond_1
    :try_start_4
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1657
    .end local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    const/4 v4, 0x0

    :try_start_5
    new-array v4, v4, [B

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;->mmbSaveData:[B

    .line 1658
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyNvramRead(ZLmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1660
    :catch_2
    move-exception v0

    .line 1661
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlMwClient#replyNvramRead() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1662
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1660
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    .restart local v2    # "ret":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReplyInfo;
    goto :goto_2
.end method

.method public onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    .prologue
    const/4 v5, 0x0

    .line 1566
    const/4 v2, 0x0

    .line 1572
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 1573
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onNvramWriteReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1576
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    :catch_0
    move-exception v1

    .line 1596
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyNvramWrite(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1606
    :goto_0
    return-void

    .line 1581
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->nvram:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlNvRamPersistentSv;->writeNvram(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1582
    const/4 v2, 0x1

    .line 1589
    :goto_1
    :try_start_3
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 1583
    :catch_1
    move-exception v0

    .line 1584
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlNvRamPersistentSv#writeNvram() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1585
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1597
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1598
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyNvramWrite() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPasswordReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;

    .prologue
    const/4 v9, 0x0

    .line 1864
    if-nez p1, :cond_0

    .line 1865
    :try_start_0
    const-string v4, "MmbStBmlObjectControllerSv#onPasswordReq() aInfo is null. "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1868
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    :catch_0
    move-exception v1

    .line 1899
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;-><init>()V

    .line 1900
    .local v2, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;
    const/4 v4, 0x0

    iput v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbUserSelect:I

    .line 1901
    const/4 v4, 0x0

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbUserName:[B

    .line 1902
    const/4 v4, 0x0

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbPassword:[B

    .line 1903
    iget v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;->mmbBmlParam:I

    iput v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbBmlParam:I

    .line 1906
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->replyPassword(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1915
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;
    :goto_0
    return-void

    .line 1872
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 1873
    .local v3, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v3, :cond_1

    .line 1874
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$3;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReqInfo;->mmbBmlParam:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v5, p0, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1890
    :cond_1
    const-string v4, "MmbStBmlObjectControllerSv#onPasswordReq listener is null."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1893
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1907
    .end local v3    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1908
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlMwCtrlClient#replyPassword() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1909
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPermissionReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;)V
    .locals 12
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;

    .prologue
    const/4 v11, 0x0

    .line 1780
    if-nez p1, :cond_0

    .line 1781
    :try_start_0
    const-string v6, "MmbStBmlObjectControllerSv#onPermissionReq() aInfo is null. "

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1784
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    :catch_0
    move-exception v1

    .line 1829
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;-><init>()V

    .line 1830
    .local v2, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;
    const/4 v6, 0x0

    iput v6, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;->mmbUserSelect:I

    .line 1831
    iget v6, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;->mmbBmlParam:I

    iput v6, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;->mmbBmlParam:I

    .line 1834
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->replyPermission(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1843
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;
    :goto_0
    return-void

    .line 1787
    :cond_0
    :try_start_2
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mPermTable:Ljava/util/Hashtable;

    iget v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;->mmbPermission:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1788
    .local v4, "perm":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    .line 1789
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1799
    .local v5, "premission":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 1800
    .local v3, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v3, :cond_2

    .line 1801
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$2;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;->mmbBmlParam:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v7, p0, v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1791
    .end local v3    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .end local v5    # "premission":I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmbStBmlObjectControllerSv#onPermissionReq mmbPermission out of a range."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReqInfo;->mmbPermission:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1795
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v6

    .line 1820
    .restart local v3    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v5    # "premission":I
    :cond_2
    const-string v6, "MmbStBmlObjectControllerSv#onPermissionReq listener is null."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1823
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1835
    .end local v3    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .end local v4    # "perm":Ljava/lang/Integer;
    .end local v5    # "premission":I
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1836
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmbStBmlMwCtrlClient#replyPermission() is failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1837
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;

    .prologue
    const/4 v5, 0x0

    .line 1983
    const/4 v2, 0x0

    .line 1990
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 1991
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onPhoneBookReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1994
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    :catch_0
    move-exception v1

    .line 2013
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyPhonebook(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2023
    :goto_0
    return-void

    .line 2000
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->lunchPhoneBook(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 2007
    :goto_1
    :try_start_3
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 2001
    :catch_1
    move-exception v0

    .line 2002
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlAppLuncherSv#lunchPhoneBook() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2003
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2014
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2015
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyPhonebook() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2016
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPictureSaveComplete(Z)V
    .locals 9
    .param p1, "aResult"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2844
    const/4 v3, 0x0

    .line 2845
    .local v3, "scanintent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 2846
    .local v5, "uri":Landroid/net/Uri;
    move v2, p1

    .line 2853
    .local v2, "result":Z
    if-eqz p1, :cond_1

    .line 2854
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mFileName:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 2857
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->pict:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;->getAbsoluteFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 2858
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2861
    .end local v3    # "scanintent":Landroid/content/Intent;
    .local v4, "scanintent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 2863
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 2880
    .end local v4    # "scanintent":Landroid/content/Intent;
    .restart local v3    # "scanintent":Landroid/content/Intent;
    :cond_1
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mFileName:Ljava/lang/String;

    .line 2883
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2884
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v1, :cond_3

    .line 2885
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$12;

    invoke-direct {v7, p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$12;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2905
    :goto_2
    return-void

    .line 2864
    .end local v1    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .end local v3    # "scanintent":Landroid/content/Intent;
    .restart local v4    # "scanintent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2865
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2866
    const/4 v2, 0x0

    goto :goto_0

    .line 2869
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "scanintent":Landroid/content/Intent;
    .restart local v3    # "scanintent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 2870
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2871
    const/4 v2, 0x0

    .line 2872
    goto :goto_1

    .line 2874
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v6, "Picture file name is null."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2875
    const/4 v2, 0x0

    goto :goto_1

    .line 2899
    .restart local v1    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_3
    const-string v6, "MmbStBmlObjectControllerSv#onSavePictureFinished listener is null."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2869
    .end local v1    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .end local v3    # "scanintent":Landroid/content/Intent;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "scanintent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "scanintent":Landroid/content/Intent;
    .restart local v3    # "scanintent":Landroid/content/Intent;
    goto :goto_3
.end method

.method public onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V
    .locals 11
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;

    .prologue
    const/4 v10, 0x0

    .line 2743
    const/4 v4, 0x0

    .line 2745
    .local v4, "issaved":Z
    const/4 v0, 0x0

    .line 2747
    .local v0, "chgsavename":Z
    const/4 v6, 0x0

    .line 2754
    .local v6, "newfilename":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->checkMmbStBmlMwPictureSaveReqInfo(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V

    .line 2757
    iget-object v8, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbFileName:Ljava/lang/String;

    iput-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mFileName:Ljava/lang/String;

    .line 2760
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->pict:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;

    iget-object v9, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;->getSafetyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2761
    .local v7, "tmp":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2762
    const/4 v0, 0x1

    .line 2763
    move-object v6, v7

    .line 2764
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mFileName:Ljava/lang/String;

    .line 2770
    :goto_0
    const/4 v4, 0x1

    .line 2773
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2776
    .end local v7    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2779
    .local v2, "e2":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;

    invoke-direct {v3}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;-><init>()V

    .line 2780
    .local v3, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;
    iput-boolean v4, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;->mmbIsSaved:Z

    .line 2781
    const/4 v8, 0x0

    iput v8, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;->mmbSaveDrive:I

    .line 2782
    if-eqz v0, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2783
    const/4 v8, 0x1

    iput-boolean v8, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;->mmbIsChgSaveName:Z

    .line 2784
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    iput-object v8, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;->mmbNewFileName:[B

    .line 2791
    :goto_1
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyPictureSave(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2798
    .end local v3    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;
    :goto_2
    if-nez v4, :cond_0

    .line 2800
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2801
    .local v5, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v5, :cond_3

    .line 2802
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$11;

    invoke-direct {v9, p0, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$11;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2827
    .end local v5    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_0
    :goto_3
    return-void

    .line 2767
    .end local v2    # "e2":Ljava/lang/Exception;
    .restart local v7    # "tmp":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 2768
    const/4 v6, 0x0

    goto :goto_0

    .line 2786
    .end local v7    # "tmp":Ljava/lang/String;
    .restart local v2    # "e2":Ljava/lang/Exception;
    .restart local v3    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;->mmbIsChgSaveName:Z

    .line 2787
    const/4 v8, 0x0

    iput-object v8, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;->mmbNewFileName:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2792
    .end local v3    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReplyInfo;
    :catch_1
    move-exception v1

    .line 2793
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmbStBmlMwClient#replyPictureSave() is failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2794
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2819
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_3
    const-string v8, "MmbStBmlObjectControllerSv#onPictureSaveReq listener is null."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;

    .prologue
    const/4 v5, 0x0

    .line 2091
    const/4 v2, 0x0

    .line 2098
    .local v2, "result":Z
    if-nez p1, :cond_0

    .line 2099
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onScheduleReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2102
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2119
    :catch_0
    move-exception v1

    .line 2122
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replySchedule(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2132
    :goto_0
    return-void

    .line 2109
    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->app:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->lunchScheduler(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 2116
    :goto_1
    :try_start_3
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 2110
    :catch_1
    move-exception v0

    .line 2111
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlAppLuncherSv#lunchScheduler() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2112
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 2123
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2124
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replySchedule() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2125
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartFepReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;

    .prologue
    const/4 v9, 0x0

    .line 2925
    if-nez p1, :cond_0

    .line 2926
    :try_start_0
    const-string v4, "MmbStBmlObjectControllerSv#onStartFepReq() aInfo is null. "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2929
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2967
    :catch_0
    move-exception v1

    .line 2969
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;

    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;-><init>()V

    .line 2970
    .local v2, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;
    const/4 v4, 0x2

    iput v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbFepExitType:I

    .line 2971
    const/4 v4, 0x0

    iput-object v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbOutputStr:[B

    .line 2972
    const/4 v4, 0x0

    iput v4, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbOutputStrLen:I

    .line 2975
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->replyFep(Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2985
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;
    :goto_0
    return-void

    .line 2933
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2934
    .local v3, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v3, :cond_1

    .line 2935
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$13;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbInputMode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbInitStr:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbStrMax:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-boolean v8, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFepReqInfo;->mmbIsPassword:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v5, p0, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$13;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2960
    :cond_1
    const-string v4, "MmbStBmlObjectControllerSv#onStartFepReq listener is null."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2963
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2976
    .end local v3    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2977
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlMwClient#replyFep() is failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2978
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    const/4 v5, 0x0

    .line 2553
    if-nez p1, :cond_0

    .line 2554
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onEpgTuneReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2557
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2584
    :catch_0
    move-exception v1

    .line 2587
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStartFullDisp(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2597
    .end local v1    # "e2":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2561
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2562
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v2, :cond_1

    .line 2563
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$9;

    invoke-direct {v4, p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$9;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2577
    :cond_1
    const-string v3, "MmbStBmlObjectControllerSv#onStartFullDispReq listener is null."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2580
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2588
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2589
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyStartFullDisp() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2590
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStopFullDispReq()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2616
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2617
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v2, :cond_0

    .line 2618
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$10;

    invoke-direct {v4, p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$10;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2652
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :goto_0
    return-void

    .line 2632
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_0
    const-string v3, "MmbStBmlObjectControllerSv#onStopFullDispReq listener is null."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2635
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :catch_0
    move-exception v1

    .line 2642
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStopFullDisp(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2643
    :catch_1
    move-exception v0

    .line 2644
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyStopFullDisp() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2645
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;

    .prologue
    const/4 v9, 0x0

    .line 2393
    const/4 v0, 0x0

    .line 2398
    .local v0, "acrid":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2399
    :try_start_0
    const-string v5, "MmbStBmlObjectControllerSv#onStoreCancelReserveReq() aInfo is null. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2402
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2445
    :catch_0
    move-exception v3

    .line 2448
    .local v3, "e2":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStoreCancelReserve(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2458
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2404
    :cond_0
    :try_start_2
    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;->mmbCrid:[B

    if-nez v5, :cond_1

    .line 2405
    const-string v5, "MmbStBmlObjectControllerSv#onStoreCancelReserveReq() mmbCrid is null. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2408
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 2410
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;->mmbCrid:[B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2411
    .end local v0    # "acrid":Ljava/lang/String;
    .local v1, "acrid":Ljava/lang/String;
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2412
    const-string v5, "MmbStBmlObjectControllerSv#onStoreCancelReserveReq() mmbCrid is emplty. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2416
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 2445
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "acrid":Ljava/lang/String;
    .restart local v0    # "acrid":Ljava/lang/String;
    goto :goto_0

    .line 2420
    .end local v0    # "acrid":Ljava/lang/String;
    .restart local v1    # "acrid":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2421
    .local v4, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v4, :cond_3

    .line 2422
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$7;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-direct {v6, p0, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$7;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 2453
    .end local v1    # "acrid":Ljava/lang/String;
    .restart local v0    # "acrid":Ljava/lang/String;
    goto :goto_1

    .line 2438
    .end local v0    # "acrid":Ljava/lang/String;
    .restart local v1    # "acrid":Ljava/lang/String;
    :cond_3
    const-string v5, "MmbStBmlObjectControllerSv#onStoreCancelReserveReq listener is null."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2441
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2449
    .end local v1    # "acrid":Ljava/lang/String;
    .end local v4    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v0    # "acrid":Ljava/lang/String;
    .restart local v3    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2450
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmbStBmlMwClient#replyStoreCancelReserve() is failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2451
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;

    .prologue
    const/4 v9, 0x0

    .line 2312
    const/4 v0, 0x0

    .line 2317
    .local v0, "acrid":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2318
    :try_start_0
    const-string v5, "MmbStBmlObjectControllerSv#onStoreReserveReq() aInfo is null. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2321
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2364
    :catch_0
    move-exception v3

    .line 2367
    .local v3, "e2":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStoreReserve(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2377
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2323
    :cond_0
    :try_start_2
    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;->mmbCrid:[B

    if-nez v5, :cond_1

    .line 2324
    const-string v5, "MmbStBmlObjectControllerSv#onStoreReserveReq() mmbCrid is null. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2327
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 2329
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;->mmbCrid:[B

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2330
    .end local v0    # "acrid":Ljava/lang/String;
    .local v1, "acrid":Ljava/lang/String;
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2331
    const-string v5, "MmbStBmlObjectControllerSv#onStoreReserveReq() mmbCrid is emplty. "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2335
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 2364
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "acrid":Ljava/lang/String;
    .restart local v0    # "acrid":Ljava/lang/String;
    goto :goto_0

    .line 2339
    .end local v0    # "acrid":Ljava/lang/String;
    .restart local v1    # "acrid":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 2340
    .local v4, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v4, :cond_3

    .line 2341
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$6;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-direct {v6, p0, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 2372
    .end local v1    # "acrid":Ljava/lang/String;
    .restart local v0    # "acrid":Ljava/lang/String;
    goto :goto_1

    .line 2357
    .end local v0    # "acrid":Ljava/lang/String;
    .restart local v1    # "acrid":Ljava/lang/String;
    :cond_3
    const-string v5, "MmbStBmlObjectControllerSv#onStoreReserveReq listener is null."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2360
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2368
    .end local v1    # "acrid":Ljava/lang/String;
    .end local v4    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v0    # "acrid":Ljava/lang/String;
    .restart local v3    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 2369
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmbStBmlMwClient#replyCheckStrageStatus() is failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2370
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V
    .locals 12
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;

    .prologue
    const/4 v11, 0x0

    .line 3262
    const/4 v6, 0x0

    .line 3263
    .local v6, "result":Z
    const/4 v0, 0x0

    .line 3264
    .local v0, "adel":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    const/4 v1, 0x0

    .line 3270
    .local v1, "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 3271
    .end local v1    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .local v2, "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->checkMmbStBmlMwTvLinkEnrolReqInfo(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3276
    :try_start_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->getDeleteCandidate()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 3284
    if-nez v0, :cond_1

    .line 3288
    :try_start_3
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-virtual {v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->addTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3289
    const/4 v6, 0x1

    .line 3296
    :goto_0
    :try_start_4
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 3297
    .local v5, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v5, :cond_0

    .line 3298
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$17;

    invoke-direct {v8, p0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$17;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3312
    :goto_1
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3345
    .end local v5    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 3351
    .end local v2    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v1    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .local v4, "e2":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyTvLinkEnrol(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 3361
    .end local v4    # "e2":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 3277
    .end local v1    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v2    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :catch_1
    move-exception v3

    .line 3278
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3281
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v7

    .line 3290
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 3291
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3308
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_0
    const-string v7, "MmbStBmlObjectControllerSv#responseAddTvLink listener is null."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3315
    .end local v5    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 3316
    .restart local v5    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v5, :cond_2

    .line 3317
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$18;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-direct {v8, p0, v5, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$18;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v1, v2

    .line 3356
    .end local v2    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v1    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    goto :goto_3

    .line 3333
    .end local v1    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v2    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :cond_2
    const-string v7, "MmbStBmlObjectControllerSv#onTvLinkEnrolReq listener is null."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3336
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 3352
    .end local v2    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .end local v5    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v1    # "alink":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    .restart local v4    # "e2":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 3353
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmbStBmlMwClient#replyTvLinkEnrol() is failed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3354
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3345
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    goto :goto_2
.end method

.method public onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V
    .locals 9
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;

    .prologue
    const/4 v8, 0x0

    .line 3122
    if-nez p1, :cond_0

    .line 3123
    :try_start_0
    const-string v3, "MmbStBmlObjectControllerSv#onTvLinkStartReq() aInfo is null. "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3126
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3165
    :catch_0
    move-exception v1

    .line 3168
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyTvLinkStart(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3178
    .end local v1    # "e2":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 3136
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 3137
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v2, :cond_1

    .line 3138
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$16;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mbIsShowAv:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mmbReturnUri:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v4, p0, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$16;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3158
    :cond_1
    const-string v3, "MmbStBmlObjectControllerSv#onTvLinkStartReq listener is null."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3161
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3169
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3170
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwClient#replyTvLinkStart() is failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3171
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected parseAribDate(Ljava/lang/String;)J
    .locals 12
    .param p1, "aStrAribDate"    # Ljava/lang/String;

    .prologue
    .line 692
    const/16 v5, 0xc

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "EEE MMM d HH:mm:ss yyyy"

    aput-object v8, v1, v5

    const/4 v5, 0x1

    const-string v8, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v8, v1, v5

    const/4 v5, 0x2

    const-string v8, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v8, v1, v5

    const/4 v5, 0x3

    const-string v8, "yyyyMMddHHmm"

    aput-object v8, v1, v5

    const/4 v5, 0x4

    const-string v8, "yyyy/MM/dd HH:mm"

    aput-object v8, v1, v5

    const/4 v5, 0x5

    const-string v8, "yyyy-MM-dd HH:mm"

    aput-object v8, v1, v5

    const/4 v5, 0x6

    const-string v8, "yy/MM/dd HH:mm"

    aput-object v8, v1, v5

    const/4 v5, 0x7

    const-string v8, "yy-MM-dd HH:mm"

    aput-object v8, v1, v5

    const/16 v5, 0x8

    const-string v8, "yyyy/MM/dd"

    aput-object v8, v1, v5

    const/16 v5, 0x9

    const-string v8, "yyyy-MM-dd"

    aput-object v8, v1, v5

    const/16 v5, 0xa

    const-string v8, "yy/MM/dd"

    aput-object v8, v1, v5

    const/16 v5, 0xb

    const-string v8, "yy-MM-dd"

    aput-object v8, v1, v5

    .line 709
    .local v1, "dateFormats":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 710
    .local v0, "date":Ljava/util/Date;
    const/4 v3, 0x0

    .line 711
    .local v3, "gmtcal":Ljava/util/Calendar;
    const/4 v4, 0x0

    .line 714
    .local v4, "loccal":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 718
    const-wide/16 v6, 0x0

    .line 757
    :goto_0
    return-wide v6

    .line 723
    :cond_0
    :try_start_0
    invoke-static {p1, v1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    .line 737
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v2

    .line 728
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v6, -0x1

    goto :goto_0

    .line 742
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v5, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 743
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 744
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 745
    const/4 v5, 0x1

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 746
    const/4 v5, 0x2

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 747
    const/4 v5, 0x5

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 748
    const/16 v5, 0xa

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 749
    const/16 v5, 0xc

    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 750
    const/16 v5, 0xd

    const/16 v8, 0xd

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 751
    const/16 v5, 0xe

    const/16 v8, 0xe

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 752
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 757
    .local v6, "ret":J
    goto :goto_0
.end method

.method removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 4
    .param p1, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1242
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->checkTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    if-eqz v0, :cond_0

    .line 1244
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aLink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->removeTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 1253
    return-void
.end method

.method responseAddTvLink(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 7
    .param p1, "aResult"    # Z
    .param p2, "aLink"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    const/4 v6, 0x0

    .line 1153
    const/4 v3, 0x0

    .line 1158
    .local v3, "responseaddtvlinkresult":Z
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    if-eqz p1, :cond_0

    .line 1164
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->tvlink:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;

    invoke-virtual {v4, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkPersistentSv;->addTvLink(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1165
    const/4 v3, 0x1

    .line 1172
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 1173
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v2, :cond_1

    .line 1174
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    :goto_1
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1195
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyTvLinkEnrol(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1208
    :goto_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    .line 1209
    instance-of v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    if-nez v4, :cond_2

    .line 1210
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "e2":Ljava/lang/Exception;
    throw v1

    .line 1166
    :catch_1
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1188
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    :cond_1
    const-string v4, "MmbStBmlObjectControllerSv#responseAddTvLink listener is null."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1202
    .end local v2    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .restart local v1    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1203
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbStBmlMwClient#replyTvLinkEnrol() failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1218
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method responseCancelFilecastingReservation(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStoreCancelReserve(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    return-void

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbStBmlMwCtrlClient#replyStoreCancelReserve() failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method responseFilecastingReservation(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 970
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 974
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyStoreReserve(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbStBmlMwCtrlClient#replyStoreReserve() failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method responsePassword(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "aResult"    # I
    .param p2, "aUserName"    # Ljava/lang/String;
    .param p3, "aPassword"    # Ljava/lang/String;
    .param p4, "aBmlParameter"    # I

    .prologue
    const/4 v4, 0x0

    .line 869
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;-><init>()V

    .line 872
    .local v1, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;
    packed-switch p1, :pswitch_data_0

    .line 882
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aResult out of a range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 875
    :pswitch_0
    iput v4, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbUserSelect:I

    .line 885
    :goto_0
    if-nez p2, :cond_0

    .line 886
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aUserName is null."

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 879
    :pswitch_1
    const/4 v2, 0x1

    iput v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbUserSelect:I

    goto :goto_0

    .line 888
    :cond_0
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->checkStringCharCodeRange(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 889
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aUserName char-code out of the range."

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 892
    :cond_1
    if-nez p3, :cond_2

    .line 893
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aPassword is null."

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 895
    :cond_2
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->checkStringCharCodeRange(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 896
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aUserName char-code out of the range."

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 899
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbUserName:[B

    .line 900
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbPassword:[B

    .line 901
    iput p4, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;->mmbBmlParam:I

    .line 904
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 908
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->replyPassword(Lmmb/android/MmbStBmlMw/MmbStBmlMwPasswordReplyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_1
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmbStBmlMwCtrlClient#replyPassword() failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 872
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method responsePermission(II)V
    .locals 5
    .param p1, "aUserSelect"    # I
    .param p2, "aBmlParameter"    # I

    .prologue
    const/4 v4, 0x0

    .line 805
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;-><init>()V

    .line 808
    .local v1, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;
    packed-switch p1, :pswitch_data_0

    .line 826
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aUserSelect out of a range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 811
    :pswitch_0
    iput v4, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;->mmbUserSelect:I

    .line 828
    :goto_0
    iput p2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;->mmbBmlParam:I

    .line 831
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 835
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->replyPermission(Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_1
    return-void

    .line 815
    :pswitch_1
    const/4 v2, 0x1

    iput v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;->mmbUserSelect:I

    goto :goto_0

    .line 819
    :pswitch_2
    const/4 v2, 0x2

    iput v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;->mmbUserSelect:I

    goto :goto_0

    .line 823
    :pswitch_3
    const/4 v2, 0x3

    iput v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPermissionReplyInfo;->mmbUserSelect:I

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmbStBmlMwCtrlClient#replyPermission() failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method responseStartFilecasting(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 937
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyLaunchContent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    return-void

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbStBmlMwCtrlClient#replyLaunchContent() failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method responseStartInputMethod(ILjava/lang/String;)V
    .locals 6
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1067
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;-><init>()V

    .line 1068
    .local v1, "info":Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;
    const/4 v2, 0x0

    .line 1071
    .local v2, "tmp":[B
    packed-switch p1, :pswitch_data_0

    .line 1085
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aType out of a range."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1073
    :pswitch_0
    iput v5, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbFepExitType:I

    .line 1087
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1088
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1089
    iput-object v2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbOutputStr:[B

    .line 1090
    array-length v3, v2

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbOutputStrLen:I

    .line 1097
    :goto_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 1101
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->replyFep(Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_2
    return-void

    .line 1076
    :pswitch_1
    const/4 v3, 0x1

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbFepExitType:I

    goto :goto_0

    .line 1079
    :pswitch_2
    const/4 v3, 0x2

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbFepExitType:I

    goto :goto_0

    .line 1082
    :pswitch_3
    const/4 v3, 0x3

    iput v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbFepExitType:I

    goto :goto_0

    .line 1092
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbOutputStr:[B

    .line 1093
    iput v5, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwFepReplyInfo;->mmbOutputStrLen:I

    goto :goto_1

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MmbStBmlMwCtrlClient#replyFep() failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1071
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method responseStartTvLink(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 1275
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyTvLinkStart(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_0
    return-void

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbStBmlMwClient#replyTvLinkStart() failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method responseTune(Z)V
    .locals 3
    .param p1, "aResult"    # Z

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->ctrl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwCtrlClientWrapperSv;->checkInitalized()V

    .line 1037
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->client:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyEpgTune(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbStBmlMwCtrlClient#replyEpgTune() failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1040
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlObjectControllerSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 549
    return-void
.end method
