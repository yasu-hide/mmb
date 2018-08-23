.class public Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;
.super Ljava/lang/Object;
.source "MmbFwParameterFactorySv.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final sClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDescribeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSourceArray:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sSourceArray:[Ljava/lang/Class;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sDescribeMap:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sClassMap:Ljava/util/Map;

    .line 126
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->createMap()V

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;, "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createMap()V
    .locals 4

    .prologue
    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sSourceArray:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 147
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sSourceArray:[Ljava/lang/Class;

    aget-object v0, v2, v1

    .line 148
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sDescribeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sClassMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method private static createObject(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    .locals 7
    .param p0, "aId"    # I

    .prologue
    const/4 v6, 0x0

    .line 173
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sDescribeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 174
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 176
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :goto_0
    return-object v3

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static getId(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->sClassMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 204
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 207
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    .local v1, "result":I
    return v1
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    .locals 2
    .param p1, "aIn"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;, "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .local v0, "id":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->createObject(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v1

    .line 234
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;, "TT;"
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;->readFromParcel(Landroid/os/Parcel;)V

    .line 238
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 70
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;, "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv<TT;>;"
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->createFromParcel(Landroid/os/Parcel;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    .locals 1
    .param p1, "aSize"    # I

    .prologue
    .line 259
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;, "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv<TT;>;"
    new-array v0, p1, [Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    .line 263
    .local v0, "result":[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 70
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;, "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv<TT;>;"
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterFactorySv;->newArray(I)[Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v0

    return-object v0
.end method
