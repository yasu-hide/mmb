.class public Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;
.super Ljava/lang/Object;
.source "MtvUtilMemoryStatus.java"


# static fields
.field static final ERROR:I = -0x1

.field public static final MTV_LOW_MEMORY_LEVEL:I = 0x3200000

.field public static final MTV_MAX_BYTE_RATE:J = 0xd000L

.field public static final MTV_MIN_SIZE_OF_RECORD:J = 0x204000L

.field private static final TAG:Ljava/lang/String; = "MtvUtilMemoryStatus"

.field private static mContext:Landroid/content/Context;

.field private static mExternalStorageSdPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertByteToTime(J)J
    .locals 8
    .param p0, "avail_byte"    # J

    .prologue
    const-wide/32 v6, 0x204000

    .line 128
    cmp-long v4, p0, v6

    if-gez v4, :cond_0

    .line 130
    const-wide/16 v0, 0x0

    .line 131
    .local v0, "recordable_time":J
    const-string v4, "MtvUtilMemoryStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConvertByteToTime: avail_byte is less :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 136
    .end local v0    # "recordable_time":J
    .local v2, "recordable_time":J
    :goto_0
    return-wide v2

    .line 134
    .end local v2    # "recordable_time":J
    :cond_0
    sub-long v4, p0, v6

    const-wide/32 v6, 0xd000

    div-long v0, v4, v6

    .line 135
    .restart local v0    # "recordable_time":J
    const-string v4, "MtvUtilMemoryStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConvertByteToTime: avail_byte : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  recordable_time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 136
    .end local v0    # "recordable_time":J
    .restart local v2    # "recordable_time":J
    goto :goto_0
.end method

.method public static formatSize(JLandroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x7f070263

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "suffix":Ljava/lang/String;
    long-to-double v0, p0

    .line 106
    .local v0, "dSize":D
    long-to-double v4, p0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_1

    .line 107
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    div-double/2addr v0, v6

    .line 109
    long-to-double v4, p0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070274

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    div-double/2addr v0, v6

    .line 112
    long-to-double v4, p0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07025b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    div-double/2addr v0, v6

    .line 117
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "###,###.##"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 78
    const-wide/16 v2, 0x0

    .local v2, "blockSize":J
    const-wide/16 v0, 0x0

    .line 79
    .local v0, "availableBlocks":J
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 80
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 82
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 83
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 84
    mul-long v6, v0, v2

    .line 86
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 61
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 63
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 65
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 66
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 71
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 73
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v4

    .line 74
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method public static isExternalMemoryAvailable()Z
    .locals 8

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "isExternalMemoryAvailable":Z
    sget-object v6, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 35
    const-string v6, "MtvUtilMemoryStatus"

    const-string v7, "isExternalMemoryAvailable: mContext null returning false"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x0

    .line 53
    .local v0, "i":I
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_0
    return v1

    .line 38
    .end local v0    # "i":I
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v3    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    sget-object v6, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->mContext:Landroid/content/Context;

    const-string v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 39
    .restart local v2    # "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 40
    .restart local v3    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 41
    aget-object v5, v3, v0

    .line 42
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 43
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->mExternalStorageSdPath:Ljava/lang/String;

    .line 44
    sget-object v6, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "strMountState":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 46
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 40
    .end local v4    # "strMountState":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isInternalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLowMemoryToLaunch()Z
    .locals 6

    .prologue
    .line 141
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->getAvailableInternalMemorySize()J

    move-result-wide v0

    .line 142
    .local v0, "memory_available":J
    const/4 v2, 0x0

    .line 143
    .local v2, "ret":Z
    const-wide/32 v4, 0x3200000

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 145
    const/4 v2, 0x1

    .line 146
    const-string v3, "MtvUtilMemoryStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLowMemoryToLaunch: memory_available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    return v2
.end method

.method public static setAppComponents(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sput-object p0, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method
