.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;
.super Ljava/lang/Object;
.source "MmbStBmlPictureSaveSv.java"


# static fields
.field public static final MMB_PICTURE_DIR:Ljava/lang/String; = "/media/image"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public checkSdCardStatus()Z
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "tmp":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAbsoluteFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "aMmbFileName"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 265
    .local v2, "sddir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "savefile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "tmp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/media/image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    new-instance v0, Ljava/io/File;

    .end local v0    # "savefile":Ljava/io/File;
    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "savefile":Ljava/io/File;
    move-object v1, v0

    .line 285
    .end local v0    # "savefile":Ljava/io/File;
    .local v1, "savefile":Ljava/lang/Object;
    :goto_0
    return-object v1

    .end local v1    # "savefile":Ljava/lang/Object;
    .restart local v0    # "savefile":Ljava/io/File;
    :cond_0
    move-object v1, v0

    .restart local v1    # "savefile":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected getSafetyFile(Ljava/io/File;)Ljava/io/File;
    .locals 18
    .param p1, "aFile"    # Ljava/io/File;

    .prologue
    .line 176
    const/4 v11, 0x0

    .line 179
    .local v11, "retfile":Ljava/io/File;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 180
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyyMMddHHmmss"

    invoke-direct {v3, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, "dfmt":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;->preCheckFileExist(Ljava/io/File;)V

    .line 186
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 187
    const/4 v14, 0x0

    .line 235
    :goto_0
    return-object v14

    .line 189
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 190
    .local v4, "dirfile":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v10, "namefile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "fname":Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v7, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 197
    .local v9, "index":I
    if-lez v9, :cond_1

    .line 198
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "body":Ljava/lang/String;
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 206
    .local v6, "ext":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    move-object v12, v11

    .end local v11    # "retfile":Ljava/io/File;
    .local v12, "retfile":Ljava/io/File;
    :goto_2
    const/16 v14, 0x3e8

    if-ge v8, v14, :cond_5

    .line 207
    :try_start_1
    const-string v14, "%03d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 211
    .local v13, "tmp":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 212
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    :goto_3
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 219
    .end local v12    # "retfile":Ljava/io/File;
    .restart local v11    # "retfile":Ljava/io/File;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;->preCheckFileExist(Ljava/io/File;)V

    .line 220
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 226
    .end local v13    # "tmp":Ljava/lang/String;
    :goto_4
    const/16 v14, 0x3e8

    if-lt v8, v14, :cond_4

    .line 227
    const-string v14, "MmbStBmlPictureSaveSv#getSafetyFileName Can\'t make safety file name."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v14
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 239
    .end local v1    # "body":Ljava/lang/String;
    .end local v4    # "dirfile":Ljava/io/File;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v10    # "namefile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 240
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :goto_5
    throw v5

    .line 202
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v4    # "dirfile":Ljava/io/File;
    .restart local v7    # "fname":Ljava/lang/String;
    .restart local v9    # "index":I
    .restart local v10    # "namefile":Ljava/io/File;
    :cond_1
    move-object v1, v7

    .line 203
    .restart local v1    # "body":Ljava/lang/String;
    :try_start_3
    const-string v6, ""
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v6    # "ext":Ljava/lang/String;
    goto :goto_1

    .line 215
    .end local v11    # "retfile":Ljava/io/File;
    .restart local v8    # "i":I
    .restart local v12    # "retfile":Ljava/io/File;
    .restart local v13    # "tmp":Ljava/lang/String;
    :cond_2
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v7

    goto :goto_3

    .line 206
    .end local v12    # "retfile":Ljava/io/File;
    .restart local v11    # "retfile":Ljava/io/File;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-object v12, v11

    .end local v11    # "retfile":Ljava/io/File;
    .restart local v12    # "retfile":Ljava/io/File;
    goto/16 :goto_2

    .end local v12    # "retfile":Ljava/io/File;
    .end local v13    # "tmp":Ljava/lang/String;
    .restart local v11    # "retfile":Ljava/io/File;
    :cond_4
    move-object v14, v11

    .line 235
    goto/16 :goto_0

    .line 243
    .end local v1    # "body":Ljava/lang/String;
    .end local v4    # "dirfile":Ljava/io/File;
    .end local v6    # "ext":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v10    # "namefile":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 244
    .local v5, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v15, "Unkonwn exception occurred."

    invoke-direct {v14, v15, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 243
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "retfile":Ljava/io/File;
    .restart local v1    # "body":Ljava/lang/String;
    .restart local v4    # "dirfile":Ljava/io/File;
    .restart local v6    # "ext":Ljava/lang/String;
    .restart local v7    # "fname":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v10    # "namefile":Ljava/io/File;
    .restart local v12    # "retfile":Ljava/io/File;
    :catch_2
    move-exception v5

    move-object v11, v12

    .end local v12    # "retfile":Ljava/io/File;
    .restart local v11    # "retfile":Ljava/io/File;
    goto :goto_6

    .line 239
    .end local v11    # "retfile":Ljava/io/File;
    .restart local v12    # "retfile":Ljava/io/File;
    :catch_3
    move-exception v5

    move-object v11, v12

    .end local v12    # "retfile":Ljava/io/File;
    .restart local v11    # "retfile":Ljava/io/File;
    goto :goto_5

    .end local v11    # "retfile":Ljava/io/File;
    .restart local v12    # "retfile":Ljava/io/File;
    :cond_5
    move-object v11, v12

    .end local v12    # "retfile":Ljava/io/File;
    .restart local v11    # "retfile":Ljava/io/File;
    goto :goto_4
.end method

.method public getSafetyFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "aMmbFileName"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "removepath":Z
    const/4 v3, 0x0

    .line 126
    .local v3, "ret":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "orgfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "tmp":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/media/image"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "sddir":Ljava/lang/String;
    const/4 v2, 0x1

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v5    # "sddir":Ljava/lang/String;
    .local v0, "argfile":Ljava/io/File;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlPictureSaveSv;->getSafetyFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 144
    .local v4, "retfile":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 145
    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    :goto_1
    return-object v3

    .line 137
    .end local v0    # "argfile":Ljava/io/File;
    .end local v4    # "retfile":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "argfile":Ljava/io/File;
    goto :goto_0

    .line 148
    .restart local v4    # "retfile":Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 151
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSdCardFreeSpace()J
    .locals 4

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "filesd":Ljava/io/File;
    const-wide/16 v2, -0x1

    .line 80
    .local v2, "ret":J
    :try_start_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 88
    :cond_0
    :goto_0
    return-wide v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected preCheckFileExist(Ljava/io/File;)V
    .locals 0
    .param p1, "aSavefile"    # Ljava/io/File;

    .prologue
    .line 102
    return-void
.end method
