.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;
.super Ljava/lang/Object;
.source "MmbFwSearchConditionSv.java"


# static fields
.field static final EXTFC_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

.field static final EXTMETA_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

.field static final FC_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

.field static final META_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

.field static final SEARCH_COLUMN_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

.field private static final TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

.field private static final TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;


# instance fields
.field final CONDITION_INDEX:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

.field final CONDITION_KEY:Ljava/lang/String;

.field final CONDITION_TARGET:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

.field final CONDITION_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 107
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 113
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 117
    const/16 v0, 0xa6

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaTitleMain"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaTitleAlternative"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_ALTERNATIVE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaTitleSecondary"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaTitleImage"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_MEDIATITLE_IMAGE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v11

    const/4 v1, 0x5

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaKeyWordMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaKeyWordSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaKeyWordOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGenreMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGenreSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGenreOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaParental"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_PG_RATING_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaContentType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaFileFormat"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FORMAT_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaFileSize"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FILESIZE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaMemberOfCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodDispStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodDispEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodAvailStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodAvailEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodNewStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodNewEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSearchKey"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaState"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_DOWNLOADSTATUS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchasePrice"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseCurrency"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE_CURRENCY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseServerUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICINGSERVERURL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseNameTag"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_NAMETAG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseMainId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_MAIN_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSETYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseThreshold"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSTHRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseIntervalStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDSTART:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePlayEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_TRICKPLAYENABLE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePreCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePreTotalTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_TOTALTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePreIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_INTERVALEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptStartTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptAbroadEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_ABROADENABLED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeServiceId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtStartTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtDuration"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_DURATION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtLive"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_LIVE_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtShowing"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_FIRSTSHOWING_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtFree"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_FREE_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtLabel"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_REPEATLABEL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdServiceId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_PROGRAMURL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdDuration"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_DURATION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaTransmitCtrlSession"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_SESSION_DESCRIPTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoAtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoAtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileOffsetTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_OFFSET:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileRandTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_RAMDOMPERIOD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_SCHEDULE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileReptSrtTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_SCHEDULE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileReptEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_SCHEDULE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGroupId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGroupTypeValue"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPTYPE_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPromotional"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_PROMOTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleAlternative"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_TITLE_ALTERNATIVE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_TITLE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleImage"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_MEDIATITLE_IMAGE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriKeyWordMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_KEYWORD_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriKeyWordSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_KEYWORD_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriKeyWordOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGenreMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGenreSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGenreOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriParental"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_PG_RATING_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriMemberOfCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodDispStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodDispEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodAvailStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_AVAILABILITY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodAvailEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodNewStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_NEWARRIVAL_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodNewEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_NEWARRIVAL_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriSynopsisShort"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_SYNOPSIS_SHORT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriSynopsisMedium"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_SYNOPSIS_MEDIUM:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriSynopsisLong"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_SYNOPSIS_LONG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditPersonMainName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_PERSON_MAIN_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditPersonVariantName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_PERSON_VARIANT_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditPersonFormerName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_PERSON_FORMER_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditCharactor"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_CHARACTER_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTitleMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTitleAlternative"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_ALTERNATIVE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTitleSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTitleImage"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_MEDIATITLE_IMAGE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcKeyWordMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcKeyWordSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcKeyWordOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcGenreMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcGenreSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcGenreOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDuration"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_DURATION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcParental"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_PG_RATING_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcContentType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcFileFormat"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FORMAT_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcFileSize"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FILESIZE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcMemberOfCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodDispStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodDispEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodAvailStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodAvailEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodNewStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodNewEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTransmitCtrlSession"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_SESSION_DESCRIPTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcSearchKey"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchasePrice"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseCurrency"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE_CURRENCY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseServerUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICINGSERVERURL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseNameTag"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_NAMETAG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseMainId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_MAIN_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSETYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseThreshold"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSTHRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseIntervalStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDSTART:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePlayEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_TRICKPLAYENABLE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePreCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePreTotalTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_TOTALTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePreIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_INTERVALEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptStartTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptBroadEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_ABROADENABLED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPlayed"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_ISPLAYED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcSize"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_FILESIZE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcResumeInfo"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_RESUME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDownloadedTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_SAVEDTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaServiceID"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_SERVICEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_SERVICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaServiceName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_SERVICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaServiceNameLength"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_NAME_LENGTH:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_SERVICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaServiceLogo"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_LOGO_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_SERVICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcIndivExportFlag"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_EXPORTED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcIndivExportPath"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_EXPORT_PATH:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSynopsisShort"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_SYNOPSIS_SHORT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSynopsisMedium"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_SYNOPSIS_MEDIUM:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSynopsisLong"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_SYNOPSIS_LONG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaBreIdOrPort"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_ID_OR_PORT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaBreIdOrMode"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_ID_OR_MODE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->SEARCH_COLUMN_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    .line 987
    const/16 v0, 0x70

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaGriGroupId"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaTitleMain"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v11

    const/4 v1, 0x5

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaTitleAlternative"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_ALTERNATIVE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaTitleSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaTitleImage"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_MEDIATITLE_IMAGE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaKeyWordMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaKeyWordSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaKeyWordOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGenreMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGenreSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGenreOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaParental"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_PG_RATING_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaContentType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaFileFormat"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FORMAT_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaFileSize"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FILESIZE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaMemberOfCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodDispStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodDispEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodAvailStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodAvailEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodNewStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPeriodNewEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSearchKey"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaState"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_DOWNLOADSTATUS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchasePrice"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseCurrency"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE_CURRENCY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseServerUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICINGSERVERURL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseNameTag"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_NAMETAG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaPurchaseCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseMainId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_MAIN_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSETYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseThreshold"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSTHRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseIntervalStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDSTART:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePlayEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_TRICKPLAYENABLE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePreCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePreTotalTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_TOTALTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicensePreIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_INTERVALEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptStartTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseOptAbroadEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_ABROADENABLED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeServiceId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtStartTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtDuration"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_DURATION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtLive"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_LIVE_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtShowing"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_FIRSTSHOWING_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtFree"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_FREE_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaRealTimeEvtLabel"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_REPEATLABEL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdServiceId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaTransmitCtrlSession"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_SESSION_DESCRIPTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_PROGRAMURL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdDuration"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_DURATION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaOnDmdEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_ODP_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoAtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoAtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileOffsetTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_OFFSET:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileRandTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_RAMDOMPERIOD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_SCHEDULE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileReptSrtTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_SCHEDULE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoFileReptEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_SCHEDULE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGroupTypeValue"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPTYPE_VALUE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPromotional"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_PROMOTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleAlternative"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_TITLE_ALTERNATIVE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_TITLE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriTitleImage"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_MEDIATITLE_IMAGE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriKeyWordMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_KEYWORD_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriKeyWordSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_KEYWORD_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriKeyWordOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGenreMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGenreSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriGenreOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriParental"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_PG_RATING_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriMemberOfCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodDispStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodDispEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodAvailStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_AVAILABILITY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodAvailEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodNewStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_NEWARRIVAL_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriPeriodNewEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_NEWARRIVAL_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriSynopsisShort"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_SYNOPSIS_SHORT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriSynopsisMedium"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_SYNOPSIS_MEDIUM:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriSynopsisLong"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_SYNOPSIS_LONG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditPersonMainName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_PERSON_MAIN_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditPersonVariantName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_PERSON_VARIANT_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditPersonFormerName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_PERSON_FORMER_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaGriCreditCharactor"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT_CHARACTER_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, ""

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_CREDIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, ""

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_SCHEDULE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSynopsisShort"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_SYNOPSIS_SHORT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSynopsisMedium"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_SYNOPSIS_MEDIUM:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSynopsisLong"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_SYNOPSIS_LONG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaBreIdOrPort"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_ID_OR_PORT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaBreIdOrMode"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_ID_OR_MODE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->META_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    .line 1587
    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "fcTitleMain"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v11

    const/4 v1, 0x5

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTitleAlternative"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_ALTERNATIVE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTitleSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTitleImage"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_MEDIATITLE_IMAGE_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcKeyWordMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcKeyWordSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcKeyWordOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcGenreMain"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcGenreSecondary"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_SECONDARY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcGenreOther"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDuration"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_DURATION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcParental"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_PG_RATING_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcContentType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcFileFormat"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FORMAT_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcFileSize"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_FILESIZE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcMemberOfCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodDispStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodDispEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodAvailStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodAvailEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodNewStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPeriodNewEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_NEWARRIVAL_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTransmitCtrlSession"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_SESSION_DESCRIPTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcSearchKey"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseCrid"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchasePrice"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseCurrency"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE_CURRENCY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseName"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseServerUrl"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICINGSERVERURL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPurchaseNameTag"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_NAMETAG:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseMainId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_MAIN_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseType"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSETYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePurchaseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseThreshold"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PLAYCOUNTSTHRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseIntervalStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDSTART:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_VALIDEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePlayEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_TRICKPLAYENABLE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePreCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePreTotalTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_TOTALTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicensePreIntervalEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_PREVIEW_INTERVALEND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptStartTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptEndTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptCountsLimit"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_COUNTSLIMIT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseOptBroadEnabled"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_ABROADENABLED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcPlayed"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_ISPLAYED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcSize"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_FILESIZE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcResumeInfo"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_RESUME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDownloadedTime"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_SAVEDTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcIndivExportFlag"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_EXPORTED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcIndivExportPath"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->RELATED_EXPORT_PATH:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->FC_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    .line 1896
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaMemberOfCrid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaPeriodDispStart"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaPeriodDispEnd"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "metaContentsInfoType"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v11

    const/4 v1, 0x5

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaState"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_DOWNLOADSTATUS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaLicenseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaSdpStorageDemands"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_SESSION_DESCRIPTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMRepairStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_M_REPAIRSTART:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMRepairEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_M_REPAIREND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoAtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoAtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "metaDlInfoMtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->EXTMETA_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    .line 1970
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "crid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "fcMemberOfCrid"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "fcPeriodDispStart"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "fcPeriodDispEnd"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v2, "fcInfoType"

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v1, v0, v11

    const/4 v1, 0x5

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcLicenseId"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcTransmitCtrlSession"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_SESSION_DESCRIPTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDlInfoMRepairStart"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_M_REPAIRSTART:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDlInfoMRepairEnd"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_M_REPAIREND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDlInfoAtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDlInfoAtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDlInfoMtAutoStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcDlInfoMtManualStore"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcProgress"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->EXT_CONTENTS_PROGRESS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    const-string v3, "fcFdtInstanceState"

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->EXT_FDT_INSTANCE_STATE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;-><init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->EXTFC_INDEX_ARRAY:[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;)V
    .locals 0
    .param p1, "aKey"    # Ljava/lang/String;
    .param p2, "aIndex"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p4, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_KEY:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_INDEX:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 65
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_TARGET:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 66
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 70
    return-void
.end method


# virtual methods
.method public isNumberType()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStringType()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
