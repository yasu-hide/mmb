.class public Landroid/broadcast/helper/MtvUtilDebug;
.super Ljava/lang/Object;
.source "MtvUtilDebug.java"


# static fields
.field private static final DEBUG_FILE:Ljava/lang/String; = "debug.ini"

.field private static final ROOT_DIR:Ljava/lang/String; = "/data/one-seg/"

.field private static final SYSTEM_ROOT_DIR:Ljava/lang/String; = "/system/etc/one-seg"

.field private static final TAG:Ljava/lang/String; = "MtvUtilDebug"

.field private static iSelfInstance:Landroid/broadcast/helper/MtvUtilDebug;


# instance fields
.field private iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    .line 482
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebugSetting;->getInstance()Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    .line 484
    return-void
.end method

.method public static Error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 355
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    return-void
.end method

.method public static High(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 381
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    return-void
.end method

.method public static Low(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 431
    if-eqz p1, :cond_0

    .line 433
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    return-void
.end method

.method public static Mid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 407
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    return-void
.end method

.method public static getDebugInstance()Landroid/broadcast/helper/MtvUtilDebug;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/broadcast/helper/MtvUtilDebug;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebug;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/broadcast/helper/MtvUtilDebug;

    invoke-direct {v0}, Landroid/broadcast/helper/MtvUtilDebug;-><init>()V

    sput-object v0, Landroid/broadcast/helper/MtvUtilDebug;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebug;

    .line 44
    :cond_0
    sget-object v0, Landroid/broadcast/helper/MtvUtilDebug;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebug;

    return-object v0
.end method

.method private getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "aFileContent"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v0, -0x1

    .line 462
    .local v0, "index":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 463
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 465
    :cond_0
    const-string v1, "MtvUtilDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDebugInfoToFile : Error in Index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, -0x1

    .line 472
    :cond_1
    return v0
.end method

.method private isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method public static isReleaseMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    sget-object v3, Landroid/broadcast/helper/MtvUtilDebug;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebug;

    if-nez v3, :cond_0

    .line 446
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugInstance()Landroid/broadcast/helper/MtvUtilDebug;

    move-result-object v3

    sput-object v3, Landroid/broadcast/helper/MtvUtilDebug;->iSelfInstance:Landroid/broadcast/helper/MtvUtilDebug;

    .line 449
    :cond_0
    const-string v3, "ro.debuggable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 451
    .local v0, "DEBUGGABLE":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 454
    :goto_1
    return v1

    .end local v0    # "DEBUGGABLE":Z
    :cond_1
    move v0, v1

    .line 449
    goto :goto_0

    .restart local v0    # "DEBUGGABLE":Z
    :cond_2
    move v1, v2

    .line 454
    goto :goto_1
.end method


# virtual methods
.method public loadDbgInfoFromFile()V
    .locals 22

    .prologue
    .line 53
    const/4 v14, -0x1

    .line 54
    .local v14, "readLen":I
    const/4 v3, 0x0

    .line 56
    .local v3, "content":[B
    new-instance v4, Ljava/io/File;

    const-string v17, "/data/one-seg/"

    const-string v18, "debug.ini"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v4, "debugFile":Ljava/io/File;
    const/4 v8, 0x0

    .line 58
    .local v8, "fileIS":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 62
    .local v12, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-gtz v17, :cond_18

    .line 64
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v17, "/system/etc/one-seg"

    const-string v18, "debug.ini"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v5, "debugSrcFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .local v9, "fileIS":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 68
    invoke-virtual {v9, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    .line 70
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 71
    .end local v12    # "out":Ljava/io/OutputStream;
    .local v13, "out":Ljava/io/OutputStream;
    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v13, v3, v0, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v12, v13

    .line 91
    .end local v5    # "debugSrcFile":Ljava/io/File;
    .end local v13    # "out":Ljava/io/OutputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :goto_0
    if-eqz v9, :cond_1

    .line 92
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 99
    :cond_1
    :goto_1
    if-eqz v12, :cond_2

    .line 100
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 109
    :cond_2
    :goto_2
    if-nez v3, :cond_17

    .line 111
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 112
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v14

    .line 132
    :goto_3
    if-eqz v8, :cond_3

    .line 133
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 140
    :cond_3
    :goto_4
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v7, v3, v0, v14}, Ljava/lang/String;-><init>([BII)V

    .line 141
    .local v7, "fileCont":Ljava/lang/String;
    const/4 v11, -0x1

    .line 142
    .local v11, "index":I
    const/4 v15, -0x1

    .line 146
    .local v15, "settingValue":I
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_ERROR:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 147
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v11, :cond_4

    .line 149
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_ERROR:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v11

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 150
    .local v16, "value":C
    const/16 v17, 0x31

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .line 151
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 154
    .end local v16    # "value":C
    :cond_4
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_HIGH:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 155
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v11, :cond_5

    .line 157
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_HIGH:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v11

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 158
    .restart local v16    # "value":C
    const/16 v17, 0x30

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 167
    .end local v16    # "value":C
    :cond_5
    :goto_6
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_MID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 168
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v11, :cond_12

    .line 170
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_MID:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v11

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 171
    .restart local v16    # "value":C
    const/16 v17, 0x30

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 183
    .end local v16    # "value":C
    :goto_7
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_LOW:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 184
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v11, :cond_6

    .line 186
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_LOW:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v11

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 187
    .restart local v16    # "value":C
    const/16 v17, 0x30

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 196
    .end local v16    # "value":C
    :cond_6
    :goto_8
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v10, v0, :cond_8

    .line 198
    sget-object v17, Landroid/broadcast/helper/MtvUtilDebugSetting;->MdlNclassNames:[Ljava/lang/String;

    aget-object v17, v17, v10

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "MdlName":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v2, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 201
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v11, :cond_16

    .line 203
    const/16 v17, 0x0

    aget-object v17, v2, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v11

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 204
    .restart local v16    # "value":C
    const/16 v17, 0x31

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    const/4 v15, 0x1

    .line 205
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    shl-int v18, v18, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    .line 196
    .end local v16    # "value":C
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 93
    .end local v2    # "MdlName":[Ljava/lang/String;
    .end local v7    # "fileCont":Ljava/lang/String;
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v15    # "settingValue":I
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 95
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 101
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 103
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 75
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    .line 77
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_c
    :try_start_8
    const-string v17, "MtvUtilDebug"

    const-string v18, "loadDbgInfoFromFile: error while copying files from debug file from /system/etc/one-seg"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 91
    if-eqz v8, :cond_7

    .line 92
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 99
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_d
    if-eqz v12, :cond_8

    .line 100
    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 214
    :cond_8
    :goto_e
    return-void

    .line 93
    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 95
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 101
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 103
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 81
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 83
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_f
    :try_start_b
    const-string v17, "MtvUtilDebug"

    const-string v18, "loadDbgInfoFromFile: I/O execption"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 91
    if-eqz v8, :cond_9

    .line 92
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 99
    :cond_9
    :goto_10
    if-eqz v12, :cond_8

    .line 100
    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_e

    .line 101
    :catch_6
    move-exception v6

    .line 103
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 93
    :catch_7
    move-exception v6

    .line 95
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 89
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 91
    :goto_11
    if-eqz v8, :cond_a

    .line 92
    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 99
    :cond_a
    :goto_12
    if-eqz v12, :cond_b

    .line 100
    :try_start_f
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 104
    :cond_b
    :goto_13
    throw v17

    .line 93
    :catch_8
    move-exception v6

    .line 95
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 101
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 103
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 134
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 136
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 116
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    move-object v8, v9

    .line 118
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    :goto_14
    :try_start_10
    const-string v17, "MtvUtilDebug"

    const-string v18, "loadDbgInfoFromFile: error while copying files from debug file from /system/etc/one-seg"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 132
    if-eqz v8, :cond_8

    .line 133
    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_e

    .line 134
    :catch_c
    move-exception v6

    .line 136
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 122
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_d
    move-exception v6

    move-object v8, v9

    .line 124
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    :goto_15
    :try_start_12
    const-string v17, "MtvUtilDebug"

    const-string v18, "loadDbgInfoFromFile: I/O execption"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 132
    if-eqz v8, :cond_8

    .line 133
    :try_start_13
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    goto :goto_e

    .line 134
    :catch_e
    move-exception v6

    .line 136
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 130
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .line 132
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    :goto_16
    if-eqz v8, :cond_c

    .line 133
    :try_start_14
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 137
    :cond_c
    :goto_17
    throw v17

    .line 134
    :catch_f
    move-exception v6

    .line 136
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 150
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "fileCont":Ljava/lang/String;
    .restart local v11    # "index":I
    .restart local v15    # "settingValue":I
    .restart local v16    # "value":C
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 160
    :cond_e
    const/16 v17, 0x31

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    goto/16 :goto_6

    .line 163
    :cond_f
    const-string v17, "MtvUtilDebug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in Value retrieved va;ue"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 173
    :cond_10
    const/16 v17, 0x31

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0xe

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    goto/16 :goto_7

    .line 176
    :cond_11
    const-string v17, "MtvUtilDebug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in Value retrieved va;ue"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 180
    .end local v16    # "value":C
    :cond_12
    const-string v17, "MtvUtilDebug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onLoadDebugInfo :Error in  Index"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 189
    .restart local v16    # "value":C
    :cond_13
    const/16 v17, 0x31

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    goto/16 :goto_8

    .line 192
    :cond_14
    const-string v17, "MtvUtilDebug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in Value retrieved va;ue"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 204
    .restart local v2    # "MdlName":[Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 209
    .end local v16    # "value":C
    :cond_16
    const-string v17, "MtvUtilDebug"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onLoadDebugInfo :Error in  Index"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 130
    .end local v2    # "MdlName":[Ljava/lang/String;
    .end local v7    # "fileCont":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v15    # "settingValue":I
    :catchall_2
    move-exception v17

    goto/16 :goto_16

    .line 122
    :catch_10
    move-exception v6

    goto/16 :goto_15

    .line 116
    :catch_11
    move-exception v6

    goto/16 :goto_14

    .line 89
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v5    # "debugSrcFile":Ljava/io/File;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v17

    move-object v8, v9

    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_11

    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    :catchall_4
    move-exception v17

    move-object v12, v13

    .end local v13    # "out":Ljava/io/OutputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_11

    .line 81
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_12
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_f

    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    :catch_13
    move-exception v6

    move-object v12, v13

    .end local v13    # "out":Ljava/io/OutputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_f

    .line 75
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_14
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    :catch_15
    move-exception v6

    move-object v12, v13

    .end local v13    # "out":Ljava/io/OutputStream;
    .restart local v12    # "out":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_c

    .end local v5    # "debugSrcFile":Ljava/io/File;
    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :cond_17
    move-object v8, v9

    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v8    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_3

    :cond_18
    move-object v9, v8

    .end local v8    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method public saveDbgInfoToFile()V
    .locals 22

    .prologue
    .line 221
    const/4 v8, 0x0

    .line 225
    .local v8, "fileCont":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    const-string v18, "/data/one-seg/"

    const-string v19, "debug.ini"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v6, "debugFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_2

    .line 228
    :cond_0
    const-string v18, "MtvUtilDebug"

    const-string v19, "Debug.ini file doesnt exists"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 233
    .local v5, "content":[B
    const/4 v10, 0x0

    .line 234
    .local v10, "fileIS":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 236
    .local v15, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .local v11, "fileIS":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v11, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    .line 238
    .local v17, "readLen":I
    new-instance v9, Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v9, v5, v0, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .end local v8    # "fileCont":Ljava/lang/String;
    .local v9, "fileCont":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 241
    .local v3, "aFile":[C
    const/4 v14, -0x1

    .line 242
    .local v14, "index":I
    const/4 v4, 0x0

    .line 245
    .local v4, "bReturnValue":Z
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_ERROR:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v4

    .line 248
    array-length v0, v3

    move/from16 v18, v0

    sget-object v19, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_ERROR:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 249
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_ERROR:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v14

    add-int/lit8 v19, v18, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    const/16 v18, 0x31

    :goto_1
    aput-char v18, v3, v19

    .line 252
    :cond_3
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_HIGH:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v4

    .line 255
    array-length v0, v3

    move/from16 v18, v0

    sget-object v19, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_HIGH:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 256
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_HIGH:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v14

    add-int/lit8 v19, v18, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    const/16 v18, 0x31

    :goto_2
    aput-char v18, v3, v19

    .line 259
    :cond_4
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_MID:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v4

    .line 262
    array-length v0, v3

    move/from16 v18, v0

    sget-object v19, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_MID:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 263
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_MID:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v14

    add-int/lit8 v19, v18, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    const/16 v18, 0x31

    :goto_3
    aput-char v18, v3, v19

    .line 266
    :cond_5
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_LOW:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v4

    .line 269
    array-length v0, v3

    move/from16 v18, v0

    sget-object v19, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_LOW:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 270
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->DBG_NAME_LOW:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v14

    add-int/lit8 v19, v18, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_b

    const/16 v18, 0x31

    :goto_4
    aput-char v18, v3, v19

    .line 273
    :cond_6
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ge v13, v0, :cond_f

    .line 275
    sget-object v18, Landroid/broadcast/helper/MtvUtilDebugSetting;->MdlNclassNames:[Ljava/lang/String;

    aget-object v18, v18, v13

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "MdlName":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v2, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugSettingIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 278
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v14, :cond_d

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/broadcast/helper/MtvUtilDebug;->iDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    shl-int v19, v19, v13

    invoke-virtual/range {v18 .. v19}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v4

    .line 282
    array-length v0, v3

    move/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, v2, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 283
    const/16 v18, 0x0

    aget-object v18, v2, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v14

    add-int/lit8 v19, v18, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_c

    const/16 v18, 0x31

    :goto_6
    aput-char v18, v3, v19

    .line 273
    :cond_7
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 249
    .end local v2    # "MdlName":[Ljava/lang/String;
    .end local v13    # "i":I
    :cond_8
    const/16 v18, 0x30

    goto/16 :goto_1

    .line 256
    :cond_9
    const/16 v18, 0x30

    goto/16 :goto_2

    .line 263
    :cond_a
    const/16 v18, 0x30

    goto/16 :goto_3

    .line 270
    :cond_b
    const/16 v18, 0x30

    goto :goto_4

    .line 283
    .restart local v2    # "MdlName":[Ljava/lang/String;
    .restart local v13    # "i":I
    :cond_c
    const/16 v18, 0x30

    goto :goto_6

    .line 289
    :cond_d
    const-string v18, "MtvUtilDebug"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onLoadDebugInfo :Error in  Index"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    .line 305
    .end local v2    # "MdlName":[Ljava/lang/String;
    .end local v3    # "aFile":[C
    .end local v4    # "bReturnValue":Z
    .end local v13    # "i":I
    .end local v14    # "index":I
    :catch_0
    move-exception v7

    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 307
    .end local v9    # "fileCont":Ljava/lang/String;
    .end local v17    # "readLen":I
    .local v7, "e":Ljava/io/IOException;
    .restart local v8    # "fileCont":Ljava/lang/String;
    :goto_8
    :try_start_3
    const-string v18, "MtvUtilDebug"

    const-string v19, "IOException "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    if-eqz v10, :cond_e

    .line 315
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 322
    :cond_e
    :goto_9
    if-eqz v15, :cond_1

    .line 323
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 324
    :catch_1
    move-exception v7

    .line 326
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 294
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "fileCont":Ljava/lang/String;
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v3    # "aFile":[C
    .restart local v4    # "bReturnValue":Z
    .restart local v9    # "fileCont":Ljava/lang/String;
    .restart local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v13    # "i":I
    .restart local v14    # "index":I
    .restart local v17    # "readLen":I
    :cond_f
    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 300
    :cond_10
    new-instance v12, Ljava/io/FileWriter;

    invoke-direct {v12, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 301
    .local v12, "fstream":Ljava/io/FileWriter;
    new-instance v16, Ljava/io/BufferedWriter;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 302
    .end local v15    # "out":Ljava/io/BufferedWriter;
    .local v16, "out":Ljava/io/BufferedWriter;
    :try_start_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write([C)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 314
    if-eqz v11, :cond_11

    .line 315
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 322
    :cond_11
    :goto_a
    if-eqz v16, :cond_12

    .line 323
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_12
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/BufferedWriter;
    .restart local v15    # "out":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 327
    .end local v9    # "fileCont":Ljava/lang/String;
    .restart local v8    # "fileCont":Ljava/lang/String;
    goto/16 :goto_0

    .line 316
    .end local v8    # "fileCont":Ljava/lang/String;
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .end local v15    # "out":Ljava/io/BufferedWriter;
    .restart local v9    # "fileCont":Ljava/lang/String;
    .restart local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v16    # "out":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v7

    .line 318
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 324
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 326
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/BufferedWriter;
    .restart local v15    # "out":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    move-object v8, v9

    .line 328
    .end local v9    # "fileCont":Ljava/lang/String;
    .restart local v8    # "fileCont":Ljava/lang/String;
    goto/16 :goto_0

    .line 316
    .end local v3    # "aFile":[C
    .end local v4    # "bReturnValue":Z
    .end local v12    # "fstream":Ljava/io/FileWriter;
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v17    # "readLen":I
    :catch_4
    move-exception v7

    .line 318
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 312
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 314
    :goto_b
    if-eqz v10, :cond_13

    .line 315
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 322
    :cond_13
    :goto_c
    if-eqz v15, :cond_14

    .line 323
    :try_start_b
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 327
    :cond_14
    :goto_d
    throw v18

    .line 316
    :catch_5
    move-exception v7

    .line 318
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 324
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 326
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 312
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v11    # "fileIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_b

    .end local v8    # "fileCont":Ljava/lang/String;
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileCont":Ljava/lang/String;
    .restart local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v17    # "readLen":I
    :catchall_2
    move-exception v18

    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "fileCont":Ljava/lang/String;
    .restart local v8    # "fileCont":Ljava/lang/String;
    goto :goto_b

    .end local v8    # "fileCont":Ljava/lang/String;
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .end local v15    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "aFile":[C
    .restart local v4    # "bReturnValue":Z
    .restart local v9    # "fileCont":Ljava/lang/String;
    .restart local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v12    # "fstream":Ljava/io/FileWriter;
    .restart local v13    # "i":I
    .restart local v14    # "index":I
    .restart local v16    # "out":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v18

    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/BufferedWriter;
    .restart local v15    # "out":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "fileCont":Ljava/lang/String;
    .restart local v8    # "fileCont":Ljava/lang/String;
    goto :goto_b

    .line 305
    .end local v3    # "aFile":[C
    .end local v4    # "bReturnValue":Z
    .end local v12    # "fstream":Ljava/io/FileWriter;
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v17    # "readLen":I
    :catch_7
    move-exception v7

    goto :goto_8

    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v11    # "fileIS":Ljava/io/FileInputStream;
    :catch_8
    move-exception v7

    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v8    # "fileCont":Ljava/lang/String;
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .end local v15    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "aFile":[C
    .restart local v4    # "bReturnValue":Z
    .restart local v9    # "fileCont":Ljava/lang/String;
    .restart local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v12    # "fstream":Ljava/io/FileWriter;
    .restart local v13    # "i":I
    .restart local v14    # "index":I
    .restart local v16    # "out":Ljava/io/BufferedWriter;
    .restart local v17    # "readLen":I
    :catch_9
    move-exception v7

    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/BufferedWriter;
    .restart local v15    # "out":Ljava/io/BufferedWriter;
    move-object v10, v11

    .end local v11    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "fileCont":Ljava/lang/String;
    .restart local v8    # "fileCont":Ljava/lang/String;
    goto/16 :goto_8
.end method
