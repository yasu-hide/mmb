.class public abstract Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwAbstractSocketUtil.java"


# static fields
.field protected static final LENGTH_CHANGED_PATH:I = 0x200

.field protected static final LENGTH_CREDITITEM:I = 0x130

.field protected static final LENGTH_CREDITITEM_TYPE:I = 0x8

.field protected static final LENGTH_CREDITROLE:I = 0x80

.field protected static final LENGTH_CRID:I = 0x100

.field protected static final LENGTH_GENRE_TYPE:I = 0xc

.field protected static final LENGTH_HREF:I = 0x84

.field protected static final LENGTH_INT:I = 0x8

.field protected static final LENGTH_IPADDRESS:I = 0x30

.field protected static final LENGTH_KEYWORD:I = 0x7c

.field protected static final LENGTH_KEYWORD_TYPE:I = 0xc

.field protected static final LENGTH_LANGUAGE:I = 0x4

.field protected static final LENGTH_LONG:I = 0x10

.field protected static final LENGTH_MESSAGE:I = 0x40

.field protected static final LENGTH_NAMETAG:I = 0x184

.field protected static final LENGTH_PATH:I = 0x100

.field protected static final LENGTH_PERIOD_TYPE:I = 0x10

.field protected static final LENGTH_PROMOTIONAL:I = 0x25c

.field protected static final LENGTH_PURCHASE_CURRENCY:I = 0x4

.field protected static final LENGTH_PURCHASE_ID:I = 0x1c

.field protected static final LENGTH_PURCHASE_NAME:I = 0xc4

.field protected static final LENGTH_SDP:I = 0x1004

.field protected static final LENGTH_SOCKET:I = 0x80

.field protected static final LENGTH_SYNOPSIS:I = 0x4cc

.field protected static final LENGTH_SYNOPSIS_TYPE:I = 0x8

.field protected static final LENGTH_TITLE:I = 0x184

.field protected static final LENGTH_TITLE_TYPE:I = 0x10

.field protected static final LENGTH_URI:I = 0x100


# instance fields
.field private clientId:I

.field protected log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->clientId:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->message:Ljava/lang/String;

    .line 122
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil$1;-><init>(Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;)V

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    return-void
.end method

.method private readBytes(Ljava/io/InputStream;[B)I
    .locals 3
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    if-nez p2, :cond_0

    .line 310
    const/4 v0, -0x2

    .line 313
    :goto_0
    return v0

    .line 312
    :cond_0
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {p1, p2, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 313
    .local v0, "ret":I
    goto :goto_0
.end method


# virtual methods
.method protected deleteFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "aFileName"    # Ljava/lang/String;

    .prologue
    .line 494
    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "delete file[%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getClientId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->clientId:I

    return v0
.end method

.method protected getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->message:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method protected readBoolean(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 209
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    .line 212
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aByteSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-array v0, p2, [B

    .line 294
    .local v0, "tmp":[B
    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readBytes(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 295
    iget-object v1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v2, "readBytes error [null]"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    const/4 v0, 0x0

    .line 298
    .end local v0    # "tmp":[B
    :cond_0
    return-object v0
.end method

.method protected readFile(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    return-void
.end method

.method protected readInt(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readInt(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method protected readInt(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aDefault"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    move v2, p2

    .line 234
    .local v2, "ret":I
    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "result":Ljava/lang/String;
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v2, v4

    .line 243
    const/4 v1, 0x0

    .line 244
    return v2

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v4, "readInt exception [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readLong(Ljava/io/InputStream;)J
    .locals 2
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readLong(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readLong(Ljava/io/InputStream;J)J
    .locals 8
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aDefault"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v7, 0x0

    .line 266
    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "result":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 269
    .local v2, "ret":J
    :try_start_0
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 279
    const/4 v1, 0x0

    .line 281
    return-wide v2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "readLong exception null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    new-instance v4, Ljava/io/IOException;

    const-string v5, "result null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "readInt exception [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aByteSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aByteSize"    # I
    .param p3, "aDefault"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p3

    .line 192
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 193
    .local v1, "tmp":[B
    if-eqz v1, :cond_0

    .line 194
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 198
    return-object v0
.end method

.method protected sendFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "aFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 446
    const/4 v3, 0x0

    .line 448
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 450
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 453
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 454
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 456
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 457
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 458
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .local v4, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->writeFile(Ljava/io/FileOutputStream;)V

    .line 460
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 469
    if-eqz v4, :cond_4

    .line 471
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 478
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    return-void

    .line 473
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "failed to close. file[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-virtual {v5, v6, v1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v3, v4

    .line 475
    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 462
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 463
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "not found exception. msg[%s], file[%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    if-eqz v3, :cond_2

    .line 471
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 473
    :catch_2
    move-exception v1

    .line 474
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "failed to close. file[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-virtual {v5, v6, v1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_2
    :try_start_5
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "security exception. msg[%s], file[%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 469
    if-eqz v3, :cond_2

    .line 471
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 473
    :catch_4
    move-exception v1

    .line 474
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v6, "failed to close. file[%s]"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-virtual {v5, v6, v1, v7}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_3

    .line 471
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 475
    :cond_3
    :goto_4
    throw v5

    .line 473
    :catch_5
    move-exception v1

    .line 474
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v7, "failed to close. file[%s]"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-virtual {v6, v7, v1, v8}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4

    .line 469
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 465
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 462
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "output":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method protected setClientId(I)V
    .locals 5
    .param p1, "aClientId"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v1, "setClientId[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iput p1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->clientId:I

    .line 150
    return-void
.end method

.method protected setMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v1, "setMessage[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iput-object p1, p0, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->message:Ljava/lang/String;

    .line 167
    return-void
.end method

.method protected writeBoolean(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aBool"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 389
    :cond_0
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->writeInt(Ljava/io/OutputStream;I)V

    .line 390
    return-void
.end method

.method protected writeBytes(Ljava/io/OutputStream;[B)V
    .locals 0
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 438
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 0
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    return-void
.end method

.method protected writeInt(Ljava/io/OutputStream;I)V
    .locals 5
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 401
    return-void
.end method

.method protected writeLong(Ljava/io/OutputStream;J)V
    .locals 10
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aLong"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    .line 411
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "result":Ljava/lang/String;
    const-string v5, "0"

    .line 413
    .local v5, "zero":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 414
    .local v2, "length":I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 415
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 416
    .local v4, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 417
    rsub-int/lit8 v6, v2, 0x10

    if-ge v1, v6, :cond_0

    .line 418
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, v4, v1

    .line 416
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    rsub-int/lit8 v7, v2, 0x10

    sub-int v7, v1, v7

    aget-byte v6, v6, v7

    aput-byte v6, v4, v1

    goto :goto_1

    .line 425
    :cond_1
    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 426
    const/4 v0, 0x0

    .line 427
    return-void
.end method

.method protected writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 5
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aByteSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 363
    move-object v1, p2

    .line 364
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 365
    const-string v1, ""

    .line 368
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 369
    .local v2, "tmp":[B
    new-array v0, p3, [B

    .line 370
    .local v0, "ret":[B
    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 372
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwAbstractSocketUtil;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 373
    const/4 v0, 0x0

    .line 374
    const/4 v2, 0x0

    .line 375
    return-void
.end method
