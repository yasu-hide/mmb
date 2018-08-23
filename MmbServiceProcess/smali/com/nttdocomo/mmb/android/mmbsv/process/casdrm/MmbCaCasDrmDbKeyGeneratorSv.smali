.class final Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmDbKeyGeneratorSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;
    }
.end annotation


# direct methods
.method public static checkMessageId([B)Z
    .locals 5
    .param p0, "aValue"    # [B

    .prologue
    const/4 v3, 0x0

    .line 129
    array-length v4, p0

    new-array v1, v4, [B

    .line 130
    .local v1, "allzero":[B
    array-length v4, p0

    new-array v0, v4, [B

    .line 131
    .local v0, "allfull":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 132
    aput-byte v3, v1, v2

    .line 133
    const/4 v4, -0x1

    aput-byte v4, v0, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    :cond_1
    :goto_1
    return v3

    .line 141
    :cond_2
    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static createMessageId()[B
    .locals 2

    .prologue
    .line 101
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v0

    .line 105
    .local v0, "result":[B
    return-object v0
.end method

.method public static decode(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;)[B
    .locals 10
    .param p0, "aCrid"    # Ljava/lang/String;
    .param p1, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageIdHash:[B

    array-length v9, v9

    new-array v7, v9, [B

    .line 245
    .local v7, "seed":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageIdHash:[B

    array-length v9, v9

    if-ge v0, v9, :cond_0

    .line 246
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageIdHash:[B

    aget-byte v9, v9, v0

    xor-int/lit8 v9, v9, -0x1

    int-to-byte v9, v9

    aput-byte v9, v7, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageId:[B

    array-length v9, v9

    new-array v8, v9, [B

    .line 249
    .local v8, "text":[B
    const/4 v0, 0x0

    :goto_1
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageId:[B

    array-length v9, v9

    if-ge v0, v9, :cond_1

    .line 250
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageId:[B

    aget-byte v9, v9, v0

    xor-int/lit8 v9, v9, -0x1

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_1
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v9, 0x800

    invoke-direct {v5, v7, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 253
    .local v5, "pbeParameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-direct {v4, v9}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 254
    .local v4, "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string v9, "PBEWithMD5AndDES"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 255
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 256
    .local v3, "pbeKey":Ljavax/crypto/SecretKey;
    const-string v9, "PBEWithMD5AndDES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 257
    .local v2, "pbeCipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v2, v9, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 258
    invoke-virtual {v2, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 262
    .local v6, "result":[B
    return-object v6
.end method

.method public static encode(Ljava/lang/String;[B)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;
    .locals 11
    .param p0, "aCrid"    # Ljava/lang/String;
    .param p1, "aValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 185
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v7

    .line 186
    .local v7, "seed":[B
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    const/16 v9, 0x800

    invoke-direct {v5, v7, v9}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 187
    .local v5, "pbeParameterSpec":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-direct {v4, v9}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 188
    .local v4, "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string v9, "PBEWithMD5AndDES"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 189
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 190
    .local v3, "pbeKey":Ljavax/crypto/SecretKey;
    const-string v9, "PBEWithMD5AndDES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 191
    .local v2, "pbeCipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v2, v9, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 192
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 193
    .local v8, "text":[B
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;-><init>()V

    .line 194
    .local v6, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;
    array-length v9, v8

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageId:[B

    .line 195
    array-length v9, v7

    new-array v9, v9, [B

    iput-object v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageIdHash:[B

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v9, v8

    if-ge v0, v9, :cond_0

    .line 197
    iget-object v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageId:[B

    aget-byte v10, v8, v0

    xor-int/lit8 v10, v10, -0x1

    int-to-byte v10, v10

    aput-byte v10, v9, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v9, v7

    if-ge v0, v9, :cond_1

    .line 200
    iget-object v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbKeyGeneratorSv$MmbCaCasDrmDbKeyGeneratorDataSv;->mmbMessageIdHash:[B

    aget-byte v10, v7, v0

    xor-int/lit8 v10, v10, -0x1

    int-to-byte v10, v10

    aput-byte v10, v9, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_1
    return-object v6
.end method
