.class public Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;
.super Ljava/lang/Object;
.source "MtvUtilConfigSettingControl.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "OneSeg_Config.cfg"

.field private static final ROOT_DIR:Ljava/lang/String; = "/data/one-seg/"

.field private static final TAG:Ljava/lang/String; = "MtvUtilConfigSettingControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private changeBooleanToInt(Z)I
    .locals 1
    .param p1, "aBool"    # Z

    .prologue
    const/4 v0, 0x1

    .line 198
    if-ne p1, v0, :cond_0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSettingValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "aFileContent"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v1, -0x1

    .line 150
    .local v1, "returnValue":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 154
    .local v2, "value":C
    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 158
    :goto_0
    const-string v3, "MtvUtilConfigSettingControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v2    # "value":C
    :goto_1
    return v1

    .line 155
    .restart local v2    # "value":C
    :cond_0
    const/16 v3, 0x32

    if-ne v2, v3, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 156
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    .end local v2    # "value":C
    :cond_2
    const-string v3, "MtvUtilConfigSettingControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## Not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getConfigFromFile()Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 39
    new-instance v7, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    invoke-direct {v7}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;-><init>()V

    .line 43
    .local v7, "setting":Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/one-seg/"

    const-string v10, "OneSeg_Config.cfg"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_2

    .line 46
    :cond_0
    const-string v9, "MtvUtilConfigSettingControl"

    const-string v10, "Not found config file! [/data/one-seg/OneSeg_Config.cfg]"

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_0
    return-object v7

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    add-int/lit8 v9, v9, 0xa

    new-array v1, v9, [B

    .line 51
    .local v1, "content":[B
    const/4 v4, 0x0

    .line 54
    .local v4, "fileIS":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v4    # "fileIS":Ljava/io/FileInputStream;
    .local v5, "fileIS":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 56
    .local v6, "readLen":I
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v1, v9, v6}, Ljava/lang/String;-><init>([BII)V

    .line 58
    .local v3, "fileCont":Ljava/lang/String;
    const-string v9, "CONFIG_TSFILESIMUL"

    invoke-direct {p0, v3, v9}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->getSettingValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 59
    .local v8, "settingValue":I
    if-ne v8, v14, :cond_4

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    .line 62
    :goto_1
    const-string v9, "CONFIG_TSCAPTURE"

    invoke-direct {p0, v3, v9}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->getSettingValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 63
    if-ne v8, v14, :cond_5

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsCapture:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :goto_2
    if-eqz v5, :cond_3

    .line 78
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    move-object v4, v5

    .line 82
    .end local v5    # "fileIS":Ljava/io/FileInputStream;
    .restart local v4    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_0

    .line 60
    .end local v4    # "fileIS":Ljava/io/FileInputStream;
    .restart local v5    # "fileIS":Ljava/io/FileInputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, v7, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 66
    .end local v3    # "fileCont":Ljava/lang/String;
    .end local v6    # "readLen":I
    .end local v8    # "settingValue":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 68
    .end local v5    # "fileIS":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "fileIS":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 70
    const-string v9, "MtvUtilConfigSettingControl"

    const-string v10, "Not found config file! [/data/one-seg/OneSeg_Config.cfg]"

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    if-eqz v4, :cond_1

    .line 78
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileIS":Ljava/io/FileInputStream;
    .restart local v3    # "fileCont":Ljava/lang/String;
    .restart local v5    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "readLen":I
    .restart local v8    # "settingValue":I
    :cond_5
    const/4 v9, 0x0

    :try_start_6
    iput-boolean v9, v7, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsCapture:Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 71
    .end local v3    # "fileCont":Ljava/lang/String;
    .end local v6    # "readLen":I
    .end local v8    # "settingValue":I
    :catch_2
    move-exception v2

    move-object v4, v5

    .line 72
    .end local v5    # "fileIS":Ljava/io/FileInputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "fileIS":Ljava/io/FileInputStream;
    :goto_4
    :try_start_7
    const-string v9, "MtvUtilConfigSettingControl"

    const-string v10, "IO Exceiption Error! [/data/one-seg/OneSeg_Config.cfg]"

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    if-eqz v4, :cond_1

    .line 78
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 79
    :catch_3
    move-exception v2

    .line 81
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileIS":Ljava/io/FileInputStream;
    .restart local v3    # "fileCont":Ljava/lang/String;
    .restart local v5    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "readLen":I
    .restart local v8    # "settingValue":I
    :catch_4
    move-exception v2

    .line 81
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 83
    .end local v5    # "fileIS":Ljava/io/FileInputStream;
    .restart local v4    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_0

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileCont":Ljava/lang/String;
    .end local v6    # "readLen":I
    .end local v8    # "settingValue":I
    :catchall_0
    move-exception v9

    .line 77
    :goto_5
    if-eqz v4, :cond_6

    .line 78
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 82
    :cond_6
    :goto_6
    throw v9

    .line 79
    :catch_5
    move-exception v2

    .line 81
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileIS":Ljava/io/FileInputStream;
    .restart local v5    # "fileIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileIS":Ljava/io/FileInputStream;
    .restart local v4    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_5

    .line 71
    :catch_6
    move-exception v2

    goto :goto_4

    .line 66
    :catch_7
    move-exception v2

    goto :goto_3
.end method

.method public setConfigToFile(Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;)Z
    .locals 9
    .param p1, "aSetting"    # Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    .prologue
    .line 93
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x190

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    .local v5, "strBuf":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONFIG_TSFILESIMUL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->changeBooleanToInt(Z)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONFIG_TSCAPTURE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsCapture:Z

    invoke-direct {p0, v7}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->changeBooleanToInt(Z)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "saveContent":Ljava/lang/String;
    const-string v6, "MtvUtilConfigSettingControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Save Content\n["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/one-seg/"

    const-string v7, "OneSeg_Config.cfg"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "debugFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 107
    .local v2, "fileOS":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    .local v3, "fileOS":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v3, :cond_0

    .line 129
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 137
    .end local v3    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 131
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOS":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 135
    .end local v3    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 118
    const-string v6, "MtvUtilConfigSettingControl"

    const-string v7, "File Not Found=[/data/one-seg/OneSeg_Config.cfg]"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    if-eqz v2, :cond_1

    .line 129
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 131
    :catch_2
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    const-string v6, "MtvUtilConfigSettingControl"

    const-string v7, "File Writng Fail!=[/data/one-seg/OneSeg_Config.cfg]"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    if-eqz v2, :cond_1

    .line 129
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 131
    :catch_4
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 127
    :goto_3
    if-eqz v2, :cond_2

    .line 129
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 134
    :cond_2
    :goto_4
    throw v6

    .line 131
    :catch_5
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOS":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 119
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOS":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 114
    .end local v2    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOS":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOS":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOS":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
