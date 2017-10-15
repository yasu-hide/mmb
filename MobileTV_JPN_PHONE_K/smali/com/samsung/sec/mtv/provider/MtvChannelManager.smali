.class public Lcom/samsung/sec/mtv/provider/MtvChannelManager;
.super Ljava/lang/Object;
.source "MtvChannelManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CH_AVLB:Ljava/lang/String; = "ch_avlb"

.field public static final CH_FAV:Ljava/lang/String; = "ch_fav"

.field public static final CH_NAME:Ljava/lang/String; = "ch_name"

.field public static final CH_PCH:Ljava/lang/String; = "ch_pch"

.field public static final CH_SERVICE_ID1:Ljava/lang/String; = "ch_svcid1"

.field public static final CH_SERVICE_ID2:Ljava/lang/String; = "ch_svcid2"

.field public static final CH_SLOT:Ljava/lang/String; = "ch_slot"

.field public static final CH_VCH:Ljava/lang/String; = "ch_vch"

.field public static final COLUMN_AVLB:I = 0x4

.field public static final COLUMN_FAV:I = 0x3

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MULTICH:I = 0xa

.field public static final COLUMN_NAME:I = 0x5

.field public static final COLUMN_PNUM:I = 0x2

.field public static final COLUMN_SERVICEID:I = 0x9

.field public static final COLUMN_SERVICENAME:I = 0xb

.field public static final COLUMN_SERVICE_ID1:I = 0x7

.field public static final COLUMN_SERVICE_ID2:I = 0x8

.field public static final COLUMN_SLOT:I = 0x6

.field public static final COLUMN_VNUM:I = 0x1

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.curosr.item/vnd.android.mtv.channel"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.mtv.channel"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "ch_vch ASC"

.field public static final PROJECTION:[Ljava/lang/String;

.field protected static PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SRV_MULTI_CHANNEL:Ljava/lang/String; = "srv_multichannel"

.field public static final SRV_SERVICE_ID:Ljava/lang/String; = "srv_svcid1"

.field public static final SRV_SERVICE_NAME:Ljava/lang/String; = "srv_svcname1"

.field protected static final TABLE:Ljava/lang/String; = "channels"

.field private static final TAG:Ljava/lang/String; = "MtvChannelManager"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "content://com.samsung.sec.mtv/channels"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ch_vch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ch_pch"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ch_fav"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ch_avlb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ch_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ch_slot"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ch_svcid1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ch_svcid2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "srv_svcid1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "srv_multichannel"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "srv_svcname1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_vch"

    const-string v2, "ch_vch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_pch"

    const-string v2, "ch_pch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_fav"

    const-string v2, "ch_fav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_avlb"

    const-string v2, "ch_avlb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_name"

    const-string v2, "ch_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_slot"

    const-string v2, "ch_slot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_svcid1"

    const-string v2, "ch_svcid1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "ch_svcid2"

    const-string v2, "ch_svcid2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "srv_svcid1"

    const-string v2, "srv_svcid1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "srv_multichannel"

    const-string v2, "srv_multichannel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "srv_svcname1"

    const-string v2, "srv_svcname1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 13
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 136
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvChannel;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, 0x9

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v11, 0xa

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v12, 0xb

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;IIIIIILjava/lang/String;)V

    return-object v0
.end method

.method public static deleteDB(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 837
    if-nez p1, :cond_0

    .line 838
    sget-object p1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 839
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ch_slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method public static deletePChannelServices(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPCh"    # I

    .prologue
    .line 824
    const-string v1, "MtvChannelManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePChannelServices:: nPCh  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ch_pch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ch_slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 828
    return-void
.end method

.method public static deletePChannelServicesByVch(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nVCh"    # I

    .prologue
    .line 830
    const-string v1, "MtvChannelManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePChannelServices:: nVCh  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ch_vch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ch_slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 834
    return-void
.end method

.method public static deleteVChannelInfo(Landroid/content/Context;III)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nVCh"    # I
    .param p2, "nPCh"    # I
    .param p3, "available"    # I

    .prologue
    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ch_vch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ch_pch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ch_avlb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ch_slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1100
    return-void
.end method

.method public static deleteVChannelInfoBasedOnPhysical(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nVCh"    # I
    .param p2, "nPCh"    # I

    .prologue
    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ch_vch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ch_pch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ch_slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1106
    return-void
.end method

.method public static findAirByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalChannel"    # I

    .prologue
    .line 248
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 249
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 250
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch_avlb=1 AND ch_pch="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ch_slot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 252
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "ch_vch ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 253
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 255
    const-string v0, "MtvChannelManager"

    const-string v4, "findAirByPChannel cursor is not null"

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 259
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 263
    :goto_0
    return-object v6

    .line 261
    :cond_1
    const-string v0, "MtvChannelManager"

    const-string v4, "findAirByPChannel cursor null"

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static findByName(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ChannelName"    # Ljava/lang/String;

    .prologue
    .line 580
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 581
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 582
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch_name=? and ch_slot="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 585
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 586
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 588
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 589
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 591
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_1
    return-object v6
.end method

.method public static findByNamePCh(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ChannelName"    # Ljava/lang/String;
    .param p2, "pch"    # I

    .prologue
    .line 604
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 605
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 606
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch_name=? and ch_pch="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ch_slot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 608
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 609
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 610
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 612
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 614
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 616
    :cond_1
    return-object v6
.end method

.method public static findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalChannel"    # I

    .prologue
    .line 189
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 190
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 191
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch_pch="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ch_slot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 194
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "ch_vch ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 195
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    const-string v0, "MtvChannelManager"

    const-string v4, "findByPChannel cursor is not null"

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 201
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 206
    :goto_0
    return-object v6

    .line 204
    :cond_1
    const-string v0, "MtvChannelManager"

    const-string v4, "findByPChannel cursor null"

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalChannel"    # I
    .param p2, "serviceId"    # I

    .prologue
    .line 218
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 219
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 220
    .local v2, "projection":[Ljava/lang/String;
    const-string v0, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "physicalChannel:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " serviceId:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch_pch="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ch_slot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "srv_svcid1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 224
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "ch_vch ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 226
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    const-string v0, "MtvChannelManager"

    const-string v4, "findByPChannel cursor is not null"

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 231
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 236
    :goto_0
    if-eqz v6, :cond_1

    .line 237
    const-string v0, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    return-object v6

    .line 234
    :cond_2
    const-string v0, "MtvChannelManager"

    const-string v4, "findByPChannel cursor null"

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static findByServiceId(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceID"    # I

    .prologue
    const/4 v4, 0x0

    .line 626
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 627
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 628
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_svcid1<="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_svcid2"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ">="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 630
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 631
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 633
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 634
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 636
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 638
    :cond_1
    return-object v6
.end method

.method public static findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "virtualChannel"    # I

    .prologue
    const/4 v4, 0x0

    .line 273
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 274
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 275
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 276
    .local v3, "selection":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_vch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    :cond_0
    const/4 v6, 0x0

    .line 279
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v7, 0x0

    .line 280
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 283
    :cond_1
    if-eqz v7, :cond_3

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 285
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 286
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 288
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_3
    return-object v6
.end method

.method public static findByVChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "virtualChannel"    # I
    .param p2, "serviceId"    # I

    .prologue
    const/4 v4, 0x0

    .line 330
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 331
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 332
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 333
    .local v3, "selection":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_vch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "srv_svcid1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    :cond_0
    const/4 v6, 0x0

    .line 336
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v7, 0x0

    .line 337
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 340
    :cond_1
    if-eqz v7, :cond_3

    .line 341
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 342
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 345
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_3
    return-object v6
.end method

.method public static findByVChannelBasedOnMultiChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "virtualChannel"    # I
    .param p2, "multichannelNo"    # I

    .prologue
    const/4 v4, 0x0

    .line 360
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 361
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 362
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 363
    .local v3, "selection":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_vch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "srv_multichannel"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    :cond_0
    const/4 v6, 0x0

    .line 366
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v7, 0x0

    .line 367
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 370
    :cond_1
    if-eqz v7, :cond_3

    .line 371
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 372
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 373
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 375
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_3
    return-object v6
.end method

.method public static findMultiChannelNoByServiceId(Landroid/content/Context;II)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPch"    # I
    .param p2, "serviceID"    # I

    .prologue
    .line 488
    const/4 v7, 0x0

    .line 489
    .local v7, "mMultiChannelNo":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v8

    .line 490
    .local v8, "slotID":I
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 491
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 492
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch_pch="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "srv_svcid1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ch_slot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "ch_vch ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 494
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 495
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 496
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 497
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 499
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_1
    return v7
.end method

.method public static findPChannelByMultiChannelNum(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalChannel"    # I
    .param p2, "multiChannel"    # I

    .prologue
    const/4 v4, 0x0

    .line 548
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 549
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 550
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 551
    .local v3, "selection":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and srv_multichannel="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    const/4 v6, 0x0

    .line 556
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v7, 0x0

    .line 557
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 560
    :cond_1
    if-eqz v7, :cond_3

    .line 561
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 562
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 563
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 565
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_3
    return-object v6
.end method

.method public static findPChannelByServiceId(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceID"    # I

    .prologue
    const/4 v4, 0x0

    .line 647
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 648
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 649
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srv_svcid1 = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 651
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 652
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 653
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 654
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 655
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 657
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_1
    return-object v6
.end method

.method public static findVChannelArray(Landroid/content/Context;I)[Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "virtualChannel"    # I

    .prologue
    const/4 v4, 0x0

    .line 299
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 300
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 301
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 302
    .local v3, "selection":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_vch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    :cond_0
    const/4 v7, 0x0

    .line 305
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 308
    :cond_1
    const/4 v6, 0x0

    .line 309
    .local v6, "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_2

    .line 310
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 311
    :cond_2
    if-eqz v7, :cond_4

    .line 312
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 313
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 314
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    aput-object v0, v6, v8

    .line 312
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 316
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 318
    .end local v8    # "i":I
    :cond_4
    return-object v6
.end method

.method public static findVChannelByMultiChannelNum(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "virtualChannel"    # I
    .param p2, "multiChannel"    # I

    .prologue
    const/4 v4, 0x0

    .line 515
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 516
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 517
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 518
    .local v3, "selection":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_vch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and srv_multichannel="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    const/4 v6, 0x0

    .line 523
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v7, 0x0

    .line 524
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 527
    :cond_1
    if-eqz v7, :cond_3

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 529
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 530
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 532
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_3
    return-object v6
.end method

.method public static getAllAvailableChannels(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1078
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1079
    .local v6, "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_0

    .line 1080
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 1081
    :cond_0
    if-eqz v7, :cond_2

    .line 1082
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1083
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 1084
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    aput-object v0, v6, v8

    .line 1082
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1086
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1089
    .end local v8    # "i":I
    :cond_2
    return-object v6
.end method

.method public static getAllChannels(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1112
    const/4 v11, 0x0

    .line 1113
    .local v11, "servicetype1":I
    const/4 v12, 0x0

    .line 1114
    .local v12, "servicetype2":I
    const/4 v6, 0x0

    .line 1115
    .local v6, "channel_slot":I
    new-instance v10, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v10, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 1117
    .local v10, "mMtvPreferences":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    if-eqz v10, :cond_0

    .line 1118
    invoke-virtual {v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v6

    .line 1123
    :cond_0
    const/4 v11, 0x1

    .line 1125
    const-string v5, "ch_vch ASC "

    .line 1126
    .local v5, "sortOrder":Ljava/lang/String;
    const-string v0, "MtvChannelManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "servicetype1 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " servicetype2 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Slot : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1134
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "MtvChannelManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllChannels "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1138
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1139
    .local v7, "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v8, :cond_1

    .line 1140
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 1141
    :cond_1
    if-eqz v8, :cond_3

    .line 1142
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 1143
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1144
    invoke-static {v8}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    aput-object v0, v7, v9

    .line 1142
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1146
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1149
    .end local v9    # "i":I
    :cond_3
    return-object v7
.end method

.method public static getAvailableServices(Landroid/content/Context;I)[Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPch"    # I

    .prologue
    const/4 v4, 0x0

    .line 1173
    const-string v0, "MtvChannelManager"

    const-string v5, "getAllServices enter"

    invoke-static {v0, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 1175
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 1176
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_slot="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1178
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and ch_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1179
    const-string v0, "MtvChannelManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Where "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const/4 v9, 0x0

    .line 1181
    .local v9, "services":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1182
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1183
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1184
    .local v8, "nTotalCnt":I
    if-lez v8, :cond_0

    .line 1185
    new-array v9, v8, [Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 1186
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1187
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 1188
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    aput-object v0, v9, v7

    .line 1189
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1187
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1192
    .end local v7    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1194
    .end local v8    # "nTotalCnt":I
    :cond_1
    const-string v0, "MtvChannelManager"

    const-string v4, "getAllServices exit"

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    return-object v9
.end method

.method public static getChannelByName(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ch_name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_name=? and ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1059
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1060
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1061
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1062
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_1

    .line 1063
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1064
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1065
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 1067
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_1
    return-object v6
.end method

.method protected static getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "channel"    # Lcom/samsung/sec/mtv/provider/MtvChannel;

    .prologue
    const/4 v3, -0x1

    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, "values":Landroid/content/ContentValues;
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    if-eq v1, v3, :cond_0

    .line 110
    const-string v1, "ch_vch"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    :cond_0
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-eq v1, v3, :cond_1

    .line 112
    const-string v1, "ch_pch"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    :cond_1
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    if-eq v1, v3, :cond_2

    .line 114
    const-string v1, "ch_fav"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :cond_2
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    if-eq v1, v3, :cond_3

    .line 116
    const-string v1, "ch_avlb"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 118
    const-string v1, "ch_name"

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_4
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    if-eq v1, v3, :cond_5

    .line 120
    const-string v1, "ch_slot"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    :cond_5
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    if-eq v1, v3, :cond_6

    .line 122
    const-string v1, "ch_svcid1"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    :cond_6
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    if-eq v1, v3, :cond_7

    .line 124
    const-string v1, "ch_svcid2"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    :cond_7
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    if-eq v1, v3, :cond_8

    .line 127
    const-string v1, "srv_svcid1"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    :cond_8
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-eq v1, v3, :cond_9

    .line 129
    const-string v1, "srv_multichannel"

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    :cond_9
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 131
    const-string v1, "srv_svcname1"

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_a
    return-object v0
.end method

.method public static getCount(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-static {p0, v0, v0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 154
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "count"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 156
    .local v6, "count":I
    if-nez p1, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ch_slot="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and ch_pch<>-1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 163
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 167
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_1
    const-string v0, "MtvChannelManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCount sql: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return v6

    .line 159
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and ch_slot="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getCountOfPChannel(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalChannel"    # I

    .prologue
    const/4 v4, 0x0

    .line 418
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 419
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 420
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 421
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 422
    .local v6, "count":I
    if-eqz p0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    :cond_0
    const/4 v7, 0x0

    .line 425
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 428
    :cond_1
    if-eqz v7, :cond_3

    .line 429
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 430
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 431
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 433
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_3
    return v6
.end method

.method public static getCountOfVChannel(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "virtualChannel"    # I

    .prologue
    const/4 v4, 0x0

    .line 389
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 390
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 391
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 392
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 393
    .local v6, "count":I
    if-eqz p0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_vch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    :cond_0
    const/4 v7, 0x0

    .line 396
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 399
    :cond_1
    if-eqz v7, :cond_3

    .line 400
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 401
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 402
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 404
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_3
    return v6
.end method

.method public static getCountOnAir(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string v0, "ch_avlb=1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCurrentMultiChannelNo(Landroid/content/Context;I)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPch"    # I

    .prologue
    .line 1152
    const/4 v7, 0x0

    .line 1154
    .local v7, "mMultiChannelNo":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v9

    .line 1155
    .local v9, "slotID":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1156
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v8

    .line 1159
    .local v8, "mServiceID":I
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 1160
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 1161
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ch_pch="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "srv_svcid1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ch_slot"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1162
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "ch_vch ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1163
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1164
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1165
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1166
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    iget v7, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 1168
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1170
    :cond_1
    return v7

    .line 1158
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "mServiceID":I
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstServiceID(Landroid/content/Context;I)I

    move-result v8

    .restart local v8    # "mServiceID":I
    goto :goto_0
.end method

.method public static getFirst(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 950
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 951
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "ch_vch ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 952
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 953
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_1

    .line 954
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 955
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 956
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 958
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 961
    :cond_1
    return-object v6
.end method

.method public static getFirstChannelByMode(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "LiveMode"    # I
    .param p2, "nPch"    # I

    .prologue
    const/4 v4, 0x0

    .line 442
    const/4 v7, 0x0

    .line 443
    .local v7, "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v8

    .line 444
    .local v8, "slotID":I
    const/4 v3, 0x0

    .line 450
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 452
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 453
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 454
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 455
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 456
    const-string v0, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor.getCount() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v7

    .line 460
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_1
    return-object v7
.end method

.method public static getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_avlb=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "ch_vch ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 879
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 880
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_1

    .line 881
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 882
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 883
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 885
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 887
    :cond_1
    if-nez v6, :cond_2

    .line 888
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirst(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 889
    .end local v6    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_2
    return-object v6
.end method

.method public static getFirstServiceID(Landroid/content/Context;I)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPch"    # I

    .prologue
    const/4 v4, 0x0

    .line 893
    const/4 v7, 0x0

    .line 894
    .local v7, "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v8, 0x0

    .line 895
    .local v8, "mServiceID":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v9

    .line 896
    .local v9, "slotID":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v10

    .line 897
    .local v10, "vCh":I
    const/4 v3, 0x0

    .line 898
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_vch"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 900
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 901
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 902
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 903
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 904
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 905
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 906
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v7

    .line 907
    iget v8, v7, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 909
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 911
    :cond_1
    return v8
.end method

.method public static getFirstVChannelByMode(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "LiveMode"    # I
    .param p2, "nVch"    # I

    .prologue
    const/4 v4, 0x0

    .line 465
    const/4 v7, 0x0

    .line 466
    .local v7, "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v8

    .line 467
    .local v8, "slotID":I
    const/4 v3, 0x0

    .line 473
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_vch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 475
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 476
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 477
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 478
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    const-string v0, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor.getCount() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 481
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v7

    .line 483
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_1
    return-object v7
.end method

.method public static getLast(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 966
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 969
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "ch_vch ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 970
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 971
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_1

    .line 972
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 973
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 974
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 976
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 979
    :cond_1
    return-object v6
.end method

.method public static getLastOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_avlb=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 992
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "ch_vch ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 993
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 994
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_1

    .line 995
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 996
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 997
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 999
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1001
    :cond_1
    if-nez v6, :cond_2

    .line 1002
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getLast(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 1003
    .end local v6    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_2
    return-object v6
.end method

.method public static getNext(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "curChannel"    # I

    .prologue
    const/4 v2, 0x0

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_vch>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ch_slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1015
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1016
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1017
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1018
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_1

    .line 1019
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1020
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 1026
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1029
    :cond_1
    return-object v6

    .line 1023
    :cond_2
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1024
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirst(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    goto :goto_0
.end method

.method public static getPrevious(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "curChannel"    # I

    .prologue
    const/4 v2, 0x0

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_vch<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ch_slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and ch_pch<>-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1042
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1043
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1044
    .local v6, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v7, :cond_1

    .line 1045
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1046
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    .line 1052
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1054
    :cond_1
    return-object v6

    .line 1049
    :cond_2
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1050
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getLast(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    goto :goto_0
.end method

.method public static getServiceIDByMultiCh(Landroid/content/Context;II)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPch"    # I
    .param p2, "nMultiCh"    # I

    .prologue
    const/4 v4, 0x0

    .line 920
    const/4 v7, 0x0

    .line 921
    .local v7, "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/4 v8, 0x0

    .line 922
    .local v8, "mServiceID":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v9

    .line 923
    .local v9, "slotID":I
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v10

    .line 927
    .local v10, "vCh":I
    const/4 v3, 0x0

    .line 928
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ch_pch="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_vch"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "ch_slot"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " and "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "srv_multichannel"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 931
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    .line 932
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->PROJECTION:[Ljava/lang/String;

    .line 933
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 934
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 935
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 936
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 937
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v7

    .line 938
    iget v8, v7, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 940
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 945
    :goto_0
    return v8

    .line 943
    :cond_1
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public static getUri(I)Landroid/net/Uri;
    .locals 4
    .param p0, "uriID"    # I

    .prologue
    .line 101
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 102
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rearrangeDefaultDBValues(Landroid/content/Context;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1199
    const-string v4, "MtvChannelManager"

    const-string v5, "replaceDefaultDBValues"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const/16 v16, 0x0

    .line 1201
    .local v16, "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/16 v17, 0x0

    .line 1202
    .local v17, "default_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/16 v19, 0x0

    .line 1203
    .local v19, "extra_Channel_Urid":I
    const/16 v21, 0x0

    .line 1204
    .local v21, "physical_Number":I
    const/16 v23, 0xd

    .local v23, "virtual_Number":I
    :goto_0
    const/16 v4, 0x18

    move/from16 v0, v23

    if-gt v0, v4, :cond_7

    .line 1205
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findVChannelArray(Landroid/content/Context;I)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v16

    .line 1206
    move-object/from16 v0, v16

    array-length v4, v0

    if-gtz v4, :cond_1

    .line 1204
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 1209
    :cond_1
    const/4 v4, 0x0

    aget-object v4, v16, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v16, v4

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1212
    const/4 v4, 0x0

    aget-object v4, v16, v4

    iget v0, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move/from16 v21, v0

    .line 1213
    const/16 v18, 0x1

    .local v18, "default_DB_Vch":I
    :goto_2
    const/16 v4, 0xc

    move/from16 v0, v18

    if-gt v0, v4, :cond_0

    .line 1214
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v17

    .line 1215
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object/from16 v0, v17

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1213
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1218
    :cond_3
    move-object/from16 v0, v17

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    const/4 v5, 0x0

    aget-object v5, v16, v5

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    if-ne v4, v5, :cond_2

    .line 1219
    const/4 v4, 0x0

    aget-object v4, v16, v4

    iget v0, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    move/from16 v19, v0

    .line 1220
    const/4 v2, 0x0

    .line 1221
    .local v2, "updated_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvChannel;

    .end local v2    # "updated_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    const/4 v4, 0x0

    aget-object v4, v16, v4

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v5, 0x0

    aget-object v5, v16, v5

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    const/4 v6, 0x0

    aget-object v6, v16, v6

    iget v6, v6, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    const/4 v7, 0x0

    aget-object v7, v16, v7

    iget-object v7, v7, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v8, v16, v8

    iget v8, v8, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    const/4 v9, 0x0

    aget-object v9, v16, v9

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    const/4 v10, 0x0

    aget-object v10, v16, v10

    iget v10, v10, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    const/4 v11, 0x0

    aget-object v11, v16, v11

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    const/4 v12, 0x0

    aget-object v12, v16, v12

    iget v12, v12, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    move-object/from16 v0, v17

    iget v13, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    mul-int/lit8 v13, v13, 0xa

    add-int/lit16 v13, v13, 0x258

    const/4 v14, 0x0

    aget-object v14, v16, v14

    iget v14, v14, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    rem-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    const/4 v14, 0x0

    aget-object v14, v16, v14

    iget-object v14, v14, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    invoke-direct/range {v2 .. v14}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;IIIIIILjava/lang/String;)V

    .line 1224
    .restart local v2    # "updated_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v2, :cond_4

    .line 1225
    const-string v4, "MtvChannelManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updated_Channel::  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    invoke-static {v5}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1227
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_6

    .line 1228
    const/16 v20, 0x1

    .local v20, "i":I
    :goto_3
    move-object/from16 v0, v16

    array-length v4, v0

    move/from16 v0, v20

    if-ge v0, v4, :cond_6

    .line 1229
    const/4 v3, 0x0

    .line 1230
    .local v3, "updated_MultiService":Lcom/samsung/sec/mtv/provider/MtvChannel;
    new-instance v3, Lcom/samsung/sec/mtv/provider/MtvChannel;

    .end local v3    # "updated_MultiService":Lcom/samsung/sec/mtv/provider/MtvChannel;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    aget-object v5, v16, v20

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    aget-object v6, v16, v20

    iget v6, v6, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    aget-object v7, v16, v20

    iget v7, v7, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    aget-object v8, v16, v20

    iget-object v8, v8, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    aget-object v9, v16, v20

    iget v9, v9, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    aget-object v10, v16, v20

    iget v10, v10, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    aget-object v11, v16, v20

    iget v11, v11, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    aget-object v12, v16, v20

    iget v12, v12, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    aget-object v13, v16, v20

    iget v13, v13, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    move-object/from16 v0, v17

    iget v14, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    mul-int/lit8 v14, v14, 0xa

    add-int/lit16 v14, v14, 0x258

    aget-object v15, v16, v20

    iget v15, v15, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    rem-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    aget-object v15, v16, v20

    iget-object v15, v15, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    invoke-direct/range {v3 .. v15}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;IIIIIILjava/lang/String;)V

    .line 1233
    .restart local v3    # "updated_MultiService":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v3, :cond_5

    .line 1234
    const-string v4, "MtvChannelManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updated_Channel multiple service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1228
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1238
    .end local v3    # "updated_MultiService":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v20    # "i":I
    :cond_6
    invoke-static/range {v19 .. v19}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getUri(I)Landroid/net/Uri;

    move-result-object v22

    .line 1239
    .local v22, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->update2Default(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->deleteVChannelInfoBasedOnPhysical(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 1249
    .end local v2    # "updated_Channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v18    # "default_DB_Vch":I
    .end local v22    # "uri":Landroid/net/Uri;
    :cond_7
    return-void
.end method

.method public static setDefaultAreaNChannel(Landroid/content/Context;IILjava/lang/String;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "localId"    # I
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 666
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 667
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result p1

    .line 670
    :goto_0
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    if-eqz p3, :cond_0

    .line 671
    new-instance v9, Lcom/samsung/sec/mtv/provider/MtvArea;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/samsung/sec/mtv/provider/MtvArea;-><init>(ILjava/lang/String;)V

    .line 672
    .local v9, "area":Lcom/samsung/sec/mtv/provider/MtvArea;
    invoke-static {v9}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvArea;)Landroid/content/ContentValues;

    move-result-object v18

    .line 673
    .local v18, "values":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "area_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 674
    .local v19, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    .end local v9    # "area":Lcom/samsung/sec/mtv/provider/MtvArea;
    .end local v18    # "values":Landroid/content/ContentValues;
    .end local v19    # "where":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 677
    const-string v3, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_1
    if-ltz p2, :cond_8

    .line 680
    const/4 v11, 0x0

    check-cast v11, [[Ljava/lang/String;

    .line 681
    .local v11, "areaStation":[[Ljava/lang/String;
    const/4 v10, 0x0

    check-cast v10, [[Ljava/lang/String;

    .line 682
    .local v10, "areaGGuideDb":[[Ljava/lang/String;
    const/16 v17, -0x1

    .line 683
    .local v17, "isItAlsoInGGuideDB":I
    const/4 v15, 0x0

    .line 684
    .local v15, "gGuideVirChList":[I
    const/16 v3, 0x40

    move/from16 v0, p2

    if-gt v0, v3, :cond_2

    .line 685
    sget-object v10, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfoGGuide;->AREA_STATION_GGUIDE:[[Ljava/lang/String;

    .line 686
    sget-object v11, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_STATION:[[Ljava/lang/String;

    .line 688
    :cond_2
    const/16 v3, 0x41

    move/from16 v0, p2

    if-lt v0, v3, :cond_3

    const/16 v3, 0x81

    move/from16 v0, p2

    if-gt v0, v3, :cond_3

    .line 689
    sget-object v3, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_STATION:[[Ljava/lang/String;

    array-length v3, v3

    sub-int p2, p2, v3

    .line 690
    sget-object v10, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfoGGuide;->AREA_STATION_GGUIDE_1:[[Ljava/lang/String;

    .line 691
    sget-object v11, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo2;->AREA_STATION_1:[[Ljava/lang/String;

    .line 693
    :cond_3
    const/4 v12, 0x0

    .line 695
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 696
    if-eqz v11, :cond_9

    const-string v3, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areaGGuideDb.length ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    add-int/lit8 v3, p2, -0x1

    aget-object v3, v10, v3

    array-length v3, v3

    if-lez v3, :cond_5

    .line 698
    const-string v3, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "areaGGuideDb[localId -1].length ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, -0x1

    aget-object v5, v10, v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    add-int/lit8 v3, p2, -0x1

    aget-object v3, v10, v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x4

    new-array v15, v3, [I

    .line 700
    const/4 v14, 0x0

    .local v14, "gGuideArray":I
    :goto_1
    add-int/lit8 v3, p2, -0x1

    aget-object v3, v10, v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x4

    if-ge v14, v3, :cond_5

    .line 701
    add-int/lit8 v3, p2, -0x1

    aget-object v3, v10, v3

    mul-int/lit8 v4, v14, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v15, v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 669
    .end local v10    # "areaGGuideDb":[[Ljava/lang/String;
    .end local v11    # "areaStation":[[Ljava/lang/String;
    .end local v12    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "gGuideArray":I
    .end local v15    # "gGuideVirChList":[I
    .end local v17    # "isItAlsoInGGuideDB":I
    :cond_4
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setCurrentSlot(I)V

    goto/16 :goto_0

    .line 704
    .restart local v10    # "areaGGuideDb":[[Ljava/lang/String;
    .restart local v11    # "areaStation":[[Ljava/lang/String;
    .restart local v12    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15    # "gGuideVirChList":[I
    .restart local v17    # "isItAlsoInGGuideDB":I
    :cond_5
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    add-int/lit8 v3, p2, -0x1

    :try_start_1
    aget-object v3, v11, v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x5

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 706
    const/16 v17, -0x1

    .line 707
    add-int/lit8 v3, p2, -0x1

    aget-object v3, v10, v3

    array-length v3, v3

    if-lez v3, :cond_6

    .line 708
    add-int/lit8 v3, v16, 0x1

    invoke-static {v15, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v17

    .line 709
    :cond_6
    const/4 v2, 0x0

    .line 710
    .local v2, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const-string v3, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isItAlsoInGGuideDB ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " i+1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    if-ltz v17, :cond_7

    .line 712
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvChannel;

    .end local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    add-int/lit8 v3, v16, 0x1

    add-int/lit8 v4, p2, -0x1

    aget-object v4, v10, v4

    mul-int/lit8 v5, v17, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    add-int/lit8 v7, p2, -0x1

    aget-object v7, v10, v7

    mul-int/lit8 v8, v17, 0x4

    aget-object v7, v7, v8

    move/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;I)V

    .line 715
    .restart local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    add-int/lit8 v3, p2, -0x1

    aget-object v3, v10, v3

    mul-int/lit8 v4, v17, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    .line 716
    const-string v3, "channels"

    const/4 v4, 0x0

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v12, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 704
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 718
    :cond_7
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvChannel;

    .end local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    add-int/lit8 v3, v16, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "DTV_CHANNEL_NAME_004"

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->getStringByResourceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;I)V

    .line 723
    .restart local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const-string v3, "channels"

    const/4 v4, 0x0

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v12, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 733
    .end local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v16    # "i":I
    :catch_0
    move-exception v13

    .line 735
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 739
    if-eqz v12, :cond_8

    .line 740
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 744
    .end local v10    # "areaGGuideDb":[[Ljava/lang/String;
    .end local v11    # "areaStation":[[Ljava/lang/String;
    .end local v12    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "gGuideVirChList":[I
    .end local v17    # "isItAlsoInGGuideDB":I
    :cond_8
    :goto_4
    return-void

    .line 739
    .restart local v10    # "areaGGuideDb":[[Ljava/lang/String;
    .restart local v11    # "areaStation":[[Ljava/lang/String;
    .restart local v12    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15    # "gGuideVirChList":[I
    .restart local v17    # "isItAlsoInGGuideDB":I
    :cond_9
    if-eqz v12, :cond_8

    .line 740
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4

    .line 739
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_a

    .line 740
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v3
.end method

.method public static update2Default(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 844
    if-nez p1, :cond_0

    .line 855
    :goto_0
    return-void

    .line 846
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ch_slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "where":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 848
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "ch_pch"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v2, "ch_fav"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v2, "ch_avlb"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v2, "ch_name"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v2, "srv_multichannel"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v2, "srv_svcid1"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static update2DefaultByArea(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ch_slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "where":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 860
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "ch_pch"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v2, "ch_fav"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v2, "ch_avlb"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v2, "ch_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method public static updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvChannel;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Lcom/samsung/sec/mtv/provider/MtvChannel;

    .prologue
    .line 763
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    const-string v3, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update or insert CHANNEL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v18

    .line 766
    .local v18, "searchChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-nez v18, :cond_1

    .line 767
    const-string v3, "MtvChannelManager"

    const-string v4, "Update or insert CHANNEL : not present "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 821
    :goto_0
    return-void

    .line 771
    :cond_1
    move-object/from16 v0, v18

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :cond_2
    move-object/from16 v0, v18

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-ne v3, v4, :cond_3

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v18

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-eq v3, v4, :cond_3

    .line 777
    const-string v3, "MtvChannelManager"

    const-string v4, "Update or insert CHANNEL : same present but multi channel is diff "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 781
    :cond_3
    move-object/from16 v0, v18

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-ne v3, v4, :cond_4

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, v18

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ne v3, v4, :cond_4

    .line 783
    const-string v3, "MtvChannelManager"

    const-string v4, "Update or insert CHANNEL : same present "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 787
    :cond_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByNamePCh(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v15

    .line 788
    .local v15, "duplicatedChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const/16 v16, 0x0

    .line 789
    .local v16, "emptyChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-nez v15, :cond_9

    .line 790
    const/16 v17, 0xd

    .local v17, "i":I
    :goto_1
    const/16 v3, 0x18

    move/from16 v0, v17

    if-gt v0, v3, :cond_5

    .line 791
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v16

    .line 792
    if-eqz v16, :cond_7

    .line 793
    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    .line 799
    :cond_5
    if-eqz v16, :cond_8

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 800
    const-string v3, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel.mMultiChannelNo::  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " channel.mVirtualNum:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " emptyChannel.mVirtualNum:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    mul-int/lit8 v13, v13, 0xa

    add-int/lit16 v13, v13, 0x258

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    rem-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    invoke-direct/range {v2 .. v14}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;IIIIIILjava/lang/String;)V

    .line 804
    .end local p1    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .local v2, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v2, :cond_6

    .line 805
    const-string v3, "MtvChannelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emptyChannel::  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 p1, v2

    .end local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local p1    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    goto/16 :goto_0

    .line 790
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 809
    :cond_8
    const-string v3, "MtvChannelManager"

    const-string v4, "if empty channel does not exist do nothing. drop the channel.  "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    .end local v17    # "i":I
    :cond_9
    const-string v3, "MtvChannelManager"

    const-string v4, "Update or insert CHANNEL : same present but multi channel is diff"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    new-instance v2, Lcom/samsung/sec/mtv/provider/MtvChannel;

    iget v3, v15, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mFavorite:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mSlot:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID1:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID2:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    iget v13, v15, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    mul-int/lit8 v13, v13, 0xa

    add-int/lit16 v13, v13, 0x258

    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    rem-int/lit8 v14, v14, 0xa

    add-int/2addr v13, v14

    iget-object v14, v15, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceName:Ljava/lang/String;

    invoke-direct/range {v2 .. v14}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;IIIIIILjava/lang/String;)V

    .line 817
    .end local p1    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getContentValues(Lcom/samsung/sec/mtv/provider/MtvChannel;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-object/from16 p1, v2

    .end local v2    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local p1    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    goto/16 :goto_0
.end method
