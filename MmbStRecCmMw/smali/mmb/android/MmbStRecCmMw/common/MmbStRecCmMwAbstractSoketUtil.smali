.class public abstract Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;
.super Ljava/lang/Object;
.source "MmbStRecCmMwAbstractSoketUtil.java"


# static fields
.field protected static final LENGTH_CRID:I = 0x84

.field protected static final LENGTH_GENRE:I = 0x84

.field protected static final LENGTH_INT:I = 0x8

.field protected static final LENGTH_KEYWORD:I = 0x7c

.field protected static final LENGTH_LONG:I = 0x10

.field protected static final LENGTH_PARENTAL:I = 0x84

.field protected static final LENGTH_PROGRAM_SUMMARY:I = 0x4cc

.field protected static final LENGTH_SERVICE_LOGO:I = 0x84

.field protected static final LENGTH_SERVICE_NAME:I = 0x5e

.field protected static final LENGTH_STRING:I = 0x10

.field protected static final LENGTH_SUB_TITLE:I = 0x130

.field protected static final LENGTH_TITLE:I = 0x130

.field protected static final MEDIA_TITLE_IMAGE:I = 0x84

.field protected static final TAG:Ljava/lang/String; = "STRecCmClient"


# instance fields
.field protected log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    invoke-direct {v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    return-void
.end method


# virtual methods
.method protected readBytes(Ljava/io/InputStream;I)[B
    .locals 9
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aByteSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, "tmp":[B
    const/4 v2, 0x0

    .line 177
    .local v2, "read_total_size":I
    const/4 v1, 0x0

    .line 179
    .local v1, "read_size":I
    if-nez p1, :cond_0

    .line 180
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "InputStream -> null"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "InputStream -> null"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 183
    :cond_0
    if-gez p2, :cond_1

    .line 184
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aByteSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aByteSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 188
    :cond_1
    :try_start_0
    new-array v3, p2, [B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    if-ge v2, p2, :cond_2

    .line 195
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 196
    add-int/2addr v2, v1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by indexerror"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "false by index error"

    invoke-direct {v4, v5, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 199
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    return-object v3
.end method

.method protected abstract readFile(Ljava/io/FileInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation
.end method

.method protected readInt(Ljava/io/InputStream;)I
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "InputStream -> null"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "InputStream -> null"

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 122
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "result":Ljava/lang/String;
    const/4 v2, -0x1

    .line 125
    .local v2, "ret":I
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v2, v4

    .line 131
    const/4 v1, 0x0

    .line 133
    return v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "false by read no int data"

    invoke-virtual {v3, v4, v5, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readLong(Ljava/io/InputStream;)J
    .locals 7
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "InputStream -> null"

    invoke-virtual {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v4, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v5, "InputStream -> null"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 148
    :cond_0
    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "result":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 151
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

    .line 161
    const/4 v1, 0x0

    .line 163
    return-wide v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by result is null"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    new-instance v4, Ljava/io/IOException;

    const-string v5, "result null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v5, "STRecCmClient"

    const-string v6, "false by number format error"

    invoke-virtual {v4, v5, v6, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 5
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aByteSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "ret":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 98
    iget-object v2, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v3, "STRecCmClient"

    const-string v4, "InputStream -> null"

    invoke-virtual {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v3, "InputStream -> null"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 102
    .local v1, "tmp":[B
    if-eqz v1, :cond_1

    .line 103
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_1
    const/4 v1, 0x0

    .line 107
    return-object v0
.end method

.method protected sendFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "aFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method protected writeBytes(Ljava/io/OutputStream;[B)V
    .locals 3
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 294
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v1, "STRecCmClient"

    const-string v2, "aOutput, aBytes -> null"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v1, "aOutput, aBytes -> null"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 298
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 300
    return-void
.end method

.method protected abstract writeFile(Ljava/io/FileOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation
.end method

.method protected writeInt(Ljava/io/OutputStream;I)V
    .locals 5
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v1, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v2, "STRecCmClient"

    const-string v3, "aOutput"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v2, "aOutput-> null"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 250
    :cond_0
    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "result":Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method protected writeLong(Ljava/io/OutputStream;J)V
    .locals 10
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aLong"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    .line 263
    if-nez p1, :cond_0

    .line 264
    iget-object v6, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v7, "STRecCmClient"

    const-string v8, "aOutput -> null"

    invoke-virtual {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v6, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v7, "aOutput -> null"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 267
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "result":Ljava/lang/String;
    const-string v5, "0"

    .line 269
    .local v5, "zero":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 270
    .local v2, "length":I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 272
    .local v4, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 273
    rsub-int/lit8 v6, v2, 0x10

    if-ge v1, v6, :cond_1

    .line 274
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, v4, v1

    .line 272
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    rsub-int/lit8 v7, v2, 0x10

    sub-int v7, v1, v7

    aget-byte v6, v6, v7

    aput-byte v6, v4, v1

    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 282
    const/4 v0, 0x0

    .line 284
    return-void
.end method

.method protected writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 8
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aByteSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 219
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 220
    :cond_0
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    const-string v5, "aOutput, aStr -> null"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    const-string v4, "aOutput, aStr -> null"

    invoke-direct {v3, v4, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 223
    :cond_1
    if-gez p3, :cond_2

    .line 224
    iget-object v3, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->log:Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;

    const-string v4, "STRecCmClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ByteSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v3, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ByteSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 227
    :cond_2
    move-object v1, p2

    .line 229
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 230
    .local v2, "tmp":[B
    new-array v0, p3, [B

    .line 231
    .local v0, "ret":[B
    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 233
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwAbstractSoketUtil;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 234
    const/4 v0, 0x0

    .line 235
    const/4 v2, 0x0

    .line 237
    return-void
.end method
