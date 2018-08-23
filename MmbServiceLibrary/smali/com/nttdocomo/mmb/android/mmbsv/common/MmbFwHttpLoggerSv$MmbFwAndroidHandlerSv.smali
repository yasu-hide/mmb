.class Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;
.super Ljava/util/logging/Handler;
.source "MmbFwHttpLoggerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmbFwAndroidHandlerSv"
.end annotation


# static fields
.field private static final DIGITS:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final ENCODED_CR:Ljava/lang/String; = "[\\r]"

.field private static final ENCODED_EOL:Ljava/lang/String; = "[EOL]"

.field private static final ENCODED_HEX:Ljava/lang/String; = "[0x"

.field private static final ENCODED_LF:Ljava/lang/String; = "[\\n]"

.field private static final PREFIX_LENGTH:I = 0x4

.field private static final PREFIX_SPACE:Ljava/lang/String;

.field private static final SPACES:Ljava/lang/String; = "          "

.field private static final SUFFIX_LENGTH:I = 0x1

.field private static final SUFFIX_SPACE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v0, "          "

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->PREFIX_SPACE:Ljava/lang/String;

    .line 145
    const-string v0, "          "

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->SUFFIX_SPACE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$1;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;-><init>()V

    return-void
.end method

.method private varargs isCalledFrom([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aNames"    # [Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 296
    .local v2, "array":[Ljava/lang/StackTraceElement;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    .line 297
    .local v3, "element":Ljava/lang/StackTraceElement;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v1, v4

    .line 298
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 299
    const/4 v9, 0x1

    .line 303
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "name":Ljava/lang/String;
    :goto_2
    return v9

    .line 297
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "element":Ljava/lang/StackTraceElement;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 296
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 303
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "len$":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private publishWithHex(Ljava/lang/String;)V
    .locals 7
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    .line 163
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "suffix":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->revertWire(Ljava/lang/String;)[B

    move-result-object v1

    .line 167
    .local v1, "bytes":[B
    const-string v4, "MMB_HTTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->toSymbols([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v4, "MMB_HTTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->PREFIX_SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->toHiBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->SUFFIX_SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v4, "MMB_HTTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->PREFIX_SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->toLoBytes([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->SUFFIX_SPACE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method private revertWire(Ljava/lang/String;)[B
    .locals 14
    .param p1, "aWire"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xd

    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 185
    .local v5, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 186
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 187
    .local v1, "ch":C
    const/16 v9, 0x5b

    if-ne v1, v9, :cond_5

    .line 188
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "cont":Ljava/lang/String;
    const-string v9, "[\\n]"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 190
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 191
    const-string v9, "[\\n]"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_0

    .line 192
    :cond_0
    const-string v9, "[\\r]"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    const-string v9, "[\\r]"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_0

    .line 195
    :cond_1
    const-string v9, "[EOL]"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 196
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 198
    const-string v9, "[EOL]"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_0

    .line 199
    :cond_2
    const-string v9, "[0x"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 200
    const-string v9, "[0x"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    .line 201
    move v8, v5

    .line 202
    .local v8, "start":I
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5d

    if-eq v9, v10, :cond_3

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 205
    :cond_3
    const/4 v4, 0x0

    .line 207
    .local v4, "hex":I
    :try_start_0
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 211
    :goto_2
    int-to-byte v9, v4

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 212
    add-int/lit8 v5, v5, 0x1

    .line 213
    goto :goto_0

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "err":Ljava/lang/NumberFormatException;
    const-string v9, "source log has broken"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 214
    .end local v3    # "err":Ljava/lang/NumberFormatException;
    .end local v4    # "hex":I
    .end local v8    # "start":I
    :cond_4
    int-to-byte v9, v1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 218
    .end local v2    # "cont":Ljava/lang/String;
    :cond_5
    int-to-byte v9, v1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 222
    .end local v1    # "ch":C
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 223
    .local v7, "size":I
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 224
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    new-array v6, v7, [B

    .line 226
    .local v6, "result":[B
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 227
    return-object v6
.end method

.method private toHiBytes([B)Ljava/lang/String;
    .locals 7
    .param p1, "aBytes"    # [B

    .prologue
    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 265
    .local v1, "data":B
    const-string v5, "0123456789ABCDEF"

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "data":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private toLoBytes([B)Ljava/lang/String;
    .locals 7
    .param p1, "aBytes"    # [B

    .prologue
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 283
    .local v1, "data":B
    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v1, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v1    # "data":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private toSymbols([B)Ljava/lang/String;
    .locals 6
    .param p1, "aBytes"    # [B

    .prologue
    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 243
    .local v1, "data":B
    const/16 v5, 0x20

    if-gt v5, v1, :cond_0

    const/16 v5, 0x7e

    if-gt v1, v5, :cond_0

    .line 244
    int-to-char v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_0
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    .end local v1    # "data":B
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 4
    .param p1, "aRecord"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.nttdocomo.mmb.android.mmbsv."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "jp.co.mmbi.app."

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->isCalledFrom([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwHttpLoggerSv$MmbFwAndroidHandlerSv;->publishWithHex(Ljava/lang/String;)V

    .line 100
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method
