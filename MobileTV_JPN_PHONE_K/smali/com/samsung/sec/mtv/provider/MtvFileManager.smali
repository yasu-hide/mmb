.class public Lcom/samsung/sec/mtv/provider/MtvFileManager;
.super Ljava/lang/Object;
.source "MtvFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;,
        Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;,
        Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileComparator;,
        Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;,
        Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;
    }
.end annotation


# static fields
.field private static final ANDROID_SDCARD_PATH:Ljava/lang/String;

.field private static final IMAGE_DB_INDEX_MASK:I = 0x40000000

.field private static final MTV_FILE_MANAGER_TV_FILE_CHANNEL_NAME:Ljava/lang/String; = "chName"

.field private static final MTV_FILE_MANAGER_TV_FILE_CREATION_TIME:Ljava/lang/String; = "iCreateTime"

.field private static final MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

.field private static final MTV_FILE_MANAGER_TV_FILE_DB_NAME_EXT:Ljava/lang/String; = "/mnt/extSdCard/external_tvfiles.db"

.field private static final MTV_FILE_MANAGER_TV_FILE_DURATUIN_OF_RECORDING:Ljava/lang/String; = "iDuration"

.field private static final MTV_FILE_MANAGER_TV_FILE_FIELDS:Ljava/lang/String; = "chName TEXT, proName TEXT, fullFilePath TEXT, V_PID INTEGER, A_PID INTEGER, iCreateTime INTEGER, iDuration INTEGER, iFileFormat INTEGER, iFileSize INTEGER, isLATM INTEGER"

.field private static final MTV_FILE_MANAGER_TV_FILE_FORMAT:Ljava/lang/String; = "iFileFormat"

.field private static final MTV_FILE_MANAGER_TV_FILE_INDEX:Ljava/lang/String; = "rowid"

.field private static final MTV_FILE_MANAGER_TV_FILE_IS_LATM:Ljava/lang/String; = "isLATM"

.field private static final MTV_FILE_MANAGER_TV_FILE_PATH:Ljava/lang/String; = "fullFilePath"

.field private static final MTV_FILE_MANAGER_TV_FILE_PID_OF_AUDIO:Ljava/lang/String; = "A_PID"

.field private static final MTV_FILE_MANAGER_TV_FILE_PID_OF_VIDEO:Ljava/lang/String; = "V_PID"

.field private static final MTV_FILE_MANAGER_TV_FILE_PROGRAM_NAME:Ljava/lang/String; = "proName"

.field private static final MTV_FILE_MANAGER_TV_FILE_SIZE:Ljava/lang/String; = "iFileSize"

.field private static final MTV_FILE_MANAGER_TV_FILE_TABLE:Ljava/lang/String; = "tvfiles_dbtable"

.field private static final MTV_FILE_MANAGER_TV_IMAGES_DB_FIELDS:Ljava/lang/String; = "chName TEXT, proName TEXT, fullFilePath TEXT, iCreateTime INTEGER, iFileFormat INTEGER, iFileSize INTEGER"

.field private static final MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

.field private static final MTV_FILE_MANAGER_TV_IMAGES_DB_NAME_EXT:Ljava/lang/String; = "/mnt/extSdCard/tvimages_database.db"

.field private static final MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION:Ljava/lang/String;

.field private static final MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION_EXT:Ljava/lang/String; = "/mnt/extSdCard/image/MyTvFiles/"

.field private static final MTV_FILE_MANAGER_TV_IMAGE_TABLE:Ljava/lang/String; = "tvimage_dbtable"

.field private static final MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION:Ljava/lang/String;

.field private static final MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION_EXT:Ljava/lang/String; = "/mnt/extSdCard/video/MyTvFiles/"

.field private static final MTV_FILE_MANAGER_TV_TS_FILE_LOCATION:Ljava/lang/String; = "Phone"

.field private static final MTV_FILE_MANAGER_TV_TS_FILE_LOCATION_EXT:Ljava/lang/String; = "SDCard"

.field private static final TAG:Ljava/lang/String; = "MtvFileManager"

.field private static availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

.field static mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private static mIsImageDBEnabled:Z

.field private static vAvailableTvFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/sec/mtv/provider/MtvFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/one-seg/tvfiles_database.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image/MyTvFiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video/MyTvFiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->ANDROID_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/one-seg/tvimages_database.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    .line 75
    sput-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    .line 76
    sput-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    .line 1724
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$1;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$1;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 34
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->convertToImageDbIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    return-object v0
.end method

.method static synthetic access$202([Lcom/samsung/sec/mtv/provider/MtvFile;)[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 0
    .param p0, "x0"    # [Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    .line 34
    sput-object p0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->updateTvFilesDBInfo()V

    return-void
.end method

.method private static convertFromImageDbIndex(I)I
    .locals 4
    .param p0, "imageDbIndex"    # I

    .prologue
    const v3, -0x40000001    # -1.9999999f

    .line 133
    const-string v0, "MtvFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImageDB]  input index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " converted to : hex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    and-int v0, p0, v3

    return v0
.end method

.method private static convertToImageDbIndex(I)I
    .locals 4
    .param p0, "normalIndex"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 128
    const-string v0, "MtvFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImageDB]  input index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " converted to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    or-int v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    or-int v0, p0, v3

    return v0
.end method

.method public static deleteTvFile(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;)V
    .locals 6
    .param p0, "iFileIndex"    # I
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mAppPlayerOneSeg"    # Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/sec/mtv/utility/MtvFileDBException;
        }
    .end annotation

    .prologue
    .line 1217
    const/4 v1, 0x1

    .line 1219
    .local v1, "nativeFileDelete":Z
    const-string v3, "MtvFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entered deleteTvFile(), iFileIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    if-nez p2, :cond_0

    .line 1222
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v4, "Entered deleteTvFile() invalid player "

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1225
    :cond_0
    sget-boolean v3, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    if-eqz v3, :cond_1

    if-lez p0, :cond_1

    .line 1227
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->isImageDbIndex(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1229
    const/4 v1, 0x0

    .line 1231
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->deleteTvImage(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;)V
    :try_end_0
    .catch Lcom/samsung/sec/mtv/utility/MtvFileDBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1240
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    .line 1241
    .local v2, "pbContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v2, :cond_3

    invoke-interface {p2, v2, p0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->deleteTVFile(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1243
    const-string v3, "MtvFileManager"

    const-string v4, "Successfully deleted the requested TV File "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    .end local v2    # "pbContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_2
    :goto_1
    const-string v3, "MtvFileManager"

    const-string v4, "Exiting deleteTvFile() "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Lcom/samsung/sec/mtv/utility/MtvFileDBException;
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;->printStackTrace()V

    goto :goto_0

    .line 1247
    .end local v0    # "e":Lcom/samsung/sec/mtv/utility/MtvFileDBException;
    .restart local v2    # "pbContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_3
    const-string v3, "MtvFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDeleteTVRecFile() is failed, index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static deleteTvImage(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;)V
    .locals 9
    .param p0, "iFileIndex"    # I
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mAppPlayerOneSeg"    # Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/sec/mtv/utility/MtvFileDBException;
        }
    .end annotation

    .prologue
    .line 1311
    const/4 v3, 0x0

    .line 1312
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 1313
    .local v5, "result":Z
    if-nez p2, :cond_0

    .line 1315
    new-instance v6, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v7, "Entered deleteTvFile() invalid player "

    invoke-direct {v6, v7}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1318
    :cond_0
    sget-boolean v6, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->isImageDbIndex(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1320
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->deleteTvFile(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;)V

    .line 1362
    :cond_2
    :goto_0
    return-void

    .line 1324
    :cond_3
    if-nez p1, :cond_4

    .line 1326
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal param - filePath is null, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    :cond_4
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->convertFromImageDbIndex(I)I

    move-result p0

    .line 1331
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteTvImage: file index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  filePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const/4 v0, 0x0

    .line 1334
    .local v0, "dbName":Ljava/lang/String;
    const-string v6, "PhMem"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "Phone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "sdcard"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1335
    :cond_5
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    .line 1341
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM tvimage_dbtable WHERE ROWID == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1343
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1345
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1347
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1354
    :cond_6
    if-eqz v3, :cond_7

    .line 1355
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1356
    :cond_7
    const/4 v3, 0x0

    .line 1359
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "query":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_2

    .line 1360
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteTvImage: failed to delete file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1337
    :cond_8
    const-string v0, "/mnt/extSdCard/tvimages_database.db"

    goto :goto_1

    .line 1349
    :catch_0
    move-exception v1

    .line 1350
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteTvImage failed(), file index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    if-eqz v3, :cond_9

    .line 1355
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1356
    :cond_9
    const/4 v3, 0x0

    .line 1357
    goto :goto_2

    .line 1354
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_a

    .line 1355
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1356
    :cond_a
    const/4 v3, 0x0

    throw v6
.end method

.method private static generateFileName(ILjava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "fileType"    # I
    .param p1, "nowDate"    # Ljava/util/Date;

    .prologue
    .line 284
    const/4 v3, 0x0

    .line 285
    .local v3, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 287
    .local v1, "extension":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    .line 288
    :cond_0
    const-string v3, "record"

    .line 289
    const-string v1, ".ts"

    .line 301
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmssS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 302
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "dateString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 291
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_2
    const/4 v4, 0x2

    if-ne p0, v4, :cond_3

    .line 292
    const-string v3, "capture"

    .line 293
    const-string v1, ".jpg"

    goto :goto_0

    .line 295
    :cond_3
    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    .line 296
    const-string v3, "thumb"

    .line 297
    const-string v1, ".thm"

    goto :goto_0
.end method

.method private static getAvailableTVRecFiles()[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 46

    .prologue
    .line 533
    const/4 v11, 0x0

    .line 534
    .local v11, "iItemSize":I
    const/16 v39, 0x0

    .line 535
    .local v39, "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v4, 0x0

    .line 536
    .local v4, "availableTvFiles":[Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v5, 0x0

    .line 537
    .local v5, "creationTime":Ljava/util/Date;
    const/16 v38, 0x0

    .line 539
    .local v38, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    if-eqz v42, :cond_0

    .line 540
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v42

    .line 738
    :goto_0
    return-object v42

    .line 545
    :cond_0
    const-string v42, "MtvFileManager"

    const-string v43, " Entered getAvailableTVRecFiles() "

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    if-eqz v42, :cond_d

    .line 549
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    if-eqz v42, :cond_1

    .line 551
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->clear()V

    .line 555
    :cond_1
    const-string v42, "MtvFileManager"

    const-string v43, "nativeUpdateTvFile() Success"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :try_start_0
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    const/16 v43, 0x0

    const/16 v44, 0x1

    invoke-static/range {v42 .. v44}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v38

    .line 567
    :goto_1
    if-eqz v38, :cond_c

    .line 569
    const-string v42, "select rowid, * from tvfiles_dbtable"

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 571
    .local v36, "mCursor":Landroid/database/Cursor;
    const-string v42, "rowid"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 572
    .local v13, "index":I
    const-string v42, "chName"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 573
    .local v16, "indexChannelName":I
    const-string v42, "proName"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 574
    .local v30, "indexProgramName":I
    const-string v42, "fullFilePath"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 575
    .local v24, "indexFilePath":I
    const-string v42, "V_PID"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 576
    .local v32, "indexVPID":I
    const-string v42, "A_PID"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 577
    .local v14, "indexAPID":I
    const-string v42, "iCreateTime"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 578
    .local v18, "indexCreationTime":I
    const-string v42, "iDuration"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 579
    .local v20, "indexDuration":I
    const-string v42, "iFileFormat"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 580
    .local v22, "indexFileFormat":I
    const-string v42, "iFileSize"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 581
    .local v26, "indexFileSzie":I
    const-string v42, "isLATM"

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 583
    .local v28, "indexIsLATM":I
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v42

    if-eqz v42, :cond_3

    .line 585
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 586
    const-string v42, "MtvFileManager"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "getAvailableTVRecFiles() iItemSize : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_2
    new-instance v39, Lcom/samsung/sec/mtv/provider/MtvFile;

    .end local v39    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    invoke-direct/range {v39 .. v39}, Lcom/samsung/sec/mtv/provider/MtvFile;-><init>()V

    .line 591
    .restart local v39    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    .line 592
    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    .line 593
    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    .line 594
    move-object/from16 v0, v36

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    .line 595
    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfVideo:I

    .line 596
    move-object/from16 v0, v36

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfAudio:I

    .line 597
    new-instance v5, Ljava/util/Date;

    .end local v5    # "creationTime":Ljava/util/Date;
    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v0, v42

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 598
    .restart local v5    # "creationTime":Ljava/util/Date;
    move-object/from16 v0, v39

    iput-object v5, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    .line 599
    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->durationOfRecording:I

    .line 600
    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    .line 601
    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    .line 602
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->isLATM:I

    .line 604
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v42

    if-nez v42, :cond_2

    .line 612
    :goto_2
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 613
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 617
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v42

    if-eqz v42, :cond_5

    .line 619
    const/16 v38, 0x0

    .line 622
    :try_start_1
    const-string v42, "/mnt/extSdCard/external_tvfiles.db"

    const/16 v43, 0x0

    const/16 v44, 0x1

    invoke-static/range {v42 .. v44}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v38

    .line 636
    :goto_3
    if-nez v38, :cond_6

    .line 638
    const-string v42, "MtvFileManager"

    const-string v43, "getAvailableTVRecFiles() there is no TvFiles in sd card"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-array v4, v11, [Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 640
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 642
    const-string v42, "MtvFileManager"

    const-string v43, "getAvailableTVRecFiles() End"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v13    # "index":I
    .end local v14    # "indexAPID":I
    .end local v16    # "indexChannelName":I
    .end local v18    # "indexCreationTime":I
    .end local v20    # "indexDuration":I
    .end local v22    # "indexFileFormat":I
    .end local v24    # "indexFilePath":I
    .end local v26    # "indexFileSzie":I
    .end local v28    # "indexIsLATM":I
    .end local v30    # "indexProgramName":I
    .end local v32    # "indexVPID":I
    .end local v36    # "mCursor":Landroid/database/Cursor;
    :goto_4
    const-string v42, "MtvFileManager"

    const-string v43, " Exiting getAvailableTVRecFiles() "

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v42, v4

    .line 738
    goto/16 :goto_0

    .line 561
    :catch_0
    move-exception v7

    .line 563
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v42, "MtvFileManager"

    const-string v43, "getAvailableTVRecFiles() there is no TvFiles"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 610
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v13    # "index":I
    .restart local v14    # "indexAPID":I
    .restart local v16    # "indexChannelName":I
    .restart local v18    # "indexCreationTime":I
    .restart local v20    # "indexDuration":I
    .restart local v22    # "indexFileFormat":I
    .restart local v24    # "indexFilePath":I
    .restart local v26    # "indexFileSzie":I
    .restart local v28    # "indexIsLATM":I
    .restart local v30    # "indexProgramName":I
    .restart local v32    # "indexVPID":I
    .restart local v36    # "mCursor":Landroid/database/Cursor;
    :cond_3
    const-string v42, "MtvFileManager"

    const-string v43, "getAvailableTvFiles() mCursor.moveToFirst() failed"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 624
    :catch_1
    move-exception v8

    .line 626
    .local v8, "ex":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v42

    if-nez v42, :cond_4

    .line 627
    const-string v42, "MtvFileManager"

    const-string v43, "getAvailableTVRecFiles(): openDatabase /mnt/extSdCard/external_tvfiles.db failed"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_4
    const/16 v38, 0x0

    .line 629
    goto :goto_3

    .line 633
    .end local v8    # "ex":Landroid/database/sqlite/SQLiteException;
    :cond_5
    const-string v42, "MtvFileManager"

    const-string v43, "No SDcard available. Cannot openDatabase /mnt/extSdCard/external_tvfiles.db"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 647
    :cond_6
    const-string v42, "select rowid, * from tvfiles_dbtable"

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 648
    .local v37, "mCursor_ext":Landroid/database/Cursor;
    const-string v42, "rowid"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 649
    .local v34, "index_ext":I
    const-string v42, "chName"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 650
    .local v17, "indexChannelName_ext":I
    const-string v42, "proName"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 651
    .local v31, "indexProgramName_ext":I
    const-string v42, "fullFilePath"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 652
    .local v25, "indexFilePath_ext":I
    const-string v42, "V_PID"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 653
    .local v33, "indexVPID_ext":I
    const-string v42, "A_PID"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 654
    .local v15, "indexAPID_ext":I
    const-string v42, "iCreateTime"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 655
    .local v19, "indexCreationTime_ext":I
    const-string v42, "iDuration"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 656
    .local v21, "indexDuration_ext":I
    const-string v42, "iFileFormat"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 657
    .local v23, "indexFileFormat_ext":I
    const-string v42, "iFileSize"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 658
    .local v27, "indexFileSzie_ext":I
    const-string v42, "isLATM"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 659
    .local v29, "indexIsLATM_ext":I
    const/4 v12, 0x0

    .line 660
    .local v12, "iItemSize_ext":I
    const/4 v6, 0x0

    .line 661
    .local v6, "creationTime_ext":Ljava/util/Date;
    const/4 v10, 0x0

    .local v10, "i":I
    const/16 v35, 0x0

    .line 663
    .local v35, "index_last":I
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v42

    if-eqz v42, :cond_a

    .line 665
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 666
    const-string v42, "MtvFileManager"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "getAvailableTVRecFiles() iItemSize_ext : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_7
    new-instance v39, Lcom/samsung/sec/mtv/provider/MtvFile;

    .end local v39    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    invoke-direct/range {v39 .. v39}, Lcom/samsung/sec/mtv/provider/MtvFile;-><init>()V

    .line 671
    .restart local v39    # "newTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    mul-int/lit8 v42, v42, -0x1

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->index:I

    .line 672
    move-object/from16 v0, v37

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->channelName:Ljava/lang/String;

    .line 673
    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->programName:Ljava/lang/String;

    .line 674
    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    .line 675
    move-object/from16 v0, v37

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfVideo:I

    .line 676
    move-object/from16 v0, v37

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->pidOfAudio:I

    .line 677
    new-instance v6, Ljava/util/Date;

    .end local v6    # "creationTime_ext":Ljava/util/Date;
    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v0, v42

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 678
    .restart local v6    # "creationTime_ext":Ljava/util/Date;
    move-object/from16 v0, v39

    iput-object v6, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->creationTime:Ljava/util/Date;

    .line 679
    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->durationOfRecording:I

    .line 680
    move-object/from16 v0, v37

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    .line 681
    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    .line 682
    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v39

    iput v0, v1, Lcom/samsung/sec/mtv/provider/MtvFile;->isLATM:I

    .line 684
    const/4 v9, 0x0

    .line 686
    .local v9, "flag":Z
    move/from16 v10, v35

    :goto_5
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual/range {v42 .. v42}, Ljava/util/Vector;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v10, v0, :cond_8

    .line 688
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 689
    .local v41, "tmpTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    invoke-virtual/range {v41 .. v41}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v40

    .line 690
    .local v40, "tmpCreationTime":Ljava/util/Date;
    invoke-virtual/range {v40 .. v40}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v44

    cmp-long v42, v42, v44

    if-lez v42, :cond_b

    .line 692
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v10, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 693
    add-int/lit8 v35, v10, 0x1

    .line 694
    const/4 v9, 0x1

    .line 700
    .end local v40    # "tmpCreationTime":Ljava/util/Date;
    .end local v41    # "tmpTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_8
    if-nez v9, :cond_9

    .line 702
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_9
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z

    move-result v42

    if-nez v42, :cond_7

    .line 707
    .end local v9    # "flag":Z
    :cond_a
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 708
    invoke-virtual/range {v38 .. v38}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 710
    add-int v42, v11, v12

    move/from16 v0, v42

    new-array v4, v0, [Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 711
    sget-object v42, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 713
    const-string v42, "MtvFileManager"

    const-string v43, "getAvailableTVRecFiles() End"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 686
    .restart local v9    # "flag":Z
    .restart local v40    # "tmpCreationTime":Ljava/util/Date;
    .restart local v41    # "tmpTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 720
    .end local v6    # "creationTime_ext":Ljava/util/Date;
    .end local v9    # "flag":Z
    .end local v10    # "i":I
    .end local v12    # "iItemSize_ext":I
    .end local v13    # "index":I
    .end local v14    # "indexAPID":I
    .end local v15    # "indexAPID_ext":I
    .end local v16    # "indexChannelName":I
    .end local v17    # "indexChannelName_ext":I
    .end local v18    # "indexCreationTime":I
    .end local v19    # "indexCreationTime_ext":I
    .end local v20    # "indexDuration":I
    .end local v21    # "indexDuration_ext":I
    .end local v22    # "indexFileFormat":I
    .end local v23    # "indexFileFormat_ext":I
    .end local v24    # "indexFilePath":I
    .end local v25    # "indexFilePath_ext":I
    .end local v26    # "indexFileSzie":I
    .end local v27    # "indexFileSzie_ext":I
    .end local v28    # "indexIsLATM":I
    .end local v29    # "indexIsLATM_ext":I
    .end local v30    # "indexProgramName":I
    .end local v31    # "indexProgramName_ext":I
    .end local v32    # "indexVPID":I
    .end local v33    # "indexVPID_ext":I
    .end local v34    # "index_ext":I
    .end local v35    # "index_last":I
    .end local v36    # "mCursor":Landroid/database/Cursor;
    .end local v37    # "mCursor_ext":Landroid/database/Cursor;
    .end local v40    # "tmpCreationTime":Ljava/util/Date;
    .end local v41    # "tmpTvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_c
    const-string v42, "MtvFileManager"

    const-string v43, "getAvailableTVRecFiles() there is no TvFiles"

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 733
    :cond_d
    const-string v42, "MtvFileManager"

    const-string v43, " vAvilableTVFiles is null.. Cannot get the updated files list "

    invoke-static/range {v42 .. v43}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static getAvailableTVRecFilesEx(Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;)V
    .locals 2
    .param p0, "mListener"    # Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;

    .prologue
    .line 743
    if-nez p0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MtvFileManagerListener listener cannot be null..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->updateTvFilesDBInfo()V

    .line 749
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->isDbModified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    const-string v0, "MtvFileManager"

    const-string v1, "getAvailableTVRecFilesEx(MtvFileManagerListener) :: No Change in DB. Returning the old List.... "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;->onPostUpdate([Lcom/samsung/sec/mtv/provider/MtvFile;Z)V

    .line 759
    :goto_0
    return-void

    .line 756
    :cond_1
    const-string v0, "MtvFileManager"

    const-string v1, "getAvailableTVRecFilesEx(MtvFileManagerListener) :: DB updated... Computing The whole list in new Thread..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerRunnable;-><init>(Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static declared-synchronized getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 11
    .param p0, "isTvFilesDBInfoUpdated"    # Z

    .prologue
    .line 771
    const-class v8, Lcom/samsung/sec/mtv/provider/MtvFileManager;

    monitor-enter v8

    if-eqz p0, :cond_0

    .line 773
    :try_start_0
    const-string v7, "MtvFileManager"

    const-string v9, "updateTvFilesDBInfo already called !"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :goto_0
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->getTotalItemsCount()I

    move-result v4

    .line 782
    .local v4, "mCurrentTvFilesCount":I
    if-nez v4, :cond_1

    .line 784
    const-string v7, "MtvFileManager"

    const-string v9, "getAvailableTVRecFilesEx() :: No TvFiles found !"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v7, 0x0

    sput-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 786
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    :goto_1
    monitor-exit v8

    return-object v7

    .line 777
    .end local v4    # "mCurrentTvFilesCount":I
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->updateTvFilesDBInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 788
    .restart local v4    # "mCurrentTvFilesCount":I
    :cond_1
    :try_start_2
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->isDbModified()Z

    move-result v7

    if-nez v7, :cond_3

    .line 790
    const-string v7, "MtvFileManager"

    const-string v9, "getAvailableTVRecFilesEx() :: No Change in DB. Returning the old List.... "

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v3, 0x0

    .local v3, "iLoop":I
    :goto_2
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 793
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AvailableTVRecFiles: #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 795
    :cond_2
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    goto :goto_1

    .line 799
    .end local v3    # "iLoop":I
    :cond_3
    const/4 v5, 0x0

    .line 800
    .local v5, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    .line 802
    .local v6, "totalCount":I
    sget-boolean v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    if-nez v7, :cond_4

    .line 803
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFiles()[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v7

    goto :goto_1

    .line 805
    :cond_4
    const-string v7, "MtvFileManager"

    const-string v9, " Entered getAvailableTVRecFilesEx() "

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    if-eqz v7, :cond_6

    .line 809
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-eqz v7, :cond_5

    .line 811
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 819
    :cond_5
    :goto_3
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_17

    .line 828
    :try_start_3
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 835
    :goto_4
    if-eqz v5, :cond_9

    .line 837
    :try_start_4
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;

    const/4 v7, 0x1

    invoke-direct {v0, v5, v7}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 839
    .local v0, "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    if-eqz v0, :cond_8

    .line 841
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAvailableTVRecFilesEx() opened db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ItemSize is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v7

    if-lez v7, :cond_7

    .line 846
    :goto_5
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getNextTvFile()Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    .local v2, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v2, :cond_7

    .line 848
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 849
    const/4 v2, 0x0

    goto :goto_5

    .line 816
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    .end local v2    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_6
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    sput-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    goto :goto_3

    .line 830
    :catch_0
    move-exception v1

    .line 832
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAvailableTVRecFilesEx() open failed for db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v5, 0x0

    goto :goto_4

    .line 852
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->close()V

    .line 854
    :cond_8
    const/4 v0, 0x0

    .line 856
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 857
    const/4 v5, 0x0

    .line 862
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_9
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-eqz v7, :cond_a

    .line 864
    const/4 v5, 0x0

    .line 867
    :try_start_5
    const-string v7, "/mnt/extSdCard/external_tvfiles.db"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 880
    :goto_6
    if-eqz v5, :cond_d

    .line 882
    :try_start_6
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;

    const/4 v7, 0x2

    invoke-direct {v0, v5, v7}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 884
    .restart local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    if-eqz v0, :cond_c

    .line 886
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAvailableTVRecFilesEx() opened db: /mnt/extSdCard/external_tvfiles.db ItemSize is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v7

    if-lez v7, :cond_b

    .line 891
    :goto_7
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getNextTvFile()Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    .restart local v2    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v2, :cond_b

    .line 893
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 894
    const/4 v2, 0x0

    goto :goto_7

    .line 869
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    .end local v2    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :catch_1
    move-exception v1

    .line 871
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v7, "MtvFileManager"

    const-string v9, "getAvailableTVRecFilesEx() open failed for db: /mnt/extSdCard/external_tvfiles.db"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/4 v5, 0x0

    .line 873
    goto :goto_6

    .line 877
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_a
    const-string v7, "MtvFileManager"

    const-string v9, "No SDcard available. Cannot openDatabase /mnt/extSdCard/external_tvfiles.db"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 897
    .restart local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_b
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->close()V

    .line 899
    :cond_c
    const/4 v0, 0x0

    .line 901
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 902
    const/4 v5, 0x0

    .line 908
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_d
    :try_start_7
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    .line 915
    :goto_8
    if-eqz v5, :cond_10

    .line 917
    :try_start_8
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;

    const/4 v7, 0x3

    invoke-direct {v0, v5, v7}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 919
    .restart local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    if-eqz v0, :cond_f

    .line 921
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAvailableTVRecFilesEx() opened db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ItemSize is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v7

    if-lez v7, :cond_e

    .line 926
    :goto_9
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getNextTvFile()Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    .restart local v2    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v2, :cond_e

    .line 928
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 929
    const/4 v2, 0x0

    goto :goto_9

    .line 910
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    .end local v2    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :catch_2
    move-exception v1

    .line 912
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAvailableTVRecFilesEx() open failed for db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const/4 v5, 0x0

    goto :goto_8

    .line 932
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_e
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->close()V

    .line 934
    :cond_f
    const/4 v0, 0x0

    .line 936
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 937
    const/4 v5, 0x0

    .line 943
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_10
    :try_start_9
    const-string v7, "/mnt/extSdCard/tvimages_database.db"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v5

    .line 950
    :goto_a
    if-eqz v5, :cond_13

    .line 952
    :try_start_a
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;

    const/4 v7, 0x3

    invoke-direct {v0, v5, v7}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 954
    .restart local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    if-eqz v0, :cond_12

    .line 956
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAvailableTVRecFilesEx() opened db: /mnt/extSdCard/tvimages_database.db ItemSize is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v7

    if-lez v7, :cond_11

    .line 961
    :goto_b
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getNextTvFile()Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    .restart local v2    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v2, :cond_11

    .line 963
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 964
    const/4 v2, 0x0

    goto :goto_b

    .line 945
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    .end local v2    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :catch_3
    move-exception v1

    .line 947
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v7, "MtvFileManager"

    const-string v9, "getAvailableTVRecFilesEx() open failed for db: /mnt/extSdCard/tvimages_database.db"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/4 v5, 0x0

    goto :goto_a

    .line 967
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->close()V

    .line 969
    :cond_12
    const/4 v0, 0x0

    .line 971
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 972
    const/4 v5, 0x0

    .line 975
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_13
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Vector;->removeAll(Ljava/util/Collection;)Z

    .line 976
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v6

    .line 977
    if-lez v6, :cond_15

    .line 982
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    new-instance v9, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileComparator;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileComparator;-><init>(Lcom/samsung/sec/mtv/provider/MtvFileManager$1;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 985
    if-lez v6, :cond_16

    .line 987
    new-array v7, v6, [Lcom/samsung/sec/mtv/provider/MtvFile;

    sput-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 988
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v7, :cond_14

    .line 989
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    sget-object v9, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 990
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "iLoop":I
    :goto_c
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v7, v7

    if-ge v3, v7, :cond_16

    .line 992
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New AvailableTVRecFiles #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 998
    .end local v3    # "iLoop":I
    :cond_15
    const-string v7, "MtvFileManager"

    const-string v9, "getAvailableTVRecFilesEx(): total file count from all DBs = 0 (NO FILES FOUND)"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_16
    :goto_d
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Exiting getAvailableTVRecFilesEx(), totalCount read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    goto/16 :goto_1

    .line 1004
    :cond_17
    const-string v7, "MtvFileManager"

    const-string v9, " vAvilableTVFiles is null.. Cannot get the updated files list "

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_d
.end method

.method private static getCaptureFilePath(I)Ljava/lang/String;
    .locals 1
    .param p0, "storagetype"    # I

    .prologue
    .line 280
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "sdcard/image/MyTvFiles/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/mnt/extSdCard/image/MyTvFiles/"

    goto :goto_0
.end method

.method private static getCountCoulmn(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "mCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 1191
    if-eqz p0, :cond_0

    .line 1193
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1194
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1197
    :cond_0
    return v0
.end method

.method public static getFileCount(I)I
    .locals 9
    .param p0, "storageLoc"    # I

    .prologue
    const/4 v8, 0x1

    .line 1014
    const/4 v3, 0x0

    .line 1015
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1016
    .local v1, "dbPath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1018
    .local v4, "totalCount":I
    if-ne v8, p0, :cond_4

    .line 1019
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    .line 1024
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1025
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1032
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 1033
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 1034
    .local v0, "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->getItemSize()I

    move-result v4

    .line 1036
    const-string v5, "MtvFileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] entries in ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;->close()V

    .line 1039
    :cond_2
    const/4 v0, 0x0

    .line 1040
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1041
    const/4 v3, 0x0

    .line 1044
    .end local v0    # "builder":Lcom/samsung/sec/mtv/provider/MtvFileManager$MtvFileManagerTvFileBuilder;
    :cond_3
    return v4

    .line 1020
    :cond_4
    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1021
    const-string v1, "/mnt/extSdCard/external_tvfiles.db"

    goto :goto_0

    .line 1027
    :catch_0
    move-exception v2

    .line 1028
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v6, "MtvFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileCount() - Cannot open DB ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] from ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne p0, v8, :cond_5

    const-string v5, "Phone"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] memory"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v3, 0x0

    goto :goto_1

    .line 1028
    :cond_5
    const-string v5, "SDcard"

    goto :goto_2
.end method

.method private static getMaxIdColumn(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "mCurSor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 1202
    if-eqz p0, :cond_0

    .line 1204
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1205
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1208
    :cond_0
    return v0
.end method

.method private static getMtvFileFromAvailable(ILjava/lang/String;)Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 3
    .param p0, "iFileIndex"    # I
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1639
    const/4 v1, 0x0

    .line 1640
    .local v1, "mTempFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v0, 0x0

    .local v0, "iLoop":I
    :goto_0
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1642
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v2

    if-ne p0, v2, :cond_1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1644
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mTempFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 1648
    .restart local v1    # "mTempFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_0
    return-object v1

    .line 1640
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getRecThumbPath(I)Ljava/lang/String;
    .locals 1
    .param p0, "storageType"    # I

    .prologue
    .line 276
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "sdcard/video/MyTvFiles/thumbnails/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/mnt/extSdCard/video/MyTvFiles/thumbnails/"

    goto :goto_0
.end method

.method private static insertOneSegTvFile(Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 14
    .param p0, "mtvFile"    # Lcom/samsung/sec/mtv/provider/MtvFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/sec/mtv/utility/MtvFileDBException;,
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    .local v8, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "MtvFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separate DB for captured images is enabled..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->insertOneSegTvImage(Lcom/samsung/sec/mtv/provider/MtvFile;)V
    :try_end_0
    .catch Lcom/samsung/sec/mtv/utility/MtvFileDBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v7

    .line 163
    .local v7, "e":Lcom/samsung/sec/mtv/utility/MtvFileDBException;
    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v7    # "e":Lcom/samsung/sec/mtv/utility/MtvFileDBException;
    :cond_1
    if-eqz p0, :cond_d

    .line 174
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Phone"

    const-string v2, "Phone"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION:Ljava/lang/String;

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGE_FILE_LOCATION:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION:Ljava/lang/String;

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_MP4_FILE_LOCATION:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 180
    :cond_2
    :try_start_1
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 188
    if-nez v8, :cond_3

    .line 190
    const-string v0, "MtvFileManager"

    const-string v1, "insertOneSegTvFile() fail to create db"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v1, "insertOneSegTvFile() fail to create db"

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :catch_1
    move-exception v7

    .line 184
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "MtvFileManager"

    const-string v1, "insertOneSegTvFile() fail to create db"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v1, "insertOneSegTvFile() fail to create db"

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_3
    const-string v0, "CREATE TABLE IF NOT EXISTS tvfiles_dbtable (chName TEXT, proName TEXT, fullFilePath TEXT, V_PID INTEGER, A_PID INTEGER, iCreateTime INTEGER, iDuration INTEGER, iFileFormat INTEGER, iFileSize INTEGER, isLATM INTEGER);"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v6

    .line 197
    .local v6, "creationTime":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    if-eq v0, v9, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-nez v0, :cond_5

    .line 200
    :cond_4
    const-string v0, "MtvFileManager"

    const-string v1, "insertOneSegTvFile() the parameter is invalid"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 202
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v1, "insertOneSegTvFile() the parameter is invalid"

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    if-ne v0, v10, :cond_6

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO tvfiles_dbtable VALUES (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", -1, -1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", -1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    :goto_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 218
    const/4 v8, 0x0

    .line 219
    goto/16 :goto_0

    .line 212
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO tvfiles_dbtable VALUES (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getPidOfVideo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getPidOfAudio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getDurationOfRecording()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    .end local v6    # "creationTime":Ljava/util/Date;
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SDCard"

    const-string v2, "SDCard"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/mnt/extSdCard/image/MyTvFiles/"

    const-string v2, "/mnt/extSdCard/image/MyTvFiles/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/mnt/extSdCard/video/MyTvFiles/"

    const-string v2, "/mnt/extSdCard/video/MyTvFiles/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :cond_8
    :try_start_2
    const-string v0, "/mnt/extSdCard/external_tvfiles.db"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 234
    if-nez v8, :cond_9

    .line 236
    const-string v0, "MtvFileManager"

    const-string v1, "insertOneSegTvFile() fail to create db in Ext memory"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v1, "insertOneSegTvFile() fail to create db in Ext memory"

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :catch_2
    move-exception v7

    .line 230
    .restart local v7    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "MtvFileManager"

    const-string v1, "insertOneSegTvFile() fail to create db in Ext memory"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v1, "insertOneSegTvFile() fail to create db in Ext memory"

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_9
    const-string v0, "CREATE TABLE IF NOT EXISTS tvfiles_dbtable (chName TEXT, proName TEXT, fullFilePath TEXT, V_PID INTEGER, A_PID INTEGER, iCreateTime INTEGER, iDuration INTEGER, iFileFormat INTEGER, iFileSize INTEGER, isLATM INTEGER);"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v6

    .line 243
    .restart local v6    # "creationTime":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    if-eq v0, v9, :cond_a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v0

    cmp-long v0, v0, v12

    if-nez v0, :cond_b

    .line 246
    :cond_a
    const-string v0, "MtvFileManager"

    const-string v1, "insertOneSegTvFile() the parameter is invalid"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 248
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v1, "insertOneSegTvFile() the parameter is invalid"

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    if-ne v0, v10, :cond_c

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO tvfiles_dbtable VALUES (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", -1, -1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", -1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 0);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 265
    const/4 v8, 0x0

    .line 266
    goto/16 :goto_0

    .line 259
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO tvfiles_dbtable VALUES (\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getPidOfVideo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getPidOfAudio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getDurationOfRecording()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 271
    .end local v6    # "creationTime":Ljava/util/Date;
    :cond_d
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v1, "The parameter is null"

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static insertOneSegTvImage(Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 10
    .param p0, "mtvFile"    # Lcom/samsung/sec/mtv/provider/MtvFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/sec/mtv/utility/MtvFileDBException;,
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "dbName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 447
    .local v3, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v5, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    if-nez v5, :cond_0

    .line 449
    const-string v5, "MtvFileManager"

    const-string v6, "separate DB for captured images is NOT enabled... use insertOneSegTvFile directly!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->insertOneSegTvFile(Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 523
    :goto_0
    return-void

    .line 454
    :cond_0
    if-nez p0, :cond_1

    .line 456
    const-string v5, "MtvFileManager"

    const-string v6, "input param is null, nothing to save!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 462
    const-string v5, "MtvFileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v6, "unsupported file format for db storage"

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_4

    .line 470
    :cond_3
    const-string v5, "MtvFileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertOneSegTvImage() the parameter is invalid and the channelname is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v6, "insertOneSegTvImage() the parameter is invalid"

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 474
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "filePath":Ljava/lang/String;
    const-string v5, "PhMem"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "Phone"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "sdcard"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 476
    :cond_5
    const-string v5, "MtvFileManager"

    const-string v6, "insertOneSegTvImage()  - to phone memory"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    .line 485
    :goto_1
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 493
    if-nez v3, :cond_7

    .line 495
    const-string v5, "MtvFileManager"

    const-string v6, "insertOneSegTvFile() fail to create db"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v6, "insertOneSegTvFile() fail to create db"

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 480
    :cond_6
    const-string v5, "MtvFileManager"

    const-string v6, "insertOneSegTvImage()  - to SD card"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "/mnt/extSdCard/tvimages_database.db"

    goto :goto_1

    .line 487
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "MtvFileManager"

    const-string v6, "insertOneSegTvImage() fail to create db"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v6, "insertOneSegTvImage() fail to create db"

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 500
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_7
    :try_start_1
    const-string v4, "CREATE TABLE IF NOT EXISTS tvimage_dbtable (chName TEXT, proName TEXT, fullFilePath TEXT, iCreateTime INTEGER, iFileFormat INTEGER, iFileSize INTEGER);"

    .line 501
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 503
    const/4 v4, 0x0

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO tvimage_dbtable VALUES (\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 514
    const-string v5, "MtvFileManager"

    invoke-static {v5, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_8
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    if-eqz v3, :cond_9

    .line 520
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 521
    :cond_9
    const/4 v3, 0x0

    .line 522
    goto/16 :goto_0

    .line 516
    .end local v4    # "query":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 517
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v5, "MtvFileManager"

    const-string v6, "insertOneSegTvImage() failed"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    if-eqz v3, :cond_a

    .line 520
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 521
    :cond_a
    const/4 v3, 0x0

    .line 522
    goto/16 :goto_0

    .line 519
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_b

    .line 520
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 521
    :cond_b
    const/4 v3, 0x0

    throw v5
.end method

.method private static isImageDbIndex(I)Z
    .locals 2
    .param p0, "index"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 140
    and-int v0, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static renameTvFile(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;Ljava/lang/String;)Z
    .locals 8
    .param p0, "iFileIndex"    # I
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mAppPlayerOneSeg"    # Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .param p3, "renameString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/sec/mtv/utility/MtvFileDBException;
        }
    .end annotation

    .prologue
    .line 1261
    const-string v5, "MtvFileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Entered renameTvFile(), iFileIndex["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] renameString["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const/4 v2, 0x1

    .line 1264
    .local v2, "nativeFileRename":Z
    const/4 v0, 0x0

    .line 1265
    .local v0, "bRetVal":Z
    if-nez p2, :cond_0

    .line 1267
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v6, "Entered renameTvFile() invalid player "

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1270
    :cond_0
    sget-boolean v5, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mIsImageDBEnabled:Z

    if-eqz v5, :cond_1

    if-lez p0, :cond_1

    .line 1272
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->isImageDbIndex(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1274
    const/4 v2, 0x0

    .line 1276
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->renameTvImage(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/samsung/sec/mtv/utility/MtvFileDBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1283
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1285
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    .line 1286
    .local v4, "pbContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getFile()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1289
    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getFile()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;

    move-result-object v5

    invoke-virtual {v5, p0, p3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;->renameTVFile(ILjava/lang/String;)Z

    move-result v0

    .line 1292
    .end local v4    # "pbContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_2
    if-eqz v0, :cond_3

    .line 1294
    invoke-static {p0, p1}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getMtvFileFromAvailable(ILjava/lang/String;)Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    .line 1295
    .local v3, "newFileInfo":Lcom/samsung/sec/mtv/provider/MtvFile;
    invoke-virtual {v3, p3}, Lcom/samsung/sec/mtv/provider/MtvFile;->setProgramName(Ljava/lang/String;)V

    .line 1296
    invoke-static {p0, p1, v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->udpateAvilableFilesbyFileIndex(ILjava/lang/String;Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 1298
    .end local v3    # "newFileInfo":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_3
    const-string v5, "MtvFileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exiting renameTvFile() with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    return v0

    .line 1277
    :catch_0
    move-exception v1

    .line 1278
    .local v1, "e":Lcom/samsung/sec/mtv/utility/MtvFileDBException;
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;->printStackTrace()V

    goto :goto_0
.end method

.method private static renameTvImage(ILjava/lang/String;Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;Ljava/lang/String;)Z
    .locals 9
    .param p0, "iFileIndex"    # I
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mAppPlayerOneSeg"    # Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .param p3, "renameString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/sec/mtv/utility/MtvFileDBException;
        }
    .end annotation

    .prologue
    .line 1367
    const/4 v0, 0x0

    .line 1369
    .local v0, "bRetVal":Z
    const/4 v4, 0x0

    .line 1370
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_0

    .line 1372
    new-instance v6, Lcom/samsung/sec/mtv/utility/MtvFileDBException;

    const-string v7, "Entered renameTvImage() invalid player "

    invoke-direct {v6, v7}, Lcom/samsung/sec/mtv/utility/MtvFileDBException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1376
    :cond_0
    if-nez p1, :cond_1

    .line 1378
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal param - filePath is null, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 1415
    .end local v0    # "bRetVal":Z
    .local v1, "bRetVal":I
    :goto_0
    return v1

    .line 1382
    .end local v1    # "bRetVal":I
    .restart local v0    # "bRetVal":Z
    :cond_1
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->convertFromImageDbIndex(I)I

    move-result p0

    .line 1383
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "renameTvImage: file index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  filePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const/4 v2, 0x0

    .line 1386
    .local v2, "dbName":Ljava/lang/String;
    const-string v6, "PhMem"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Phone"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "sdcard"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1387
    :cond_2
    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    .line 1393
    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE tvimage_dbtable SET proName = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE ROWID == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1398
    .local v5, "query":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    const/4 v0, 0x1

    .line 1408
    if-eqz v4, :cond_3

    .line 1409
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1410
    :cond_3
    const/4 v4, 0x0

    .line 1414
    .end local v5    # "query":Ljava/lang/String;
    :goto_2
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "renameTvImage: file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bRetVal:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 1415
    .restart local v1    # "bRetVal":I
    goto/16 :goto_0

    .line 1389
    .end local v1    # "bRetVal":I
    :cond_4
    const-string v2, "/mnt/extSdCard/tvimages_database.db"

    goto :goto_1

    .line 1401
    :catch_0
    move-exception v3

    .line 1402
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v6, "MtvFileManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "renameTvImage failed(), file index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const/4 v0, 0x0

    .line 1404
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1408
    if-eqz v4, :cond_5

    .line 1409
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1410
    :cond_5
    const/4 v4, 0x0

    .line 1411
    goto :goto_2

    .line 1408
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_6

    .line 1409
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1410
    :cond_6
    const/4 v4, 0x0

    throw v6
.end method

.method public static saveFile(ILandroid/graphics/Bitmap;Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 26
    .param p0, "storageType"    # I
    .param p1, "bmpImage"    # Landroid/graphics/Bitmap;
    .param p2, "file"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    .line 308
    const/4 v10, 0x0

    .line 309
    .local v10, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 310
    .local v5, "dirPath":Ljava/io/File;
    const/4 v9, 0x0

    .line 312
    .local v9, "fileFullPathName":Ljava/lang/String;
    if-nez p2, :cond_8

    const/4 v14, 0x2

    .line 314
    .local v14, "format":I
    :goto_0
    packed-switch v14, :pswitch_data_0

    .line 331
    :goto_1
    :pswitch_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 333
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v21

    if-nez v21, :cond_0

    .line 334
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile: filePath="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " fileName="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 337
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 339
    :cond_1
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    .local v15, "imgFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 342
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 343
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_2
    const/4 v12, 0x0

    .line 351
    .local v12, "fileout":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v21, "TAG"

    const-string v22, "saveFile: create new fileoutputstream"

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    .end local v12    # "fileout":Ljava/io/FileOutputStream;
    .local v13, "fileout":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v18

    .line 354
    .local v18, "isCompressed":Z
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 356
    if-eqz v18, :cond_a

    .line 357
    new-instance v4, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;-><init>(I)V

    .line 358
    .local v4, "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    const/16 v21, 0x1

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->getOutputSize(II)I

    move-result v20

    .line 359
    .local v20, "outSize":I
    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 360
    .local v8, "encBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 361
    .local v16, "inputData":Ljava/nio/ByteBuffer;
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile:  file length = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v21

    if-nez v21, :cond_3

    .line 363
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile:  outSize = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 367
    .local v11, "filein":Ljava/io/FileInputStream;
    const/16 v19, -0x1

    .line 368
    .local v19, "numbrerOfBytesRead":I
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v19

    .line 369
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " numbrerOfBytesRead "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 381
    :goto_4
    :try_start_5
    const-string v21, "TAG"

    const-string v22, "saveFile:  Encrypt "

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->encryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 384
    const/4 v12, 0x0

    .line 385
    .end local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v12    # "fileout":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 386
    .end local v12    # "fileout":Ljava/io/FileOutputStream;
    .restart local v13    # "fileout":Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v12, v13

    .line 391
    .end local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v12    # "fileout":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_8
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v21

    if-nez v21, :cond_4

    .line 392
    const-string v21, "TAG"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile:  encrypted length"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_4
    const-string v21, "TAG"

    const-string v22, "saveFile:  Encrypt Success "

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 396
    const-string v21, "MtvFileManager"

    const-string v22, "saveFile: file.mFormat == FILE_FORMAT_JPEG "

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 399
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    .line 400
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v21

    if-nez v21, :cond_5

    .line 401
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile: FILE SIZE = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileSize:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 405
    :cond_5
    :goto_6
    :try_start_a
    invoke-static/range {p2 .. p2}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->insertOneSegTvImage(Lcom/samsung/sec/mtv/provider/MtvFile;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 419
    .end local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .end local v11    # "filein":Ljava/io/FileInputStream;
    .end local v16    # "inputData":Ljava/nio/ByteBuffer;
    .end local v19    # "numbrerOfBytesRead":I
    .end local v20    # "outSize":I
    :cond_6
    :goto_7
    if-eqz v12, :cond_7

    .line 420
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 427
    .end local v18    # "isCompressed":Z
    :cond_7
    :goto_8
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile:returning filefull path = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void

    .line 312
    .end local v12    # "fileout":Ljava/io/FileOutputStream;
    .end local v14    # "format":I
    .end local v15    # "imgFile":Ljava/io/File;
    :cond_8
    move-object/from16 v0, p2

    iget v14, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->fileFormat:I

    goto/16 :goto_0

    .line 319
    .restart local v14    # "format":I
    :pswitch_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvFile;->filePath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".thm"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 320
    new-instance v5, Ljava/io/File;

    .end local v5    # "dirPath":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getRecThumbPath(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v5    # "dirPath":Ljava/io/File;
    goto/16 :goto_1

    .line 323
    :pswitch_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    invoke-static/range {v22 .. v23}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->generateFileName(ILjava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 324
    const-string v21, "jpg"

    const-string v22, "img"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 325
    new-instance v5, Ljava/io/File;

    .end local v5    # "dirPath":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getCaptureFilePath(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v5    # "dirPath":Ljava/io/File;
    goto/16 :goto_1

    .line 344
    .restart local v15    # "imgFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 345
    .local v7, "e1":Ljava/io/IOException;
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile File creation fail ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 370
    .end local v7    # "e1":Ljava/io/IOException;
    .restart local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .restart local v11    # "filein":Ljava/io/FileInputStream;
    .restart local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v16    # "inputData":Ljava/nio/ByteBuffer;
    .restart local v18    # "isCompressed":Z
    .restart local v19    # "numbrerOfBytesRead":I
    .restart local v20    # "outSize":I
    :catch_1
    move-exception v7

    .line 371
    .restart local v7    # "e1":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_3

    .line 408
    .end local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v7    # "e1":Ljava/io/IOException;
    .end local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .end local v11    # "filein":Ljava/io/FileInputStream;
    .end local v16    # "inputData":Ljava/nio/ByteBuffer;
    .end local v18    # "isCompressed":Z
    .end local v19    # "numbrerOfBytesRead":I
    .end local v20    # "outSize":I
    :catch_2
    move-exception v6

    move-object v12, v13

    .line 409
    .end local v13    # "fileout":Ljava/io/FileOutputStream;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "fileout":Ljava/io/FileOutputStream;
    :goto_9
    :try_start_d
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile FileNotFoundException ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 411
    const/4 v9, 0x0

    .line 419
    if-eqz v12, :cond_7

    .line 420
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_8

    .line 421
    :catch_3
    move-exception v6

    .line 422
    .local v6, "e":Ljava/io/IOException;
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile FileOutputStream.close() IOException ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 376
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "fileout":Ljava/io/FileOutputStream;
    .restart local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .restart local v11    # "filein":Ljava/io/FileInputStream;
    .restart local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v16    # "inputData":Ljava/nio/ByteBuffer;
    .restart local v18    # "isCompressed":Z
    .restart local v19    # "numbrerOfBytesRead":I
    .restart local v20    # "outSize":I
    :catch_4
    move-exception v6

    .line 378
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    .line 413
    .end local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .end local v11    # "filein":Ljava/io/FileInputStream;
    .end local v16    # "inputData":Ljava/nio/ByteBuffer;
    .end local v18    # "isCompressed":Z
    .end local v19    # "numbrerOfBytesRead":I
    .end local v20    # "outSize":I
    :catch_5
    move-exception v17

    move-object v12, v13

    .line 415
    .end local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v12    # "fileout":Ljava/io/FileOutputStream;
    .local v17, "io":Ljava/io/IOException;
    :goto_a
    :try_start_10
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile IOException ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] in the outermost block"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 419
    if-eqz v12, :cond_7

    .line 420
    :try_start_11
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_8

    .line 421
    :catch_6
    move-exception v6

    .line 422
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile FileOutputStream.close() IOException ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 387
    .end local v6    # "e":Ljava/io/IOException;
    .end local v17    # "io":Ljava/io/IOException;
    .restart local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .restart local v11    # "filein":Ljava/io/FileInputStream;
    .restart local v16    # "inputData":Ljava/nio/ByteBuffer;
    .restart local v18    # "isCompressed":Z
    .restart local v19    # "numbrerOfBytesRead":I
    .restart local v20    # "outSize":I
    :catch_7
    move-exception v7

    .line 388
    .restart local v7    # "e1":Ljava/io/IOException;
    :goto_b
    :try_start_12
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 408
    .end local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v7    # "e1":Ljava/io/IOException;
    .end local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .end local v11    # "filein":Ljava/io/FileInputStream;
    .end local v16    # "inputData":Ljava/nio/ByteBuffer;
    .end local v18    # "isCompressed":Z
    .end local v19    # "numbrerOfBytesRead":I
    .end local v20    # "outSize":I
    :catch_8
    move-exception v6

    goto/16 :goto_9

    .line 402
    .restart local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .restart local v11    # "filein":Ljava/io/FileInputStream;
    .restart local v16    # "inputData":Ljava/nio/ByteBuffer;
    .restart local v18    # "isCompressed":Z
    .restart local v19    # "numbrerOfBytesRead":I
    .restart local v20    # "outSize":I
    :catch_9
    move-exception v6

    .line 403
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_6

    .line 413
    .end local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .end local v11    # "filein":Ljava/io/FileInputStream;
    .end local v16    # "inputData":Ljava/nio/ByteBuffer;
    .end local v18    # "isCompressed":Z
    .end local v19    # "numbrerOfBytesRead":I
    .end local v20    # "outSize":I
    :catch_a
    move-exception v17

    goto :goto_a

    .line 421
    .restart local v18    # "isCompressed":Z
    :catch_b
    move-exception v6

    .line 422
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v21, "MtvFileManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveFile FileOutputStream.close() IOException ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 418
    .end local v6    # "e":Ljava/io/IOException;
    .end local v18    # "isCompressed":Z
    :catchall_0
    move-exception v21

    .line 419
    :goto_c
    if-eqz v12, :cond_9

    .line 420
    :try_start_13
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 424
    :cond_9
    :goto_d
    throw v21

    .line 421
    :catch_c
    move-exception v6

    .line 422
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v22, "MtvFileManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "saveFile FileOutputStream.close() IOException ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 418
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "fileout":Ljava/io/FileOutputStream;
    .restart local v13    # "fileout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v21

    move-object v12, v13

    .end local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v12    # "fileout":Ljava/io/FileOutputStream;
    goto :goto_c

    .line 387
    .end local v12    # "fileout":Ljava/io/FileOutputStream;
    .restart local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .restart local v11    # "filein":Ljava/io/FileInputStream;
    .restart local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v16    # "inputData":Ljava/nio/ByteBuffer;
    .restart local v18    # "isCompressed":Z
    .restart local v19    # "numbrerOfBytesRead":I
    .restart local v20    # "outSize":I
    :catch_d
    move-exception v7

    move-object v12, v13

    .end local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v12    # "fileout":Ljava/io/FileOutputStream;
    goto :goto_b

    .end local v4    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v8    # "encBuf":Ljava/nio/ByteBuffer;
    .end local v11    # "filein":Ljava/io/FileInputStream;
    .end local v12    # "fileout":Ljava/io/FileOutputStream;
    .end local v16    # "inputData":Ljava/nio/ByteBuffer;
    .end local v19    # "numbrerOfBytesRead":I
    .end local v20    # "outSize":I
    .restart local v13    # "fileout":Ljava/io/FileOutputStream;
    :cond_a
    move-object v12, v13

    .end local v13    # "fileout":Ljava/io/FileOutputStream;
    .restart local v12    # "fileout":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static udpateAvilableFilesbyFileIndex(ILjava/lang/String;Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 3
    .param p0, "iFileIndex"    # I
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "newFile"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    .line 1653
    const/4 v0, 0x0

    .local v0, "iLoop":I
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1655
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v1

    if-ne p0, v1, :cond_1

    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1657
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1658
    sget-object v1, Lcom/samsung/sec/mtv/provider/MtvFileManager;->vAvailableTvFiles:Ljava/util/Vector;

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvFileManager;->availableTvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1662
    :cond_0
    return-void

    .line 1653
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static updateTvFilesDBInfo()V
    .locals 12

    .prologue
    .line 1060
    const-class v8, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    monitor-enter v8

    .line 1062
    :try_start_0
    const-string v7, "MtvFileManager"

    const-string v9, "updateTvFilesDBInfo()"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const/4 v1, 0x0

    .line 1064
    .local v1, "itemsCount":I
    const/4 v2, 0x0

    .line 1065
    .local v2, "lastItemId":I
    const/4 v4, 0x0

    .line 1066
    .local v4, "mDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "select count(rowid) from tvfiles_dbtable"

    .line 1067
    .local v5, "rawQueryForItemCount":Ljava/lang/String;
    const-string v6, "select max (rowid) from tvfiles_dbtable"

    .line 1068
    .local v6, "rawQueryForLastItemId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1069
    .local v3, "mCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->setDBModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    :try_start_1
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1075
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1076
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getCountCoulmn(Landroid/database/Cursor;)I

    move-result v1

    .line 1077
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1078
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1079
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getMaxIdColumn(Landroid/database/Cursor;)I

    move-result v2

    .line 1080
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1081
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    invoke-virtual {v7, v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1091
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1093
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1097
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_6

    .line 1102
    :try_start_3
    const-string v7, "/mnt/extSdCard/external_tvfiles.db"

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1103
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1104
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getCountCoulmn(Landroid/database/Cursor;)I

    move-result v1

    .line 1105
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1106
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1107
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getMaxIdColumn(Landroid/database/Cursor;)I

    move-result v2

    .line 1108
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1109
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    invoke-virtual {v7, v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1119
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1121
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1134
    :cond_1
    :goto_1
    :try_start_5
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1135
    const-string v5, "select count(rowid) from tvimage_dbtable"

    .line 1136
    const-string v6, "select max (rowid) from tvimage_dbtable"

    .line 1137
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1138
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getCountCoulmn(Landroid/database/Cursor;)I

    move-result v1

    .line 1139
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1140
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1141
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getMaxIdColumn(Landroid/database/Cursor;)I

    move-result v2

    .line 1142
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1143
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    invoke-virtual {v7, v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1153
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1155
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1162
    :cond_2
    :goto_2
    :try_start_7
    const-string v7, "/mnt/extSdCard/tvimages_database.db"

    const/4 v9, 0x0

    const/4 v10, 0x1

    sget-object v11, Lcom/samsung/sec/mtv/provider/MtvFileManager;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v7, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1163
    const-string v5, "select count(rowid) from tvimage_dbtable"

    .line 1164
    const-string v6, "select max (rowid) from tvimage_dbtable"

    .line 1165
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1166
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getCountCoulmn(Landroid/database/Cursor;)I

    move-result v1

    .line 1167
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1168
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1169
    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getMaxIdColumn(Landroid/database/Cursor;)I

    move-result v2

    .line 1170
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1171
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    invoke-virtual {v7, v1, v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1181
    if-eqz v4, :cond_3

    :try_start_8
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1183
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1186
    :cond_3
    :goto_3
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1187
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_9
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateTvFilesDBInfo() open failed for db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_FILE_DB_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1087
    const/4 v4, 0x0

    .line 1091
    if-eqz v4, :cond_0

    :try_start_a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1093
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 1186
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v3    # "mCursor":Landroid/database/Cursor;
    .end local v5    # "rawQueryForItemCount":Ljava/lang/String;
    .end local v6    # "rawQueryForLastItemId":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v7

    .line 1091
    .restart local v3    # "mCursor":Landroid/database/Cursor;
    .restart local v5    # "rawQueryForItemCount":Ljava/lang/String;
    .restart local v6    # "rawQueryForLastItemId":Ljava/lang/String;
    :catchall_1
    move-exception v7

    if-eqz v4, :cond_4

    :try_start_b
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1093
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1111
    :catch_1
    move-exception v0

    .line 1113
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_c
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateTvFilesDBInfo() open failed for db: /mnt/extSdCard/external_tvfiles.db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1115
    const/4 v4, 0x0

    .line 1119
    if-eqz v4, :cond_1

    :try_start_d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1121
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 1119
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v7

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1121
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v7

    .line 1127
    :cond_6
    const-string v7, "MtvFileManager"

    const-string v9, "updateTvFilesDBInfo() No SD Card to Open db: /mnt/extSdCard/external_tvfiles.db"

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_FILES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 1145
    :catch_2
    move-exception v0

    .line 1147
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_e
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateTvFilesDBInfo() open failed for db: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/sec/mtv/provider/MtvFileManager;->MTV_FILE_MANAGER_TV_IMAGES_DB_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_INT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1149
    const/4 v4, 0x0

    .line 1153
    if-eqz v4, :cond_2

    :try_start_f
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1155
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_2

    .line 1153
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_3
    move-exception v7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1155
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1173
    :catch_3
    move-exception v0

    .line 1175
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :try_start_10
    const-string v7, "MtvFileManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateTvFilesDBInfo() open failed for db: /mnt/extSdCard/tvimages_database.db"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    sget-object v7, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->TV_IMAGES_EXT:Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/samsung/sec/mtv/provider/MtvFileManager$TV_FILE_DB_INFO;->updateItemsInfo(II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1177
    const/4 v4, 0x0

    .line 1181
    if-eqz v4, :cond_3

    :try_start_11
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1183
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_3

    .line 1181
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_4
    move-exception v7

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1183
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method
