.class public Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceFileUtilitySv;
.super Ljava/lang/Object;
.source "MmbPrPreferenceFileUtilitySv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "aFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 47
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 55
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5    # "output":Ljava/io/OutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".bak"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    .restart local v5    # "output":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 67
    .local v4, "n":I
    :goto_0
    const/4 v6, -0x1

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 68
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 73
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v6

    .line 58
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "n":I
    .restart local v2    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 59
    .end local v5    # "output":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 60
    throw v1

    .line 76
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "n":I
    .restart local v5    # "output":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 77
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 82
    return-void

    .line 58
    .end local v4    # "n":I
    .end local v5    # "output":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public restoreFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "aFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 101
    .local v5, "output":Ljava/io/OutputStream;
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 107
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    .line 113
    .local v6, "ret":Z
    if-nez v6, :cond_0

    .line 114
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 119
    .end local v6    # "ret":Z
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "input":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bak"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .restart local v3    # "input":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5    # "output":Ljava/io/OutputStream;
    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v5    # "output":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 131
    .local v4, "n":I
    :goto_0
    const/4 v7, -0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v7, v4, :cond_1

    .line 132
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 137
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 141
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v7

    .line 121
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "n":I
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 123
    throw v1

    .line 140
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "n":I
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 141
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "MmbPrPreferenceFileUtilitySv []"

    return-object v0
.end method
