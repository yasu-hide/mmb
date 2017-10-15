.class public Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
.super Ljava/lang/Object;
.source "MtvUtilCrypto.java"


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10

.field private static final AES_CBC_PKCS5_PADDING:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final AES_KEY_LEN_128:I = 0x80

.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final MTV_CRYPTO_AES_128_CBC_IMEI:B = 0x1t

.field private static final MTV_CRYPTO_AES_128_CBC_IMEI_IMSI:B = 0x3t

.field private static final MTV_CRYPTO_AES_128_CBC_IMEI_MAC:B = 0x4t

.field private static final MTV_CRYPTO_AES_128_CBC_IMSI:B = 0x2t

.field private static final MTV_CRYPTO_AES_128_CBC_NONE:B = 0x0t

.field private static final MTV_CRYPTO_AES_CBC_128:B = 0x0t

.field private static final MTV_CRYPTO_AES_PKCS5PADDING:B = 0x1t

.field private static final MTV_CRYPTO_VERSION:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "MtvUtilCrypto"


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mCipherIV:Ljava/security/spec/AlgorithmParameterSpec;

.field private mCipherOutSize:I

.field private mEncType:B

.field private mIB:[B

.field private mIV:[B

.field private mOpMode:I

.field private mtvappKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "opMode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    .line 85
    iput-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mtvappKey:Ljavax/crypto/SecretKey;

    .line 86
    iput-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIV:[B

    .line 87
    iput-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    .line 89
    iput-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherIV:Ljava/security/spec/AlgorithmParameterSpec;

    .line 90
    iput-byte v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mEncType:B

    .line 92
    iput v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mOpMode:I

    .line 93
    iput v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherOutSize:I

    .line 107
    const-string v1, "MtvUtilCrypto"

    const-string v2, "MtvUtilCrypto: Entered"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mOpMode:I

    .line 110
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    if-nez v1, :cond_0

    .line 113
    :try_start_0
    const-string v1, "MtvUtilCrypto"

    const-string v2, "MtvUtilCrypto: getting instance of cipher"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :cond_0
    :goto_0
    iput-byte v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mEncType:B

    .line 131
    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->generateIB()V

    .line 132
    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->generateEncKey()V

    .line 133
    const-string v1, "MtvUtilCrypto"

    const-string v2, "MtvUtilCrypto: Exit"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method private extractIV(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "inData"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v3, 0x10

    .line 191
    const-string v1, "MtvUtilCrypto"

    const-string v2, "extractIV: Entered "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    new-array v0, v3, [B

    .line 194
    .local v0, "tmpIV":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 195
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherIV:Ljava/security/spec/AlgorithmParameterSpec;

    .line 196
    const-string v1, "MtvUtilCrypto"

    const-string v2, "extractIV: Exit"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private generateEncKey()V
    .locals 13

    .prologue
    .line 207
    const-string v11, "MtvUtilCrypto"

    const-string v12, "generateEncKey: Enterd"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v11, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mtvappKey:Ljavax/crypto/SecretKey;

    if-nez v11, :cond_4

    .line 211
    const/4 v11, 0x6

    new-array v5, v11, [[B

    const/4 v11, 0x0

    const/16 v12, 0x10

    new-array v12, v12, [B

    fill-array-data v12, :array_0

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const/16 v12, 0x10

    new-array v12, v12, [B

    fill-array-data v12, :array_1

    aput-object v12, v5, v11

    const/4 v11, 0x2

    const/16 v12, 0x10

    new-array v12, v12, [B

    fill-array-data v12, :array_2

    aput-object v12, v5, v11

    const/4 v11, 0x3

    const/16 v12, 0x10

    new-array v12, v12, [B

    fill-array-data v12, :array_3

    aput-object v12, v5, v11

    const/4 v11, 0x4

    const/16 v12, 0x10

    new-array v12, v12, [B

    fill-array-data v12, :array_4

    aput-object v12, v5, v11

    const/4 v11, 0x5

    const/16 v12, 0x10

    new-array v12, v12, [B

    fill-array-data v12, :array_5

    aput-object v12, v5, v11

    .line 218
    .local v5, "keySeed":[[B
    const/16 v11, 0x10

    new-array v9, v11, [B

    .line 219
    .local v9, "temp0":[B
    const/16 v11, 0x10

    new-array v10, v11, [B

    .line 220
    .local v10, "temp1":[B
    const/16 v11, 0x10

    new-array v7, v11, [B

    .line 225
    .local v7, "seed":[B
    const-string v11, "MtvUtilCrypto"

    const-string v12, "generateEncKey: generating key"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-byte v11, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mEncType:B

    packed-switch v11, :pswitch_data_0

    .line 291
    :cond_0
    :pswitch_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v11, 0x10

    if-ge v4, v11, :cond_3

    .line 293
    const/4 v11, 0x0

    aget-object v11, v5, v11

    aget-byte v11, v11, v4

    const/4 v12, 0x2

    aget-object v12, v5, v12

    aget-byte v12, v12, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    .line 294
    aget-byte v11, v9, v4

    const/4 v12, 0x4

    aget-object v12, v5, v12

    aget-byte v12, v12, v4

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v4

    .line 296
    const/4 v11, 0x1

    aget-object v11, v5, v11

    aget-byte v11, v11, v4

    const/4 v12, 0x3

    aget-object v12, v5, v12

    aget-byte v12, v12, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v4

    .line 297
    aget-byte v11, v10, v4

    const/4 v12, 0x5

    aget-object v12, v5, v12

    aget-byte v12, v12, v4

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v4

    .line 299
    aget-byte v11, v9, v4

    aget-byte v12, v10, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v7, v4

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    .end local v4    # "i":I
    :pswitch_1
    const-string v11, "ril.IMEI"

    const-string v12, "INVALID"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 235
    .local v1, "byteIMEI":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v11, v1

    if-ge v4, v11, :cond_0

    .line 236
    const/4 v11, 0x0

    aget-object v11, v5, v11

    aget-byte v12, v1, v4

    aput-byte v12, v11, v4

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    .end local v1    # "byteIMEI":[B
    .end local v4    # "i":I
    :pswitch_2
    const-string v11, "ril.IMSI"

    const-string v12, "INVALID"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 244
    .local v2, "byteIMSI":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v11, v2

    if-ge v4, v11, :cond_0

    .line 245
    const/4 v11, 0x1

    aget-object v11, v5, v11

    aget-byte v12, v2, v4

    aput-byte v12, v11, v4

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 251
    .end local v2    # "byteIMSI":[B
    .end local v4    # "i":I
    :pswitch_3
    const-string v11, "ril.IMEI"

    const-string v12, "INVALID"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 253
    .restart local v1    # "byteIMEI":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v11, v1

    if-ge v4, v11, :cond_1

    .line 254
    const/4 v11, 0x0

    aget-object v11, v5, v11

    aget-byte v12, v1, v4

    aput-byte v12, v11, v4

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 257
    :cond_1
    const-string v11, "ril.IMSI"

    const-string v12, "INVALID"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 259
    .restart local v2    # "byteIMSI":[B
    const/4 v4, 0x0

    :goto_4
    array-length v11, v2

    if-ge v4, v11, :cond_0

    .line 260
    const/4 v11, 0x1

    aget-object v11, v5, v11

    aget-byte v12, v2, v4

    aput-byte v12, v11, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 266
    .end local v1    # "byteIMEI":[B
    .end local v2    # "byteIMSI":[B
    .end local v4    # "i":I
    :pswitch_4
    const-string v11, "ril.IMEI"

    const-string v12, "INVALID"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 268
    .restart local v1    # "byteIMEI":[B
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    array-length v11, v1

    if-ge v4, v11, :cond_2

    .line 269
    const/4 v11, 0x0

    aget-object v11, v5, v11

    aget-byte v12, v1, v4

    aput-byte v12, v11, v4

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 272
    :cond_2
    const-string v11, "ril.bt_macaddr"

    const-string v12, "INVALID"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 274
    .local v0, "byteBtAddr":[B
    const/4 v4, 0x0

    :goto_6
    array-length v11, v0

    if-ge v4, v11, :cond_0

    .line 275
    const/4 v11, 0x1

    aget-object v11, v5, v11

    aget-byte v12, v0, v4

    aput-byte v12, v11, v4

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 303
    .end local v0    # "byteBtAddr":[B
    .end local v1    # "byteIMEI":[B
    :cond_3
    :try_start_0
    const-string v11, "AES"

    invoke-static {v11}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v6

    .line 304
    .local v6, "kg":Ljavax/crypto/KeyGenerator;
    const-string v11, "SHA1PRNG"

    const-string v12, "Crypto"

    invoke-static {v11, v12}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v8

    .line 305
    .local v8, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v8, v7}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 306
    const/16 v11, 0x80

    invoke-virtual {v6, v11, v8}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 307
    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mtvappKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    .end local v4    # "i":I
    .end local v5    # "keySeed":[[B
    .end local v6    # "kg":Ljavax/crypto/KeyGenerator;
    .end local v7    # "seed":[B
    .end local v8    # "sr":Ljava/security/SecureRandom;
    .end local v9    # "temp0":[B
    .end local v10    # "temp1":[B
    :cond_4
    :goto_7
    const-string v11, "MtvUtilCrypto"

    const-string v12, "generateEncKey: Exit"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void

    .line 308
    .restart local v4    # "i":I
    .restart local v5    # "keySeed":[[B
    .restart local v7    # "seed":[B
    .restart local v9    # "temp0":[B
    .restart local v10    # "temp1":[B
    :catch_0
    move-exception v3

    .line 309
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_7

    .line 310
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    .line 312
    .local v3, "e":Ljava/security/NoSuchProviderException;
    invoke-virtual {v3}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_7

    .line 211
    :array_0
    .array-data 1
        0x7at
        0x36t
        0x9t
        0x1ct
        0x79t
        0x44t
        0x61t
        0x3ct
        0x62t
        0x5et
        0x79t
        0x3ft
        0x23t
        0x57t
        0x75t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x51t
        0x4et
        0x59t
        0x28t
        0x73t
        0x12t
        0xct
        0x1bt
        0x6bt
        0x30t
        0xdt
        0x7bt
        0x6at
        0x17t
        0x4et
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x14t
        0x63t
        0x1dt
        0x3bt
        0x40t
        0x56t
        0x7et
        0x73t
        0x5et
        0x5ct
        0x33t
        0x6bt
        0x3dt
        0x5dt
        0x5at
    .end array-data

    :array_3
    .array-data 1
        0x12t
        0x58t
        0x6ft
        0x22t
        0x5ct
        0x55t
        0x20t
        0x3bt
        0x6ft
        0x21t
        0x3ft
        0x46t
        0x73t
        0x1t
        0x48t
        0x3et
    .end array-data

    :array_4
    .array-data 1
        0x1bt
        0x3dt
        0x70t
        0x34t
        0x2bt
        0x7ct
        0x51t
        0x4ft
        0x27t
        0x6dt
        0x4et
        0x5t
        0x0t
        0x6at
        0x23t
        0x7et
    .end array-data

    :array_5
    .array-data 1
        0x70t
        0x55t
        0x13t
        0x70t
        0x35t
        0x49t
        0x20t
        0x57t
        0x79t
        0x73t
        0x49t
        0x68t
        0x67t
        0x5t
        0x47t
        0x3dt
    .end array-data

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private generateIB()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 144
    const-string v0, "MtvUtilCrypto"

    const-string v1, "generateIB: Enterd"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    .line 146
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->generateRandomBytes([B)V

    .line 149
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    aput-byte v3, v0, v2

    .line 150
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    aput-byte v2, v0, v3

    .line 151
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mEncType:B

    aput-byte v2, v0, v1

    .line 152
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 153
    return-void
.end method

.method private generateIV()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "MtvUtilCrypto"

    const-string v1, "generateIV: Enterd"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIV:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherIV:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    const-string v0, "MtvUtilCrypto"

    const-string v1, "generateIV: generarting IV"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIV:[B

    .line 167
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIV:[B

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->generateRandomBytes([B)V

    .line 168
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIV:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherIV:Ljava/security/spec/AlgorithmParameterSpec;

    .line 170
    :cond_1
    return-void
.end method

.method private generateRandomBytes([B)V
    .locals 1
    .param p1, "ranBytes"    # [B

    .prologue
    .line 179
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 180
    .local v0, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 181
    return-void
.end method

.method private setMode(I)V
    .locals 4
    .param p1, "opMode"    # I

    .prologue
    .line 336
    const-string v1, "MtvUtilCrypto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode: Entered opmode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mtvappKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherIV:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, p1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    :goto_0
    const-string v1, "MtvUtilCrypto"

    const-string v2, "setMode: Exit"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public decryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "inData"    # Ljava/nio/ByteBuffer;
    .param p2, "outData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, "decDataLen":I
    if-eqz p1, :cond_0

    .line 435
    const-string v2, "MtvUtilCrypto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decryptData: Entered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v2, "MtvUtilCrypto"

    const-string v3, "decryptData: Decrypting data"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->extractIV(Ljava/nio/ByteBuffer;)V

    .line 439
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->setMode(I)V

    .line 440
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 441
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 450
    :cond_0
    :goto_0
    const-string v2, "MtvUtilCrypto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decryptData: exit with len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return v0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljavax/crypto/ShortBufferException;
    invoke-virtual {v1}, Ljavax/crypto/ShortBufferException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v1    # "e":Ljavax/crypto/ShortBufferException;
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 446
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v1

    .line 447
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public encryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "inData"    # Ljava/nio/ByteBuffer;
    .param p2, "outData"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 373
    const-string v2, "MtvUtilCrypto"

    const-string v3, "encryptData: Entered"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherOutSize:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 377
    .local v1, "encBuf":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 380
    :try_start_0
    const-string v2, "MtvUtilCrypto"

    const-string v3, "encryptData: encrypting"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->generateIV()V

    .line 382
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->setMode(I)V

    .line 383
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, v1}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 397
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIB:[B

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 398
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mIV:[B

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 399
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 401
    const-string v2, "MtvUtilCrypto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptData: Exit with len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    return v2

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    invoke-virtual {v0}, Ljavax/crypto/ShortBufferException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v0    # "e":Ljavax/crypto/ShortBufferException;
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 389
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getOutputSize(II)I
    .locals 4
    .param p1, "opMode"    # I
    .param p2, "inputLen"    # I

    .prologue
    .line 468
    const-string v1, "MtvUtilCrypto"

    const-string v2, "getOutputSize: Entered"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->generateIV()V

    .line 472
    :try_start_0
    const-string v1, "MtvUtilCrypto"

    const-string v2, "getOutputSize: Entered"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mtvappKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherIV:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, p1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 480
    :goto_0
    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mOpMode:I

    if-ne v1, v2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherOutSize:I

    .line 483
    iget v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherOutSize:I

    add-int/lit8 v1, v1, 0x20

    .line 488
    :goto_1
    return v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 476
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 477
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 487
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipher:Ljavax/crypto/Cipher;

    add-int/lit8 v2, p2, -0x20

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherOutSize:I

    .line 488
    iget v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->mCipherOutSize:I

    goto :goto_1
.end method
