.class public Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbPrPreferenceModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;
    }
.end annotation


# static fields
.field private static final MMBPR_LOCK:Ljava/lang/Object;

.field private static final MMBPR_SCLOCK_LOCK:Ljava/lang/Object;

.field static final MMB_URL_OPTION:Z

.field private static configrationData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDataPath:Ljava/lang/String;

.field private static mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

.field private static mMmAppStartupStatus:Z

.field private static mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

.field private static mSecClock:Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    const-string v0, ""

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mDataPath:Ljava/lang/String;

    .line 124
    const-string v0, "exist"

    const-string v1, "ro.mmb.urloption"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMB_URL_OPTION:Z

    .line 444
    sput-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    .line 449
    sput-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mSecClock:Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;

    .line 454
    sput-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    .line 457
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMBPR_LOCK:Ljava/lang/Object;

    .line 460
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMBPR_SCLOCK_LOCK:Ljava/lang/Object;

    .line 465
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMmAppStartupStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    .line 478
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    .line 483
    return-void
.end method

.method private canComplementMobile(I)Z
    .locals 1
    .param p1, "aNetworkStatus"    # I

    .prologue
    .line 5174
    const/4 v0, 0x0

    .line 5175
    .local v0, "canComplement":Z
    packed-switch p1, :pswitch_data_0

    .line 5181
    :goto_0
    return v0

    .line 5177
    :pswitch_0
    const/4 v0, 0x1

    .line 5178
    goto :goto_0

    .line 5175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private cipherString(Ljava/lang/String;)[B
    .locals 8
    .param p1, "aOriginal"    # Ljava/lang/String;

    .prologue
    .line 670
    const-string v5, "ISDB-Tmm_PreferenceCryptKey"

    .line 671
    .local v5, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 680
    .local v1, "cipherData":[B
    :try_start_0
    const-string v7, "DESede"

    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 681
    .local v4, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 682
    .local v2, "deskey":Ljavax/crypto/spec/DESedeKeySpec;
    invoke-virtual {v4, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 685
    .local v6, "seckey":Ljavax/crypto/SecretKey;
    const-string v7, "DESede"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 686
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 716
    return-object v1

    .line 689
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "deskey":Ljavax/crypto/spec/DESedeKeySpec;
    .end local v4    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v6    # "seckey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v3

    .line 690
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 691
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 693
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v3

    .line 694
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 695
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 697
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v3

    .line 698
    .local v3, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 699
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 701
    .end local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_3
    move-exception v3

    .line 702
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 703
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 705
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v3

    .line 706
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 707
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 709
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v3

    .line 710
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 711
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7
.end method

.method private copyConfigurationFromAssets()V
    .locals 7

    .prologue
    .line 854
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "mmbPrConfiguration.bin"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 861
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mDataPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mmbPrConfiguration.bin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 867
    .local v4, "output":Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 868
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 871
    .local v1, "byteSize":I
    :goto_0
    const/4 v5, -0x1

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v5, v1, :cond_0

    .line 872
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 874
    :catch_0
    move-exception v2

    .line 875
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 876
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 879
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 880
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 885
    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 888
    :goto_2
    throw v5

    .line 855
    .end local v0    # "buffer":[B
    .end local v1    # "byteSize":I
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 856
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 862
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 863
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 880
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteSize":I
    .restart local v4    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 885
    :goto_3
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 894
    :goto_4
    return-void

    .line 881
    :catch_3
    move-exception v2

    .line 882
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 886
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 887
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 881
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 882
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 886
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 887
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private decryptString([B)Ljava/lang/String;
    .locals 10
    .param p1, "aOriginal"    # [B

    .prologue
    const/4 v9, 0x0

    .line 613
    const-string v6, "ISDB-Tmm_PreferenceCryptKey"

    .line 614
    .local v6, "key":Ljava/lang/String;
    const-string v2, ""

    .line 619
    .local v2, "decrypt":Ljava/lang/String;
    :try_start_0
    const-string v8, "DESede"

    invoke-static {v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 620
    .local v5, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 621
    .local v3, "deskey":Ljavax/crypto/spec/DESedeKeySpec;
    invoke-virtual {v5, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 624
    .local v7, "seckey":Ljavax/crypto/SecretKey;
    const-string v8, "DESede"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 625
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 626
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 627
    .local v1, "decode":[B
    new-instance v2, Ljava/lang/String;

    .end local v2    # "decrypt":Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    .line 656
    .restart local v2    # "decrypt":Ljava/lang/String;
    return-object v2

    .line 629
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decode":[B
    .end local v2    # "decrypt":Ljava/lang/String;
    .end local v3    # "deskey":Ljavax/crypto/spec/DESedeKeySpec;
    .end local v5    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "seckey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v4

    .line 630
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "NoSuchAlgorithmException"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v8

    .line 633
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 634
    .local v4, "e":Ljava/security/InvalidKeyException;
    const-string v8, "InvalidKeyException"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v8

    .line 637
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v4

    .line 638
    .local v4, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v8, "InvalidKeySpecException"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v8

    .line 641
    .end local v4    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_3
    move-exception v4

    .line 642
    .local v4, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v8, "NoSuchPaddingException"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v8

    .line 645
    .end local v4    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v4

    .line 646
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v8, "IllegalBlockSizeException"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v8

    .line 649
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v4

    .line 650
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    const-string v8, "BadPaddingException"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v8
.end method

.method private getChangeStorageState(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Z
    .locals 4
    .param p1, "aContentType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    .prologue
    .line 7416
    const/4 v2, 0x0

    .line 7422
    .local v2, "state":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getChangeStorageState(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 7433
    const/4 v1, 0x0

    .line 7434
    .local v1, "result":Z
    sget-object v3, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->POSSIBLE_CHANGE_STORAGE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    if-ne v2, v3, :cond_0

    .line 7435
    const/4 v1, 0x1

    .line 7443
    :goto_0
    return v1

    .line 7427
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 7428
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7429
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 7437
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "result":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getContentSaveDevice(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;)I
    .locals 6
    .param p1, "aContentType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    .prologue
    const/4 v5, 0x0

    .line 7305
    const/4 v2, 0x0

    .line 7311
    .local v2, "storagetType":Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getContentStorage(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 7322
    const/4 v1, 0x0

    .line 7323
    .local v1, "result":I
    if-eqz v2, :cond_0

    .line 7324
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$1;->$SwitchMap$mmb$android$MmbSeMngMw$MmbSeMngMw$MmbSeStorageType:[I

    invoke-virtual {v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 7346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentStorage() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7347
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 7316
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 7317
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7318
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 7327
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "result":I
    :pswitch_0
    const/4 v1, 0x1

    .line 7358
    :goto_0
    return v1

    .line 7332
    :pswitch_1
    const/4 v1, 0x0

    .line 7333
    goto :goto_0

    .line 7337
    :pswitch_2
    const/4 v1, -0x2

    .line 7338
    goto :goto_0

    .line 7341
    :pswitch_3
    const-string v3, "getContentStorage() result == STORAGE_FAIL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7342
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 7351
    :cond_0
    const-string v3, "getContentStorage() result == NULL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7352
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 7324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getContentSavePath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;
    .locals 3
    .param p1, "aContentType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
    .param p2, "aStorageType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    .prologue
    .line 7377
    const/4 v1, 0x0

    .line 7384
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-virtual {v2, p1, p2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getStoragePath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7397
    return-object v1

    .line 7389
    :catch_0
    move-exception v0

    .line 7390
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7391
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
.end method

.method private initServiceSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 998
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1000
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "keyThumbnailWidth"

    const/16 v3, 0x1e0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1001
    const-string v2, "keyThumbnailHeight"

    const/16 v3, 0x10e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1003
    const-string v2, "KeyCaptionViewFlag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1004
    const-string v2, "keyCaptionLanguage"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1007
    const-string v2, "keySuperimposeViewFlag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1008
    const-string v2, "keySuperimposeLanguage"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1011
    const-string v2, "keyAudioState"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1013
    const-string v2, "keyLastChannelServiceId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1014
    const-string v2, "keyLastChannelNetworkId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1016
    const-string v2, "keyInitializeFlag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1019
    const-string v2, "keyEntityName1"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1020
    const-string v2, "keyEntityName2"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1021
    const-string v2, "keyEntityName3"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1022
    const-string v2, "keyEntityName4"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1024
    const-string v2, "keyBrowserCookie"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1025
    const-string v2, "keyBrowserReferer"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1026
    const-string v2, "keyBrowserJavaScript"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1028
    const-string v2, "keyBml"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1030
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    const-string v2, "keyPfBackgroundId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1034
    const-string v2, "keySendLogFlag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1036
    const-string v2, "keyAutoRecommendFlag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1038
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1041
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->loadConfiguration()V

    .line 1044
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1045
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_CRID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_KEYWORD_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_LOG_SEND_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CRID_INFO_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    :cond_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PF_REGIST_AUTH_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PRE_33SEG_COMMON_ID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PF_BACKGROUND_ID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER1_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER2_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER3_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER4_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMBPR_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 1066
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->saveMapConfigration()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    :try_start_1
    monitor-exit v3

    .line 1081
    return-void

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
    .local v1, "err":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1070
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2

    .line 1076
    .end local v1    # "err":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1072
    :catch_1
    move-exception v1

    .line 1073
    .local v1, "err":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1074
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private isAudioState(I)Z
    .locals 2
    .param p1, "aAudioState"    # I

    .prologue
    .line 7029
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 7031
    const/4 v0, 0x1

    .line 7039
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 7034
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isCaptionSuperValue(I)Z
    .locals 2
    .param p1, "aCaptionDisplay"    # I

    .prologue
    .line 6905
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 6907
    :cond_0
    const/4 v0, 0x1

    .line 6915
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 6910
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isEnvDependValue(I)Z
    .locals 2
    .param p1, "aEnvDepend"    # I

    .prologue
    .line 6806
    if-ltz p1, :cond_0

    const/16 v1, 0xd

    if-gt p1, v1, :cond_0

    .line 6809
    const/4 v0, 0x1

    .line 6818
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 6813
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isFlagValue(I)Z
    .locals 2
    .param p1, "aFlag"    # I

    .prologue
    .line 6874
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 6876
    :cond_0
    const/4 v0, 0x1

    .line 6884
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 6879
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isForeignFlagValue(I)Z
    .locals 2
    .param p1, "aForeignFlag"    # I

    .prologue
    .line 6967
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 6969
    :cond_0
    const/4 v0, 0x1

    .line 6977
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 6972
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isInitializedFlagValue(I)Z
    .locals 2
    .param p1, "aInitializedFlag"    # I

    .prologue
    .line 6998
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 7000
    :cond_0
    const/4 v0, 0x1

    .line 7008
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 7003
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isNetworkTypeValue(I)Z
    .locals 2
    .param p1, "aNetworkType"    # I

    .prologue
    .line 6841
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 6844
    const/4 v0, 0x1

    .line 6853
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 6848
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isParentalControlRate(I)Z
    .locals 2
    .param p1, "aParentalControlRate"    # I

    .prologue
    .line 7060
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    const/16 v1, 0x14

    if-gt p1, v1, :cond_0

    .line 7063
    const/4 v0, 0x1

    .line 7075
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 7065
    .end local v0    # "ret":Z
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 7067
    const/4 v0, 0x1

    .restart local v0    # "ret":Z
    goto :goto_0

    .line 7070
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isSearchType(I)Z
    .locals 2
    .param p1, "aSearchType"    # I

    .prologue
    .line 7165
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 7167
    const/4 v0, 0x1

    .line 7175
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 7170
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isServerUrlValue(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aServerUrl"    # Ljava/lang/String;

    .prologue
    .line 7095
    const/4 v2, 0x1

    .line 7096
    .local v2, "ret":Z
    const/16 v0, 0xff

    .line 7098
    .local v0, "SERVERURL_BYTE_MAX":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v1, v3

    .line 7099
    .local v1, "bytes":I
    if-lez v1, :cond_0

    const/16 v3, 0xff

    if-ge v3, v1, :cond_1

    .line 7101
    :cond_0
    const/4 v2, 0x0

    .line 7107
    :cond_1
    return v2
.end method

.method private isStartupModeValue(I)Z
    .locals 2
    .param p1, "aMode"    # I

    .prologue
    .line 7197
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 7199
    :cond_0
    const/4 v0, 0x1

    .line 7206
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 7201
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isSuperImposeLanguageValue(I)Z
    .locals 2
    .param p1, "aCaptionLanguage"    # I

    .prologue
    .line 6936
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 6938
    :cond_0
    const/4 v0, 0x1

    .line 6946
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 6941
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isValidEntityId(I)Z
    .locals 2
    .param p1, "aEntityId"    # I

    .prologue
    .line 1103
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    .line 1104
    const/4 v0, 0x1

    .line 1111
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 1106
    .end local v0    # "ret":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private loadConfigrationFromFile()Z
    .locals 8

    .prologue
    .line 800
    const/4 v1, 0x0

    .line 802
    .local v1, "done":Z
    const/4 v3, 0x0

    .line 805
    .local v3, "input":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mDataPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mmbPrConfiguration.bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    .end local v3    # "input":Ljava/io/ObjectInputStream;
    .local v4, "input":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 812
    .local v0, "cipherdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->loadMapConfiguration(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 813
    const/4 v1, 0x1

    .line 818
    if-eqz v4, :cond_2

    .line 821
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 832
    .end local v0    # "cipherdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .end local v4    # "input":Ljava/io/ObjectInputStream;
    .restart local v3    # "input":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return v1

    .line 822
    .end local v3    # "input":Ljava/io/ObjectInputStream;
    .restart local v0    # "cipherdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .restart local v4    # "input":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 824
    .end local v4    # "input":Ljava/io/ObjectInputStream;
    .restart local v3    # "input":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 814
    .end local v0    # "cipherdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 815
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 818
    if-eqz v3, :cond_0

    .line 821
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 822
    :catch_2
    move-exception v2

    .line 823
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 818
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 821
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 824
    :cond_1
    :goto_3
    throw v5

    .line 822
    :catch_3
    move-exception v2

    .line 823
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 818
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/ObjectInputStream;
    .restart local v4    # "input":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "input":Ljava/io/ObjectInputStream;
    .restart local v3    # "input":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 814
    .end local v3    # "input":Ljava/io/ObjectInputStream;
    .restart local v4    # "input":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "input":Ljava/io/ObjectInputStream;
    .restart local v3    # "input":Ljava/io/ObjectInputStream;
    goto :goto_1

    .end local v3    # "input":Ljava/io/ObjectInputStream;
    .restart local v0    # "cipherdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    .restart local v4    # "input":Ljava/io/ObjectInputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "input":Ljava/io/ObjectInputStream;
    .restart local v3    # "input":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method private loadConfiguration()V
    .locals 4

    .prologue
    .line 768
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMBPR_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 769
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->loadConfigrationFromFile()Z

    move-result v0

    .line 770
    .local v0, "done":Z
    if-nez v0, :cond_0

    .line 771
    const-string v1, "Reload from assets."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setConfigrationFile()V

    .line 774
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->loadConfigrationFromFile()Z

    move-result v0

    .line 775
    if-nez v0, :cond_0

    .line 776
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1

    .line 779
    .end local v0    # "done":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "done":Z
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    return-void
.end method

.method private loadMapConfiguration(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, "aCipherdata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    move-result-object v0

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 915
    .local v1, "configData":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 917
    .local v2, "data":[B
    if-eqz v2, :cond_0

    .line 918
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->decryptString([B)Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "decryptdata":Ljava/lang/String;
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    .end local v3    # "decryptdata":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 926
    .end local v1    # "configData":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;
    .end local v2    # "data":[B
    :cond_1
    return-void
.end method

.method private declared-synchronized prepareConfiguration()V
    .locals 1

    .prologue
    .line 747
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 748
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    .line 749
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->loadConfiguration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :cond_0
    monitor-exit p0

    return-void

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveMapConfigration()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 941
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 942
    .local v2, "cipherMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v8, 0x0

    .line 948
    .local v8, "output":Ljava/io/ObjectOutputStream;
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->values()[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    move-result-object v0

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 949
    .local v3, "configData":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;
    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 951
    .local v4, "data":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 953
    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->cipherString(Ljava/lang/String;)[B

    move-result-object v1

    .line 955
    .local v1, "cipherData":[B
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    .end local v1    # "cipherData":[B
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 960
    .end local v3    # "configData":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;
    .end local v4    # "data":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mDataPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "mmbPrConfiguration.bin"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    .end local v8    # "output":Ljava/io/ObjectOutputStream;
    .local v9, "output":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v9, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 963
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 968
    if-eqz v9, :cond_2

    .line 969
    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V

    .line 975
    :cond_2
    return-void

    .line 964
    .end local v9    # "output":Ljava/io/ObjectOutputStream;
    .restart local v8    # "output":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v5

    .line 965
    .local v5, "err":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 966
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    .end local v5    # "err":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v8, :cond_3

    .line 969
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    throw v10

    .line 968
    .end local v8    # "output":Ljava/io/ObjectOutputStream;
    .restart local v9    # "output":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "output":Ljava/io/ObjectOutputStream;
    .restart local v8    # "output":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 964
    .end local v8    # "output":Ljava/io/ObjectOutputStream;
    .restart local v9    # "output":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v5

    move-object v8, v9

    .end local v9    # "output":Ljava/io/ObjectOutputStream;
    .restart local v8    # "output":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method private setCasDrmServerUrl(ILjava/lang/String;)V
    .locals 5
    .param p1, "aEntityId"    # I
    .param p2, "aCasServerUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 6557
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isValidEntityId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupport entityid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6559
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 6562
    :cond_0
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isServerUrlValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupport ServerUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6564
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 6567
    :cond_1
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER1_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER2_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER3_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER4_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 6573
    .local v0, "KEYLIST":[Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v0, v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6582
    return-void

    .line 6574
    :catch_0
    move-exception v1

    .line 6575
    .local v1, "err":Ljava/lang/UnsupportedOperationException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6576
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
.end method

.method private setConfigrationFile()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->copyConfigurationFromAssets()V

    .line 736
    return-void
.end method

.method private setContentSaveDevice(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;)I
    .locals 8
    .param p1, "aContentType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;
    .param p2, "aStorageType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .prologue
    const/4 v7, 0x0

    .line 7228
    const/4 v3, 0x0

    .line 7231
    .local v3, "ret":I
    const/4 v2, 0x0

    .line 7232
    .local v2, "moContentType":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    if-ne p1, v5, :cond_0

    .line 7233
    sget-object v2, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    .line 7237
    :goto_0
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getChangeStorageState(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v3

    .line 7288
    .end local v3    # "ret":I
    .local v4, "ret":I
    :goto_1
    return v4

    .line 7235
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :cond_0
    sget-object v2, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_RECORD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    goto :goto_0

    .line 7245
    :cond_1
    const/4 v1, -0x1

    .line 7251
    .local v1, "midresult":I
    :try_start_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v5, p1, p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setContentStorage(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 7261
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 7262
    const/4 v3, 0x1

    move v4, v3

    .line 7288
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_1

    .line 7256
    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    :catch_0
    move-exception v0

    .line 7257
    .local v0, "err":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7258
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 7265
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_2
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 7266
    const-string v5, "setContentStorage() result == MmbErrCd.ERR_PARAM"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7267
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 7270
    :cond_3
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v1, v5, :cond_4

    .line 7271
    const-string v5, "setContentStorage() result == MmbErrCd.ERR_UPDFAILES"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7272
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 7275
    :cond_4
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v1, v5, :cond_5

    .line 7276
    const-string v5, "setContentStorage() result == MmbErrCd.ERR_OTHER"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7277
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 7281
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContentStorage() result == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7282
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
.end method

.method private setCridServerUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "aInputURL"    # Ljava/lang/String;

    .prologue
    .line 6768
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isServerUrlValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupport ServerUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6770
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 6775
    :cond_0
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CRID_INFO_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6784
    return-void

    .line 6776
    :catch_0
    move-exception v0

    .line 6777
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6778
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1
.end method

.method private setEpgEcgServerUrl()V
    .locals 4

    .prologue
    .line 1243
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1248
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrgSrvUrl(ILjava/lang/String;)I

    .line 1255
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_KEYWORD_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "url":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1260
    .restart local v1    # "url":Ljava/lang/String;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrgSrvUrl(ILjava/lang/String;)I

    .line 1267
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_CRID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "url":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1272
    .restart local v1    # "url":Ljava/lang/String;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrgSrvUrl(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    return-void

    .line 1277
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "err":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1279
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
.end method

.method private setEpgEcgServerUrl(ILjava/lang/String;)V
    .locals 4
    .param p1, "aInterfaceNo"    # I
    .param p2, "aInputURL"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6656
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isServerUrlValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupport ServerUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6658
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 6662
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 6703
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupport InterfaceNo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6704
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6706
    :catch_0
    move-exception v0

    .line 6707
    .local v0, "err":Ljava/lang/UnsupportedOperationException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6708
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1

    .line 6665
    .end local v0    # "err":Ljava/lang/UnsupportedOperationException;
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6671
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrgSrvUrl(ILjava/lang/String;)I

    .line 6714
    :goto_0
    return-void

    .line 6678
    :pswitch_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_CRID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6684
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrgSrvUrl(ILjava/lang/String;)I

    goto :goto_0

    .line 6691
    :pswitch_2
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_EPG_SERVER_KEYWORD_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6697
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrgSrvUrl(ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6662
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setReceptionServerUrl(ILjava/lang/String;)V
    .locals 7
    .param p1, "aInterfaceNo"    # I
    .param p2, "aInputURL"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 6605
    const/4 v0, 0x2

    .line 6607
    .local v0, "IF_NUM_MAX":I
    if-ltz p1, :cond_0

    if-ge v6, p1, :cond_1

    .line 6608
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupport InterfaceNo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6609
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 6612
    :cond_1
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isServerUrlValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupport ServerUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6614
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 6617
    :cond_2
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PF_REGIST_AUTH_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x1

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PRE_33SEG_COMMON_ID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PF_BACKGROUND_ID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 6623
    .local v1, "KEYLIST":[Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    aget-object v4, v1, p1

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6632
    return-void

    .line 6624
    :catch_0
    move-exception v2

    .line 6625
    .local v2, "err":Ljava/lang/UnsupportedOperationException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6626
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
.end method

.method private setViewLogServerUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "aInputURL"    # Ljava/lang/String;

    .prologue
    .line 6733
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isServerUrlValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupport ServerUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6735
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 6740
    :cond_0
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_LOG_SEND_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6749
    return-void

    .line 6741
    :catch_0
    move-exception v0

    .line 6742
    .local v0, "err":Ljava/lang/UnsupportedOperationException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6743
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method public declared-synchronized changeApplicationMode()V
    .locals 4

    .prologue
    .line 5749
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v2, "keyPreferenceMmbiMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5751
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5752
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "keyPreferenceMmbiMode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5755
    const-string v1, "keySendLogFlag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5758
    const-string v1, "keyAutoRecommendFlag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5760
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5765
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit p0

    return-void

    .line 5749
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cleanupModule()V
    .locals 1

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->cleanupModule()V

    .line 553
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->closeMmbPrPreference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized compareParentPassword(Ljava/lang/String;)I
    .locals 5
    .param p1, "aParentPassword"    # Ljava/lang/String;

    .prologue
    .line 3636
    monitor-enter p0

    const/4 v2, 0x1

    .line 3637
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3646
    .local v1, "midresult":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->jdgPrntlPwd(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3658
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->AGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_0

    .line 3659
    const/4 v2, 0x0

    .line 3671
    :goto_0
    monitor-exit p0

    return v2

    .line 3651
    :catch_0
    move-exception v0

    .line 3652
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3653
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3636
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3661
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->DISAGREEMENT:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3662
    const/4 v2, 0x1

    goto :goto_0

    .line 3665
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jdgPrntlPwd() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3666
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getALayerEnvironment(I)Ljava/util/List;
    .locals 5
    .param p1, "aBroadcasterId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1551
    monitor-enter p0

    const/4 v2, 0x0

    .line 1559
    .local v2, "infolist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceALayerEnvironmentSv;>;"
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    move-result-object v0

    .line 1561
    .local v0, "database":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->getALayerEnvironment(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1571
    monitor-exit p0

    return-object v2

    .line 1563
    .end local v0    # "database":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    :catch_0
    move-exception v3

    .line 1564
    .local v3, "runtimeerr":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 1565
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1566
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1551
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v3    # "runtimeerr":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getAudioSound()I
    .locals 5

    .prologue
    .line 2150
    monitor-enter p0

    const/4 v1, 0x0

    .line 2158
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyAudioState"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2169
    monitor-exit p0

    return v1

    .line 2161
    :catch_0
    move-exception v0

    .line 2162
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2163
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2150
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getAutoAcquireLisence()I
    .locals 5

    .prologue
    .line 3149
    monitor-enter p0

    const/4 v2, 0x0

    .line 3150
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3159
    .local v1, "midresult":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getAutoLns()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3169
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_0

    .line 3170
    const/4 v2, 0x1

    .line 3189
    :goto_0
    monitor-exit p0

    return v2

    .line 3163
    :catch_0
    move-exception v0

    .line 3164
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3165
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3149
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3173
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3174
    const/4 v2, 0x0

    goto :goto_0

    .line 3177
    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 3178
    const-string v3, "getAutoLns() result == -1"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3179
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3183
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAutoLns() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3184
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getAutoCompletion()I
    .locals 5

    .prologue
    .line 3004
    monitor-enter p0

    const/4 v2, 0x0

    .line 3005
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3014
    .local v1, "midresult":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getAutoFCCmpl()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3025
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_0

    .line 3026
    const/4 v2, 0x1

    .line 3049
    :goto_0
    monitor-exit p0

    return v2

    .line 3019
    :catch_0
    move-exception v0

    .line 3020
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3021
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3004
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3029
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3030
    const/4 v2, 0x0

    goto :goto_0

    .line 3033
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON_WIFI:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 3034
    const/4 v2, 0x2

    goto :goto_0

    .line 3037
    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 3038
    const-string v3, "getAutoFCCmpl() result == -1"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3039
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3043
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAutoFCCmpl() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3044
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getAutoReception()I
    .locals 5

    .prologue
    .line 2687
    monitor-enter p0

    const/4 v1, 0x0

    .line 2688
    .local v1, "result":I
    const/4 v2, 0x0

    .line 2695
    .local v2, "resultmiddle":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_ALL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2706
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2707
    const/4 v1, 0x1

    .line 2728
    :goto_0
    monitor-exit p0

    return v1

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2702
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2687
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2710
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 2711
    const/4 v1, 0x0

    goto :goto_0

    .line 2714
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 2715
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 2716
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2717
    throw v0

    .line 2721
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 2722
    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2723
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getAutoReceptionForAutoReceive()I
    .locals 5

    .prologue
    .line 6030
    monitor-enter p0

    const/4 v1, 0x0

    .line 6031
    .local v1, "result":I
    const/4 v2, 0x0

    .line 6038
    .local v2, "resultmiddle":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_AUTO:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6049
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 6050
    const/4 v1, 0x1

    .line 6071
    :goto_0
    monitor-exit p0

    return v1

    .line 6043
    :catch_0
    move-exception v0

    .line 6044
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6045
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6030
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6053
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 6054
    const/4 v1, 0x0

    goto :goto_0

    .line 6057
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 6058
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 6059
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6060
    throw v0

    .line 6064
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 6065
    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6066
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getAutoReceptionForForceReceive()I
    .locals 5

    .prologue
    .line 6172
    monitor-enter p0

    const/4 v1, 0x0

    .line 6173
    .local v1, "result":I
    const/4 v2, 0x0

    .line 6180
    .local v2, "resultmiddle":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_FORCE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 6191
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 6192
    const/4 v1, 0x1

    .line 6213
    :goto_0
    monitor-exit p0

    return v1

    .line 6185
    :catch_0
    move-exception v0

    .line 6186
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6187
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6172
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6195
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 6196
    const/4 v1, 0x0

    goto :goto_0

    .line 6199
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 6200
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 6201
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6202
    throw v0

    .line 6206
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 6207
    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6208
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getAutoReceptionForRecommend()I
    .locals 5

    .prologue
    .line 5889
    monitor-enter p0

    const/4 v1, 0x0

    .line 5890
    .local v1, "result":I
    const/4 v2, 0x0

    .line 5897
    .local v2, "resultmiddle":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_RECOMMEND:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 5908
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5909
    const/4 v1, 0x1

    .line 5930
    :goto_0
    monitor-exit p0

    return v1

    .line 5902
    :catch_0
    move-exception v0

    .line 5903
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5904
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5889
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5912
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 5913
    const/4 v1, 0x0

    goto :goto_0

    .line 5916
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 5917
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 5918
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5919
    throw v0

    .line 5923
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 5924
    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5925
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getAutoRecommendInfo()I
    .locals 5

    .prologue
    .line 4160
    monitor-enter p0

    const/4 v1, 0x0

    .line 4165
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyAutoRecommendFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4175
    monitor-exit p0

    return v1

    .line 4167
    :catch_0
    move-exception v0

    .line 4168
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4169
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4160
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getBmlBrowser()I
    .locals 5

    .prologue
    .line 4596
    monitor-enter p0

    const/4 v1, 0x1

    .line 4599
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyBml"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4609
    monitor-exit p0

    return v1

    .line 4601
    :catch_0
    move-exception v0

    .line 4602
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4603
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4596
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCaptionDisplay()I
    .locals 5

    .prologue
    .line 1798
    monitor-enter p0

    const/4 v1, 0x0

    .line 1806
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "KeyCaptionViewFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1816
    monitor-exit p0

    return v1

    .line 1808
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1810
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1798
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCaptionLanguage()I
    .locals 5

    .prologue
    .line 1885
    monitor-enter p0

    const/4 v1, 0x1

    .line 1893
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyCaptionLanguage"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1904
    monitor-exit p0

    return v1

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1898
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCasDrmExtTierDateMax()I
    .locals 4

    .prologue
    .line 1214
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_EXTTIER_DATE_MAX:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1222
    .local v1, "result":I
    monitor-exit p0

    return v1

    .line 1216
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v3, "Configration Data"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCasDrmServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aEntityId"    # Ljava/lang/String;

    .prologue
    .line 1172
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isValidEntityId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1173
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1175
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1178
    .local v0, "entityid":I
    packed-switch v0, :pswitch_data_0

    .line 1192
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1180
    :pswitch_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER1_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    .local v1, "url":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1183
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_1
    :try_start_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER2_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1184
    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1186
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER3_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1187
    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1189
    .end local v1    # "url":Ljava/lang/String;
    :pswitch_3
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CAS_DRM_SERVER4_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1190
    .restart local v1    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized getCompletionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aIdentification"    # Ljava/lang/String;

    .prologue
    .line 1517
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    move-result-object v2

    .line 1519
    .local v2, "database":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->getCompletionId(Ljava/lang/String;)[B

    move-result-object v1

    .line 1522
    .local v1, "cpidbytedata":[B
    if-nez v1, :cond_0

    .line 1523
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 1524
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1525
    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    .end local v1    # "cpidbytedata":[B
    .end local v2    # "database":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_0
    move-exception v3

    .line 1530
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 1531
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1532
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1527
    .restart local v1    # "cpidbytedata":[B
    .restart local v2    # "database":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1537
    .local v0, "cpid":Ljava/lang/String;
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getCompletionThreshold(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    .locals 5
    .param p1, "aNetworkType"    # I

    .prologue
    const/4 v3, 0x2

    .line 3797
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;-><init>()V

    .line 3800
    .local v2, "threshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    if-ne p1, v3, :cond_0

    .line 3802
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3803
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3797
    .end local v2    # "threshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3806
    .restart local v2    # "threshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isNetworkTypeValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3807
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3816
    :cond_1
    :try_start_2
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getFCCmplLmt(I)[I

    move-result-object v1

    .line 3821
    .local v1, "midreturn":[I
    if-nez v1, :cond_2

    .line 3822
    const/4 v3, 0x3

    new-array v1, v3, [I

    .end local v1    # "midreturn":[I
    const/4 v3, 0x0

    aput p1, v1, v3

    const/4 v3, 0x1

    const/16 v4, 0x1000

    aput v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v1, v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3831
    .restart local v1    # "midreturn":[I
    :cond_2
    :try_start_3
    array-length v3, v1

    if-nez v3, :cond_3

    .line 3832
    const-string v3, "getFCCmplLmt() result == -1"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3833
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3826
    .end local v1    # "midreturn":[I
    :catch_0
    move-exception v0

    .line 3827
    .local v0, "err":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3828
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3836
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .restart local v1    # "midreturn":[I
    :cond_3
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSize:I

    .line 3837
    const/4 v3, 0x2

    aget v3, v1, v3

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRate:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3842
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getConfiguration(I)Ljava/lang/String;
    .locals 4
    .param p1, "aConfigType"    # I

    .prologue
    .line 5458
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isEnvDependValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5459
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 5463
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5458
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5467
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5522
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5528
    .local v0, "config":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 5470
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_0
    :try_start_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_LICENCE_MAX:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5471
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5474
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_BUY_HISTORY_MAX:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5475
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5478
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CRID_REGIST_MAX:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5479
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5482
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_3
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_VIEWLOG_MAX:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5483
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5486
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_4
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CONN_TIMEOUT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5487
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5490
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_5
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_READ_TIMEOUT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5491
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5494
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_6
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_USER_AGENT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5495
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5498
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_7
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_BATTERY_LOW_LIMIT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5499
    .restart local v0    # "config":Ljava/lang/String;
    goto :goto_0

    .line 5502
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_8
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_VACANT_RAM_LOW_LIMIT:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5503
    .restart local v0    # "config":Ljava/lang/String;
    goto/16 :goto_0

    .line 5506
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_9
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_NOTIFY_PLAY_BEFORE_TIME:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5507
    .restart local v0    # "config":Ljava/lang/String;
    goto/16 :goto_0

    .line 5509
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_a
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_MAX_COUNT_ST_VIEW:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5510
    .restart local v0    # "config":Ljava/lang/String;
    goto/16 :goto_0

    .line 5512
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_b
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_MAX_COUNT_FC_PLAY:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5513
    .restart local v0    # "config":Ljava/lang/String;
    goto/16 :goto_0

    .line 5515
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_c
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_MAX_COUNT_SERIES:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5516
    .restart local v0    # "config":Ljava/lang/String;
    goto/16 :goto_0

    .line 5518
    .end local v0    # "config":Ljava/lang/String;
    :pswitch_d
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_SERIES_EXPIRED_DATE:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5519
    .restart local v0    # "config":Ljava/lang/String;
    goto/16 :goto_0

    .line 5467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public declared-synchronized getContentSaveDevice()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    .locals 3

    .prologue
    .line 6313
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6318
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_start_1
    sget-object v2, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getChangeStorageState(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6319
    sget-object v2, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSaveDevice(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;)I

    move-result v2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    .line 6325
    :goto_0
    sget-object v2, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_RECORD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getChangeStorageState(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6326
    sget-object v2, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_RECORD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSaveDevice(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;)I

    move-result v2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbRecContent:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6339
    :goto_1
    monitor-exit p0

    return-object v1

    .line 6321
    :cond_0
    const/4 v2, -0x1

    :try_start_2
    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6331
    :catch_0
    move-exception v0

    .line 6332
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6333
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6313
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 6328
    .restart local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :cond_1
    const/4 v2, -0x1

    :try_start_4
    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbRecContent:I
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized getContentSavePath()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    .locals 5

    .prologue
    .line 6355
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6360
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :try_start_1
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    sget-object v3, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    sget-object v4, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSavePath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;->mmbSD:Ljava/lang/String;

    .line 6363
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbFcContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    sget-object v3, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    sget-object v4, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSavePath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;->mmbInternal:Ljava/lang/String;

    .line 6367
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbRecContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    sget-object v3, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_RECORD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    sget-object v4, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSavePath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;->mmbSD:Ljava/lang/String;

    .line 6370
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;->mmbRecContent:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;

    sget-object v3, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_RECORD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    sget-object v4, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSavePath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv$MmbPathInfo;->mmbInternal:Ljava/lang/String;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6381
    monitor-exit p0

    return-object v1

    .line 6373
    :catch_0
    move-exception v0

    .line 6374
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6375
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6355
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    .locals 3

    .prologue
    .line 6397
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6402
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_start_1
    sget-object v2, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSaveDevice(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;)I

    move-result v2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    .line 6405
    sget-object v2, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_RECORD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentSaveDevice(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;)I

    move-result v2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbRecContent:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6415
    monitor-exit p0

    return-object v1

    .line 6407
    :catch_0
    move-exception v0

    .line 6408
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6409
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6397
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCridServerUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1377
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_CRID_INFO_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    .local v0, "url":Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 1377
    .end local v0    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getEntityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "aEntityId"    # Ljava/lang/String;
    .param p2, "aPackage"    # Ljava/lang/String;

    .prologue
    .line 4052
    monitor-enter p0

    :try_start_0
    const-string v2, ""

    .line 4053
    .local v2, "name":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4056
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isValidEntityId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4057
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4058
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4052
    .end local v1    # "id":I
    .end local v2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4064
    .restart local v1    # "id":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 4087
    :goto_0
    monitor-exit p0

    return-object v2

    .line 4066
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v4, "keyEntityName1"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4067
    goto :goto_0

    .line 4069
    :pswitch_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v4, "keyEntityName2"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4070
    goto :goto_0

    .line 4072
    :pswitch_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v4, "keyEntityName3"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4073
    goto :goto_0

    .line 4075
    :pswitch_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v4, "keyEntityName4"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 4076
    goto :goto_0

    .line 4080
    :catch_0
    move-exception v0

    .line 4081
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4082
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4064
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized getEpgEcgServerUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "aSearchType"    # I

    .prologue
    .line 1305
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isSearchType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1306
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1314
    :cond_0
    :try_start_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v2, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getPrgSrvUrl(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1325
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1326
    :try_start_2
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 1327
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1328
    throw v0

    .line 1319
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "err":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1321
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1334
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getEpgUpdateTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 5
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2866
    monitor-enter p0

    const/4 v2, 0x0

    .line 2867
    .local v2, "time":I
    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2875
    .local v1, "midresult":Ljava/lang/String;
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getUpdPrgTime()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2886
    :try_start_2
    const-string v3, "0200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2887
    const/4 v2, 0x0

    .line 2902
    :goto_0
    monitor-exit p0

    return v2

    .line 2880
    :catch_0
    move-exception v0

    .line 2881
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2882
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2866
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "midresult":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2888
    .restart local v1    # "midresult":Ljava/lang/String;
    :cond_0
    :try_start_4
    const-string v3, "0800"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2889
    const/4 v2, 0x1

    goto :goto_0

    .line 2890
    :cond_1
    const-string v3, "1400"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2891
    const/4 v2, 0x2

    goto :goto_0

    .line 2892
    :cond_2
    const-string v3, "2000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2893
    const/4 v2, 0x3

    goto :goto_0

    .line 2895
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpdPrgTime() result =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2896
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getFcCookieDelete()I
    .locals 5

    .prologue
    .line 4512
    monitor-enter p0

    const/4 v1, 0x0

    .line 4517
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyCookieDelete"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4527
    monitor-exit p0

    return v1

    .line 4520
    :catch_0
    move-exception v0

    .line 4521
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4522
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4512
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFcCookieSetting()I
    .locals 5

    .prologue
    .line 4247
    monitor-enter p0

    const/4 v1, 0x1

    .line 4252
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyBrowserCookie"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4263
    monitor-exit p0

    return v1

    .line 4255
    :catch_0
    move-exception v0

    .line 4256
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4257
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4247
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFcJavaScriptSetting()I
    .locals 5

    .prologue
    .line 4423
    monitor-enter p0

    const/4 v1, 0x1

    .line 4428
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyBrowserJavaScript"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4439
    monitor-exit p0

    return v1

    .line 4431
    :catch_0
    move-exception v0

    .line 4432
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4433
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4423
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFcRefererSetting()I
    .locals 5

    .prologue
    .line 4335
    monitor-enter p0

    const/4 v1, 0x1

    .line 4340
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyBrowserReferer"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4351
    monitor-exit p0

    return v1

    .line 4343
    :catch_0
    move-exception v0

    .line 4344
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4345
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4335
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getForeignFlag()I
    .locals 5

    .prologue
    .line 2483
    const/4 v1, 0x0

    .line 2491
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyForeignFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2501
    return v1

    .line 2493
    :catch_0
    move-exception v0

    .line 2494
    .local v0, "err":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2495
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
.end method

.method public declared-synchronized getInitializedFlag()I
    .locals 5

    .prologue
    .line 2569
    monitor-enter p0

    const/4 v1, 0x0

    .line 2577
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyInitializeFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2587
    monitor-exit p0

    return v1

    .line 2579
    :catch_0
    move-exception v0

    .line 2580
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2581
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2569
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getLastNetworkId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2309
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyLastChannelNetworkId"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2327
    monitor-exit p0

    return-object v1

    .line 2319
    :catch_0
    move-exception v0

    .line 2320
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2321
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2309
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getLastServiceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2230
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyLastChannelServiceId"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2248
    monitor-exit p0

    return-object v1

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2242
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2230
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMobileInfoModelName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5263
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5267
    .local v1, "name":Ljava/lang/String;
    :try_start_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5277
    monitor-exit p0

    return-object v1

    .line 5269
    :catch_0
    move-exception v0

    .line 5270
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5271
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5263
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMobileInfoOsVer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5199
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5203
    .local v1, "version":Ljava/lang/String;
    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5213
    monitor-exit p0

    return-object v1

    .line 5205
    :catch_0
    move-exception v0

    .line 5206
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5207
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5199
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMobileInfoSwVer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5231
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5235
    .local v1, "version":Ljava/lang/String;
    :try_start_1
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5245
    monitor-exit p0

    return-object v1

    .line 5237
    :catch_0
    move-exception v0

    .line 5238
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5239
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5231
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getNetworkInfoMcc()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 4964
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4968
    .local v1, "mcc":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 4971
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 4972
    .local v3, "operator":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 4973
    const-string v1, "000"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 4992
    .end local v1    # "mcc":Ljava/lang/String;
    .local v2, "mcc":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 4979
    .end local v2    # "mcc":Ljava/lang/String;
    .restart local v1    # "mcc":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_2
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4980
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_1

    .line 4981
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 4984
    .end local v3    # "operator":Ljava/lang/String;
    .end local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 4985
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4986
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4964
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "mcc":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v3    # "operator":Ljava/lang/String;
    .restart local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v2, v1

    .line 4992
    .end local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "mcc":Ljava/lang/String;
    goto :goto_0
.end method

.method public declared-synchronized getNetworkInfoMnc()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 5010
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5015
    .local v1, "mnc":Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 5018
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 5019
    .local v3, "operator":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 5020
    const-string v1, "000"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 5039
    .end local v1    # "mnc":Ljava/lang/String;
    .local v2, "mnc":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 5026
    .end local v2    # "mnc":Ljava/lang/String;
    .restart local v1    # "mnc":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x3

    :try_start_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5027
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_1

    .line 5028
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 5031
    .end local v3    # "operator":Ljava/lang/String;
    .end local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 5032
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5033
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5010
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "mnc":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1    # "mnc":Ljava/lang/String;
    .restart local v3    # "operator":Ljava/lang/String;
    .restart local v4    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v2, v1

    .line 5039
    .end local v1    # "mnc":Ljava/lang/String;
    .restart local v2    # "mnc":Ljava/lang/String;
    goto :goto_0
.end method

.method public declared-synchronized getNetworkInfoName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5057
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5062
    .local v1, "name":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 5065
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 5066
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 5067
    const-string v1, "NO CARRIER"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5078
    :cond_0
    monitor-exit p0

    return-object v1

    .line 5070
    .end local v2    # "telephony":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 5071
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5072
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5057
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getNetworkInfoType()I
    .locals 10

    .prologue
    .line 5097
    monitor-enter p0

    const/4 v6, -0x1

    .line 5104
    .local v6, "type":I
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5107
    .local v0, "connectManager":Landroid/net/ConnectivityManager;
    const/4 v3, -0x1

    .line 5109
    .local v3, "networkStatus":I
    :try_start_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 5118
    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    .line 5119
    const/4 v6, 0x2

    move v7, v6

    .line 5160
    .end local v6    # "type":I
    .local v7, "type":I
    :goto_0
    monitor-exit p0

    return v7

    .line 5113
    .end local v7    # "type":I
    .restart local v6    # "type":I
    :catch_0
    move-exception v1

    .line 5114
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "Active network is not found."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5115
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5097
    .end local v0    # "connectManager":Landroid/net/ConnectivityManager;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "networkStatus":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 5124
    .restart local v0    # "connectManager":Landroid/net/ConnectivityManager;
    .restart local v3    # "networkStatus":I
    :cond_0
    :try_start_3
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->canComplementMobile(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    .line 5128
    :try_start_4
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 5130
    .local v5, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 5138
    .local v4, "nwtype":I
    const/4 v8, 0x3

    if-eq v4, v8, :cond_1

    const/16 v8, 0x8

    if-eq v4, v8, :cond_1

    const/16 v8, 0x9

    if-eq v4, v8, :cond_1

    const/16 v8, 0xa

    if-ne v4, v8, :cond_2

    .line 5142
    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v7, v6

    .line 5160
    .end local v6    # "type":I
    .restart local v7    # "type":I
    goto :goto_0

    .line 5132
    .end local v4    # "nwtype":I
    .end local v5    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v7    # "type":I
    .restart local v6    # "type":I
    :catch_1
    move-exception v2

    .line 5133
    .local v2, "err":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5134
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v8

    .line 5145
    .end local v2    # "err":Ljava/lang/RuntimeException;
    .restart local v4    # "nwtype":I
    .restart local v5    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_2
    const/16 v8, 0xd

    if-ne v4, v8, :cond_3

    .line 5146
    const/4 v6, 0x1

    goto :goto_1

    .line 5150
    :cond_3
    const-string v8, "Not Support Network Type"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5151
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v8

    .line 5154
    .end local v4    # "nwtype":I
    .end local v5    # "telephony":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v8, "Not complement network status."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5155
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getParentalControl()I
    .locals 5

    .prologue
    .line 3289
    monitor-enter p0

    const/4 v2, 0x0

    .line 3290
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3298
    .local v1, "midresult":I
    :try_start_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getPrntlCtrl()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3309
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_ON:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_0

    .line 3310
    const/4 v2, 0x1

    .line 3329
    :goto_0
    monitor-exit p0

    return v2

    .line 3303
    :catch_0
    move-exception v0

    .line 3304
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3305
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3289
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3313
    :cond_0
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->FLG_OFF:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3314
    const/4 v2, 0x0

    goto :goto_0

    .line 3317
    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 3318
    const-string v3, "getPrntlCtrl() result == -1"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3319
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3323
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrntlCtrl() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3324
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized getParentalControlRate()I
    .locals 4

    .prologue
    .line 3461
    monitor-enter p0

    const/4 v1, 0x0

    .line 3469
    .local v1, "result":I
    :try_start_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->getPrntlRate()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3479
    :try_start_1
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isParentalControlRate(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3481
    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    .line 3482
    const-string v2, "getPrntlRate() result == -1"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3483
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3461
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3474
    :catch_0
    move-exception v0

    .line 3475
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3476
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2

    .line 3486
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrntlRate() result == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3487
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3493
    :cond_1
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized getPfBackgroundId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1634
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyPfBackgroundId"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1647
    monitor-exit p0

    return-object v1

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1641
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1634
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getReceptionServerUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "aInterfaceNo"    # I

    .prologue
    .line 1129
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 1135
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1136
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PF_REGIST_AUTH_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1137
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1138
    :try_start_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PRE_33SEG_COMMON_ID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1139
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1140
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_PF_BACKGROUND_ID_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1129
    .end local v0    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSecureClock()J
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 4627
    const-wide/16 v2, 0x0

    .line 4629
    .local v2, "time":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeDeadResponses()V

    .line 4631
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMBPR_SCLOCK_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 4639
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mSecClock:Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;

    invoke-virtual {v1}, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;->getTime()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4648
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_5

    .line 4649
    :try_start_1
    const-string v1, "getSecureClock Error clocktime[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4652
    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    const-wide/16 v6, -0x3

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 4653
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 4687
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4643
    :catch_0
    move-exception v0

    .line 4644
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4645
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1

    .line 4659
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 4662
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isMmApplicationStartup()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4664
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setStartupMode(I)I

    .line 4667
    :cond_2
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 4670
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4687
    :cond_4
    :goto_0
    monitor-exit v4

    .line 4691
    return-wide v2

    .line 4675
    :cond_5
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v1

    if-ne v5, v1, :cond_4

    .line 4678
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isMmApplicationStartup()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 4683
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setStartupMode(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getSecureClockForCasdrm()J
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 4712
    const-wide/16 v2, 0x0

    .line 4713
    .local v2, "time":J
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMBPR_SCLOCK_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 4720
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mSecClock:Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;

    invoke-virtual {v1}, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;->getTime()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4729
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_3

    .line 4730
    :try_start_1
    const-string v1, "getSecureClock Error clocktime[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4733
    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    const-wide/16 v6, -0x3

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 4734
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 4764
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4724
    :catch_0
    move-exception v0

    .line 4725
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4726
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1

    .line 4740
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 4743
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isMmApplicationStartup()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4745
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setStartupMode(I)I

    .line 4748
    :cond_2
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 4753
    :cond_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v1

    if-ne v5, v1, :cond_4

    .line 4755
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isMmApplicationStartup()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4757
    const-wide/16 v2, -0x1

    .line 4764
    :cond_4
    :goto_0
    monitor-exit v4

    .line 4768
    return-wide v2

    .line 4760
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setStartupMode(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getStartupMode()I
    .locals 6

    .prologue
    .line 4845
    const/4 v1, 0x0

    .line 4846
    .local v1, "result":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    monitor-enter v3

    .line 4849
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v4, "keyStartupMode"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 4854
    :try_start_1
    monitor-exit v3

    .line 4858
    return v1

    .line 4850
    :catch_0
    move-exception v0

    .line 4851
    .local v0, "err":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4852
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2

    .line 4854
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized getSuperImposeDisplay()I
    .locals 5

    .prologue
    .line 1973
    monitor-enter p0

    const/4 v1, 0x0

    .line 1982
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keySuperimposeViewFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1992
    monitor-exit p0

    return v1

    .line 1984
    :catch_0
    move-exception v0

    .line 1985
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1986
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1973
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSuperImposeLanguage()I
    .locals 5

    .prologue
    .line 2060
    monitor-enter p0

    const/4 v1, 0x1

    .line 2069
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keySuperimposeLanguage"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2080
    monitor-exit p0

    return v1

    .line 2072
    :catch_0
    move-exception v0

    .line 2073
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2074
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2060
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getThumbnailSize()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    .locals 5

    .prologue
    .line 2393
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    .local v1, "thumbnail":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyThumbnailWidth"

    const/16 v4, 0x1e0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbWidth:I

    .line 2403
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyThumbnailHeight"

    const/16 v4, 0x10e

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbHeight:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2414
    monitor-exit p0

    return-object v1

    .line 2406
    :catch_0
    move-exception v0

    .line 2407
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2408
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2393
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "thumbnail":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getUimIccId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4929
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4934
    .local v1, "iccid":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 4936
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 4946
    monitor-exit p0

    return-object v1

    .line 4938
    .end local v2    # "telephony":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 4939
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4940
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4929
    .end local v0    # "err":Ljava/lang/RuntimeException;
    .end local v1    # "iccid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getViewLogServerUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1353
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->configrationData:Ljava/util/Map;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->KEY_LOG_SEND_SERVER_URL:Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv$MmbPrConfigrationFile;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    .local v0, "url":Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 1353
    .end local v0    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getViewLogTransmission()I
    .locals 5

    .prologue
    .line 1716
    monitor-enter p0

    const/4 v1, 0x0

    .line 1719
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keySendLogFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1729
    monitor-exit p0

    return v1

    .line 1721
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1723
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1716
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized initUserSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 8
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 3862
    monitor-enter p0

    const/4 v3, 0x0

    .line 3863
    .local v3, "result":I
    const/4 v2, 0x0

    .line 3867
    .local v2, "midresult":I
    :try_start_0
    sget-boolean v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMB_URL_OPTION:Z

    if-eqz v5, :cond_0

    .line 3869
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->loadConfiguration()V

    .line 3873
    :cond_0
    const/4 v5, 0x2

    new-array v4, v5, [Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    .line 3874
    .local v4, "threshold":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3875
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCompletionThreshold(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3876
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCompletionThreshold(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3884
    :cond_1
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->clearSettings()I

    move-result v2

    .line 3890
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3891
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "keyParentalPwInput"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3892
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3895
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3896
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    iget v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSize:I

    const/4 v7, 0x0

    aget-object v7, v4, v7

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRate:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCompletionThreshold(III)I

    .line 3898
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    iget v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSize:I

    const/4 v7, 0x1

    aget-object v7, v4, v7

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRate:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCompletionThreshold(III)I

    .line 3900
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEpgEcgServerUrl()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3909
    :cond_2
    :try_start_1
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v2, v5, :cond_3

    .line 3912
    :try_start_2
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->initServiceSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3913
    const/4 v3, 0x1

    .line 3942
    monitor-exit p0

    return v3

    .line 3903
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "threshold":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    :catch_0
    move-exception v1

    .line 3904
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3905
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3862
    .end local v1    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3914
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "threshold":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    :catch_1
    move-exception v1

    .line 3915
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_4
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3916
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 3920
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_3
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 3921
    const-string v5, "MmbSeMngMw#clearSettings() result == MmbErrCd.ERR_PARAM"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3922
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 3925
    :cond_4
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 3926
    const-string v5, "MmbSeMngMw#clearSettings() result == MmbErrCd.ERR_PDFAILES"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3927
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 3930
    :cond_5
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 3931
    const-string v5, "MmbSeMngMw#clearSettings() result == MmbErrCd.ERR_OTHER"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3932
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 3936
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmbSeMngMw#clearSettings() result == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3937
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public isMmApplicationStartup()Z
    .locals 1

    .prologue
    .line 4911
    sget-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMmAppStartupStatus:Z

    return v0
.end method

.method public declared-synchronized isMmbiMode()Z
    .locals 4

    .prologue
    .line 5782
    monitor-enter p0

    const/4 v0, 0x0

    .line 5785
    .local v0, "flag":Z
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v2, "keyPreferenceMmbiMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 5789
    monitor-exit p0

    return v0

    .line 5782
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isParentPassword()I
    .locals 5

    .prologue
    .line 3596
    monitor-enter p0

    const/4 v1, 0x0

    .line 3601
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "keyParentalPwInput"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3611
    monitor-exit p0

    return v1

    .line 3603
    :catch_0
    move-exception v0

    .line 3604
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3605
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3596
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioSound(I)I
    .locals 5
    .param p1, "aAudioState"    # I

    .prologue
    .line 2105
    monitor-enter p0

    const/4 v2, 0x0

    .line 2112
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isAudioState(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2113
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2114
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2119
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2120
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyAudioState"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2122
    const/4 v2, 0x1

    .line 2132
    monitor-exit p0

    return v2

    .line 2124
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 2125
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2126
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setAutoAcquireLisence(I)I
    .locals 5
    .param p1, "aAutoAcquireLisence"    # I

    .prologue
    .line 3077
    monitor-enter p0

    const/4 v2, 0x0

    .line 3078
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3081
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3082
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3077
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3091
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setAutoLns(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 3103
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3104
    const/4 v2, 0x1

    .line 3129
    monitor-exit p0

    return v2

    .line 3096
    :catch_0
    move-exception v0

    .line 3097
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3098
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3107
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 3108
    const-string v3, "setAutoLns() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3109
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 3112
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 3113
    const-string v3, "setAutoLns() result == MmbErrCd.ERR_PDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3114
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3117
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 3118
    const-string v3, "setAutoLns() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3119
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3123
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoLns() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3124
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setAutoCompletion(I)I
    .locals 5
    .param p1, "aAutoCompletion"    # I

    .prologue
    .line 2931
    monitor-enter p0

    const/4 v2, 0x0

    .line 2932
    .local v2, "result":I
    const/4 v1, 0x0

    .line 2935
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    if-eq v3, p1, :cond_0

    .line 2937
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2931
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2946
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setAutoFCCmpl(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2957
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 2958
    const/4 v2, 0x1

    .line 2983
    monitor-exit p0

    return v2

    .line 2951
    :catch_0
    move-exception v0

    .line 2952
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2953
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 2961
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 2962
    const-string v3, "setAutoFCCmpl() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2963
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 2966
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 2967
    const-string v3, "setAutoFCCmpl() result == MmbErrCd.ERR_UPDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2968
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 2971
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 2972
    const-string v3, "setAutoFCCmpl() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2973
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 2977
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoFCCmpl() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2978
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setAutoReception(I)I
    .locals 5
    .param p1, "aAutoReception"    # I

    .prologue
    .line 2615
    monitor-enter p0

    const/4 v2, 0x0

    .line 2616
    .local v2, "result":I
    const/4 v1, -0x1

    .line 2619
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2620
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2615
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2628
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_ALL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2639
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 2640
    const/4 v2, 0x1

    .line 2667
    monitor-exit p0

    return v2

    .line 2634
    :catch_0
    move-exception v0

    .line 2635
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2636
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 2643
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 2644
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2645
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 2648
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 2649
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_UPDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2650
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 2653
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 2654
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2655
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 2659
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoRcv() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2660
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setAutoReceptionForAutoReceive(I)I
    .locals 5
    .param p1, "aAutoReception"    # I

    .prologue
    .line 5958
    monitor-enter p0

    const/4 v2, 0x0

    .line 5959
    .local v2, "result":I
    const/4 v1, -0x1

    .line 5962
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5963
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5958
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5971
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_AUTO:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 5982
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 5983
    const/4 v2, 0x1

    .line 6010
    monitor-exit p0

    return v2

    .line 5977
    :catch_0
    move-exception v0

    .line 5978
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5979
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 5986
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 5987
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5988
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 5991
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 5992
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_UPDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5993
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 5996
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 5997
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5998
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 6002
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoRcv() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6003
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setAutoReceptionForForceReceive(I)I
    .locals 5
    .param p1, "aAutoReception"    # I

    .prologue
    .line 6100
    monitor-enter p0

    const/4 v2, 0x0

    .line 6101
    .local v2, "result":I
    const/4 v1, -0x1

    .line 6104
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6105
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6100
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6113
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_FORCE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 6124
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 6125
    const/4 v2, 0x1

    .line 6152
    monitor-exit p0

    return v2

    .line 6119
    :catch_0
    move-exception v0

    .line 6120
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6121
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 6128
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 6129
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6130
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 6133
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 6134
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_UPDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6135
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 6138
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 6139
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6140
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 6144
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoRcv() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6145
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setAutoReceptionForRecommend(I)I
    .locals 5
    .param p1, "aAutoReception"    # I

    .prologue
    .line 5817
    monitor-enter p0

    const/4 v2, 0x0

    .line 5818
    .local v2, "result":I
    const/4 v1, -0x1

    .line 5821
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5822
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5817
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5830
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_RECOMMEND:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v3, v4, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 5841
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 5842
    const/4 v2, 0x1

    .line 5869
    monitor-exit p0

    return v2

    .line 5836
    :catch_0
    move-exception v0

    .line 5837
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5838
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 5845
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 5846
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5847
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 5850
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 5851
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_UPDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5852
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 5855
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 5856
    const-string v3, "setAutoRcv() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5857
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 5861
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoRcv() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5862
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setAutoRecommendInfo(I)I
    .locals 5
    .param p1, "aFlag"    # I

    .prologue
    .line 4116
    monitor-enter p0

    const/4 v2, 0x0

    .line 4119
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4120
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4121
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4116
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4127
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4128
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyAutoRecommendFlag"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4130
    const/4 v2, 0x1

    .line 4140
    monitor-exit p0

    return v2

    .line 4132
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4133
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4134
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setBmlBrowser(I)I
    .locals 5
    .param p1, "aDisplay"    # I

    .prologue
    .line 4554
    monitor-enter p0

    const/4 v2, 0x0

    .line 4557
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4558
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4559
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4554
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4564
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4565
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyBml"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4566
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4567
    const/4 v2, 0x1

    .line 4576
    monitor-exit p0

    return v2

    .line 4569
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4570
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4571
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setCaptionDisplay(I)I
    .locals 5
    .param p1, "aCaptionDisplay"    # I

    .prologue
    .line 1754
    monitor-enter p0

    const/4 v2, 0x0

    .line 1761
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isCaptionSuperValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1762
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1763
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1768
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1769
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "KeyCaptionViewFlag"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1770
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1771
    const/4 v2, 0x1

    .line 1781
    monitor-exit p0

    return v2

    .line 1773
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 1774
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1775
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setCaptionLanguage(I)I
    .locals 5
    .param p1, "aCaptionLanguage"    # I

    .prologue
    .line 1841
    monitor-enter p0

    const/4 v2, 0x0

    .line 1848
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isSuperImposeLanguageValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1849
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1850
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1855
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1856
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyCaptionLanguage"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1857
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1858
    const/4 v2, 0x1

    .line 1868
    monitor-exit p0

    return v2

    .line 1860
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 1861
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1862
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setCompletionId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "aIdentification"    # Ljava/lang/String;
    .param p2, "aCpId"    # Ljava/lang/String;

    .prologue
    .line 1402
    monitor-enter p0

    const/4 v3, 0x0

    .line 1409
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1410
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 1411
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1412
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1415
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x12

    if-le v4, v5, :cond_2

    .line 1416
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 1417
    .restart local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1418
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;

    move-result-object v0

    .line 1425
    .local v0, "database":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;->setCompletionId(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1426
    const/4 v3, 0x1

    .line 1436
    monitor-exit p0

    return v3

    .line 1428
    .end local v0    # "database":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceDatabaseControlSv;
    :catch_0
    move-exception v1

    .line 1429
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    .line 1430
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1431
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setCompletionThreshold(III)I
    .locals 5
    .param p1, "aNetworkType"    # I
    .param p2, "aThresholdsize"    # I
    .param p3, "aThresholdrate"    # I

    .prologue
    .line 3704
    monitor-enter p0

    const/4 v2, 0x0

    .line 3705
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3712
    .local v1, "midresult":I
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 3714
    :try_start_0
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3715
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3704
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3718
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isNetworkTypeValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3719
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3720
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 3721
    :cond_1
    if-ltz p2, :cond_2

    const/16 v3, 0x1000

    if-gt p2, v3, :cond_2

    if-ltz p3, :cond_2

    const/16 v3, 0x64

    if-le p3, v3, :cond_3

    .line 3723
    :cond_2
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3724
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3733
    :cond_3
    :try_start_2
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1, p2, p3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setFCCmplLmt(III)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 3744
    :try_start_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_4

    .line 3745
    const/4 v2, 0x1

    .line 3770
    monitor-exit p0

    return v2

    .line 3738
    :catch_0
    move-exception v0

    .line 3739
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3740
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3748
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_4
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 3749
    const-string v3, "setPrntlPwd() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3750
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 3753
    :cond_5
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 3754
    const-string v3, "setPrntlPwd() result == MmbErrCd.ERR_PDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3755
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3758
    :cond_6
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 3759
    const-string v3, "setPrntlPwd() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3760
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3764
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrntlPwd() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3765
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized setContentSaveDevice(II)I
    .locals 6
    .param p1, "aContentType"    # I
    .param p2, "aSaveDevice"    # I

    .prologue
    .line 6249
    monitor-enter p0

    const/4 v3, 0x0

    .line 6250
    .local v3, "seContentType":Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;
    packed-switch p1, :pswitch_data_0

    .line 6258
    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 6259
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6260
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6249
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 6252
    :pswitch_0
    :try_start_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    .line 6264
    :goto_0
    const/4 v4, 0x0

    .line 6265
    .local v4, "seStorageType":Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    packed-switch p2, :pswitch_data_1

    .line 6273
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 6274
    .restart local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6275
    throw v0

    .line 6255
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v4    # "seStorageType":Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    :pswitch_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->CONTENT_RECORD:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    .line 6256
    goto :goto_0

    .line 6267
    .restart local v4    # "seStorageType":Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    :pswitch_2
    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_INTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6278
    :goto_1
    const/4 v2, 0x0

    .line 6283
    .local v2, "result":I
    :try_start_2
    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setContentSaveDevice(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 6297
    monitor-exit p0

    return v2

    .line 6270
    .end local v2    # "result":I
    :pswitch_3
    :try_start_3
    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_EXTERNAL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .line 6271
    goto :goto_1

    .line 6285
    .restart local v2    # "result":I
    :catch_0
    move-exception v1

    .line 6286
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6287
    throw v1

    .line 6289
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 6290
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6291
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 6265
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setEntityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "aEntityId"    # Ljava/lang/String;
    .param p2, "aEntityName"    # Ljava/lang/String;
    .param p3, "aPackage"    # Ljava/lang/String;

    .prologue
    .line 3974
    monitor-enter p0

    const/4 v3, 0x0

    .line 3975
    .local v3, "result":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3978
    .local v2, "id":I
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isValidEntityId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3979
    const-string v4, "Parametor Error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3980
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3974
    .end local v2    # "id":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3985
    .restart local v2    # "id":I
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3987
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch v2, :pswitch_data_0

    .line 4027
    :goto_0
    monitor-exit p0

    return v3

    .line 3989
    :pswitch_0
    :try_start_2
    const-string v4, "keyEntityId1"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3990
    const-string v4, "keyEntityName1"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3991
    const-string v4, "keyEntityPackage1"

    invoke-interface {v0, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3992
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3993
    const/4 v3, 0x1

    .line 3994
    goto :goto_0

    .line 3996
    :pswitch_1
    const-string v4, "keyEntityId2"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3997
    const-string v4, "keyEntityName2"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3998
    const-string v4, "keyEntityPackage2"

    invoke-interface {v0, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3999
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4000
    const/4 v3, 0x1

    .line 4001
    goto :goto_0

    .line 4003
    :pswitch_2
    const-string v4, "keyEntityId3"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4004
    const-string v4, "keyEntityName3"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4005
    const-string v4, "keyEntityPackage3"

    invoke-interface {v0, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4006
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4007
    const/4 v3, 0x1

    .line 4008
    goto :goto_0

    .line 4010
    :pswitch_3
    const-string v4, "keyEntityId4"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4011
    const-string v4, "keyEntityName4"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4012
    const-string v4, "keyEntityPackage4"

    invoke-interface {v0, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4013
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4014
    const/4 v3, 0x1

    .line 4015
    goto :goto_0

    .line 4019
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4020
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4021
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3987
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setEpgUpdateTime(I)I
    .locals 7
    .param p1, "aEpgUpdateTime"    # I

    .prologue
    .line 2758
    monitor-enter p0

    const/4 v3, 0x0

    .line 2759
    .local v3, "result":I
    const/4 v2, 0x0

    .line 2762
    .local v2, "midresult":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForForceReceive()I

    move-result v5

    if-nez v5, :cond_0

    .line 2763
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    .line 2764
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2765
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2758
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 2770
    :cond_0
    :try_start_1
    const-string v4, ""

    .line 2773
    .local v4, "time":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2792
    :goto_0
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v5, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setUpdPrgTime(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2804
    :try_start_2
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 2811
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    .line 2812
    .local v1, "meta":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setMmbSiInfSvSetSchedule()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2817
    const/4 v3, 0x1

    .line 2842
    monitor-exit p0

    return v3

    .line 2775
    .end local v1    # "meta":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :pswitch_0
    :try_start_3
    const-string v4, "0200"

    .line 2776
    goto :goto_0

    .line 2778
    :pswitch_1
    const-string v4, "0800"

    .line 2779
    goto :goto_0

    .line 2781
    :pswitch_2
    const-string v4, "1400"

    .line 2782
    goto :goto_0

    .line 2784
    :pswitch_3
    const-string v4, "2000"
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2785
    goto :goto_0

    .line 2797
    .end local v4    # "time":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2798
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2799
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 2820
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "time":Ljava/lang/String;
    :cond_1
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 2821
    const-string v5, "setUpdPrgTime() result == MmbErrCd.ERR_PARAM"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2822
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 2825
    :cond_2
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2826
    const-string v5, "setUpdPrgTime() result == MmbErrCd.ERR_UPDFAILES"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2827
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 2830
    :cond_3
    sget-object v5, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v5}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 2831
    const-string v5, "setUpdPrgTime() result == MmbErrCd.ERR_OTHER"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2832
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 2836
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUpdPrgTime() result == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2837
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2773
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setFcCookieDelete(I)I
    .locals 5
    .param p1, "aFlag"    # I

    .prologue
    .line 4468
    monitor-enter p0

    const/4 v2, 0x0

    .line 4471
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4472
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4473
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4468
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4479
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4480
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyCookieDelete"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4481
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4482
    const/4 v2, 0x1

    .line 4492
    monitor-exit p0

    return v2

    .line 4484
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4485
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4486
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setFcCookieSetting(I)I
    .locals 5
    .param p1, "aFlag"    # I

    .prologue
    .line 4203
    monitor-enter p0

    const/4 v2, 0x0

    .line 4206
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4207
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4208
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4203
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4214
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4215
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyBrowserCookie"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4217
    const/4 v2, 0x1

    .line 4227
    monitor-exit p0

    return v2

    .line 4219
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4220
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4221
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setFcJavaScriptSetting(I)I
    .locals 5
    .param p1, "aFlag"    # I

    .prologue
    .line 4379
    monitor-enter p0

    const/4 v2, 0x0

    .line 4382
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4383
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4384
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4379
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4390
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4391
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyBrowserJavaScript"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4393
    const/4 v2, 0x1

    .line 4403
    monitor-exit p0

    return v2

    .line 4395
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4396
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4397
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setFcRefererSetting(I)I
    .locals 5
    .param p1, "aFlag"    # I

    .prologue
    .line 4291
    monitor-enter p0

    const/4 v2, 0x0

    .line 4294
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4295
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4296
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4291
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4302
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4303
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyBrowserReferer"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4305
    const/4 v2, 0x1

    .line 4315
    monitor-exit p0

    return v2

    .line 4307
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4308
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4309
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setForeignFlag(I)I
    .locals 5
    .param p1, "aForeignFlag"    # I

    .prologue
    .line 2439
    const/4 v2, 0x0

    .line 2446
    .local v2, "result":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isForeignFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2447
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2448
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 2453
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2454
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyForeignFlag"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    const/4 v2, 0x1

    .line 2466
    return v2

    .line 2458
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 2459
    .local v1, "err":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2460
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
.end method

.method public declared-synchronized setInitializeData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 12
    .param p1, "aInitData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v11, 0x1

    .line 5553
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getCaptionInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;

    move-result-object v4

    .line 5554
    .local v4, "caption":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getParentalInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;

    move-result-object v5

    .line 5555
    .local v5, "parental":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getComplementInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    move-result-object v6

    .line 5556
    .local v6, "threshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getAutoCompletion()I

    move-result v0

    .line 5557
    .local v0, "autoCompletion":I
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getAutoFuncInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;

    move-result-object v1

    .line 5558
    .local v1, "autofunc":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getThumbnailSize()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    move-result-object v7

    .line 5559
    .local v7, "thumbnail":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getFcBrowserInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;

    move-result-object v3

    .line 5560
    .local v3, "browser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;->getBmlBrowser()I

    move-result v2

    .line 5563
    .local v2, "bmlBrowser":I
    iget v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbCaption:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCaptionDisplay(I)I

    .line 5565
    iget v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbCaptionLanguage:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCaptionLanguage(I)I

    .line 5567
    iget v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbSuperimpose:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setSuperImposeDisplay(I)I

    .line 5569
    iget v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;->mmbSuperimposeLanguage:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setSuperImposeLanguage(I)I

    .line 5571
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5573
    const/4 v8, 0x0

    iget v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSize:I

    iget v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRate:I

    invoke-virtual {p0, v8, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCompletionThreshold(III)I

    .line 5575
    const/4 v8, 0x1

    iget v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSizeLte:I

    iget v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRateLte:I

    invoke-virtual {p0, v8, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCompletionThreshold(III)I

    .line 5580
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoCompletion(I)I

    .line 5583
    iget v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;->mmbParentalCtrl:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setParentalControl(I)I

    .line 5585
    iget v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;->mmbParentalRate:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setParentalControlRate(I)I

    .line 5587
    iget-object v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;->mmbParentalPassword:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 5588
    iget-object v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;->mmbParentalPassword:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setParentPassword(Ljava/lang/String;)I

    .line 5592
    :cond_1
    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForRecommend:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForRecommend(I)I

    .line 5594
    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForAutoReceive:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForAutoReceive(I)I

    .line 5596
    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForForceReceive:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoReceptionForForceReceive(I)I

    .line 5598
    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoLicence:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setAutoAcquireLisence(I)I

    .line 5600
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5602
    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoSendLog:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setViewLogTransmission(I)I

    .line 5605
    :cond_2
    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbAutoForForceReceive:I

    if-ne v8, v11, :cond_3

    .line 5606
    iget v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;->mmbEpgUpdateTime:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEpgUpdateTime(I)I

    .line 5610
    :cond_3
    iget v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbWidth:I

    iget v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;->mmbHeight:I

    invoke-virtual {p0, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setThumbnailSize(II)I

    .line 5613
    iget v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;->mmbCookie:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setFcCookieSetting(I)I

    .line 5615
    iget v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;->mmbReferer:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setFcRefererSetting(I)I

    .line 5617
    iget v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;->mmbJavaScript:I

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setFcJavaScriptSetting(I)I

    .line 5620
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setBmlBrowser(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5625
    monitor-exit p0

    return-void

    .line 5553
    .end local v0    # "autoCompletion":I
    .end local v1    # "autofunc":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceAutoFunctionSv;
    .end local v2    # "bmlBrowser":I
    .end local v3    # "browser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceFcBrowserSv;
    .end local v4    # "caption":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceCaptionSv;
    .end local v5    # "parental":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceParentalCtrlSv;
    .end local v6    # "threshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    .end local v7    # "thumbnail":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setInitializedFlag(I)I
    .locals 5
    .param p1, "aInitializedFlag"    # I

    .prologue
    .line 2525
    monitor-enter p0

    const/4 v2, 0x0

    .line 2532
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isInitializedFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2533
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2534
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2525
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2539
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2540
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyInitializeFlag"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2541
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2542
    const/4 v2, 0x1

    .line 2552
    monitor-exit p0

    return v2

    .line 2544
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 2545
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2546
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setLastNetworkId(Ljava/lang/String;)I
    .locals 5
    .param p1, "aNetworkId"    # Ljava/lang/String;

    .prologue
    .line 2268
    monitor-enter p0

    const/4 v2, 0x0

    .line 2275
    .local v2, "result":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2276
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2277
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2268
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2282
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2283
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyLastChannelNetworkId"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2285
    const/4 v2, 0x1

    .line 2295
    monitor-exit p0

    return v2

    .line 2287
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 2288
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2289
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setLastServiceId(Ljava/lang/String;)I
    .locals 5
    .param p1, "aServiceId"    # Ljava/lang/String;

    .prologue
    .line 2189
    monitor-enter p0

    const/4 v2, 0x0

    .line 2196
    .local v2, "result":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2197
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2198
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2203
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyLastChannelServiceId"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2206
    const/4 v2, 0x1

    .line 2216
    monitor-exit p0

    return v2

    .line 2208
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 2209
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2210
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setMmApplicationStartup(Z)V
    .locals 0
    .param p1, "aStatus"    # Z

    .prologue
    .line 4883
    sput-boolean p1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMmAppStartupStatus:Z

    .line 4887
    return-void
.end method

.method public declared-synchronized setParentPassword(Ljava/lang/String;)I
    .locals 6
    .param p1, "aParentPassword"    # Ljava/lang/String;

    .prologue
    .line 3517
    monitor-enter p0

    const/4 v3, 0x0

    .line 3521
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 3522
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3517
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3531
    :cond_0
    :try_start_1
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v4, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrntlPwd(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 3543
    .local v2, "midresult":I
    :try_start_2
    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 3544
    const/4 v3, 0x1

    .line 3547
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3548
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "keyParentalPwInput"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3575
    monitor-exit p0

    return v3

    .line 3536
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "midresult":I
    :catch_0
    move-exception v1

    .line 3537
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3538
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4

    .line 3553
    .end local v1    # "err":Ljava/lang/RuntimeException;
    .restart local v2    # "midresult":I
    :cond_1
    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 3554
    const-string v4, "setPrntlPwd() result == MmbErrCd.ERR_PARAM"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3555
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 3558
    :cond_2
    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 3559
    const-string v4, "setPrntlPwd() result == MmbErrCd.ERR_PDFAILES"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3560
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4

    .line 3563
    :cond_3
    sget-object v4, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 3564
    const-string v4, "setPrntlPwd() result == MmbErrCd.ERR_OTHER"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3565
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4

    .line 3569
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPrntlPwd() result == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3570
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setParentalControl(I)I
    .locals 5
    .param p1, "aParentalControl"    # I

    .prologue
    .line 3217
    monitor-enter p0

    const/4 v2, 0x0

    .line 3218
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3221
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3222
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3217
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3231
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrntlCtrl(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 3243
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3244
    const/4 v2, 0x1

    .line 3269
    monitor-exit p0

    return v2

    .line 3236
    :catch_0
    move-exception v0

    .line 3237
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3238
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3247
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 3248
    const-string v3, "setPrntlCtrl() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3249
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 3252
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 3253
    const-string v3, "setPrntlCtrl() result == MmbErrCd.ERR_PDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3254
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3257
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 3258
    const-string v3, "setPrntlCtrl() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3259
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3263
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrntlCtrl() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3264
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setParentalControlRate(I)I
    .locals 5
    .param p1, "aParentalControlRate"    # I

    .prologue
    .line 3373
    monitor-enter p0

    const/4 v2, 0x0

    .line 3374
    .local v2, "result":I
    const/4 v1, 0x0

    .line 3377
    .local v1, "midresult":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isParentalControlRate(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3378
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3387
    :cond_0
    :try_start_1
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-virtual {v3, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->setPrntlRate(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 3399
    :try_start_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_NONE:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-ne v1, v3, :cond_1

    .line 3400
    const/4 v2, 0x1

    .line 3425
    monitor-exit p0

    return v2

    .line 3392
    :catch_0
    move-exception v0

    .line 3393
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3394
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3403
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 3404
    const-string v3, "setPrntlCtrl() result == MmbErrCd.ERR_PARAM"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3405
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 3408
    :cond_2
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_UPDFAILES:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 3409
    const-string v3, "setPrntlCtrl() result == MmbErrCd.ERR_PDFAILES"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3410
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3413
    :cond_3
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_OTHER:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 3414
    const-string v3, "setPrntlCtrl() result == MmbErrCd.ERR_OTHER"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3415
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 3419
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrntlCtrl() result == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3420
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized setPfBackgroundId(Ljava/lang/String;)I
    .locals 5
    .param p1, "aPfId"    # Ljava/lang/String;

    .prologue
    .line 1594
    monitor-enter p0

    const/4 v2, 0x0

    .line 1597
    .local v2, "result":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    .line 1598
    :cond_0
    const-string v3, "pfid is empty"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1604
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1605
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyPfBackgroundId"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1606
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1607
    const/4 v2, 0x1

    .line 1616
    monitor-exit p0

    return v2

    .line 1609
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 1610
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1611
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setServerUrl(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aServerData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 5649
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->prepareConfiguration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5652
    const/4 v0, 0x0

    .line 5653
    .local v0, "IF_NUM_1":I
    const/4 v1, 0x1

    .line 5654
    .local v1, "IF_NUM_2":I
    const/4 v2, 0x2

    .line 5655
    .local v2, "IF_NUM_3":I
    :try_start_1
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5658
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerUrl:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5659
    const/4 v6, 0x0

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerUrl:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEpgEcgServerUrl(ILjava/lang/String;)V

    .line 5661
    :cond_0
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerCrid:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5662
    const/4 v6, 0x1

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerCrid:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEpgEcgServerUrl(ILjava/lang/String;)V

    .line 5664
    :cond_1
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerKeywordUrl:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5665
    const/4 v6, 0x2

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbMetaServerKeywordUrl:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEpgEcgServerUrl(ILjava/lang/String;)V

    .line 5671
    :cond_2
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfUserRegistUrl:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 5672
    const/4 v6, 0x0

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfUserRegistUrl:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setReceptionServerUrl(ILjava/lang/String;)V

    .line 5675
    :cond_3
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmb33SegCommonIdUrl:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 5676
    const/4 v6, 0x1

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmb33SegCommonIdUrl:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setReceptionServerUrl(ILjava/lang/String;)V

    .line 5679
    :cond_4
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfBackgroundIdUrl:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 5680
    const/4 v6, 0x2

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbPfBackgroundIdUrl:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setReceptionServerUrl(ILjava/lang/String;)V

    .line 5683
    :cond_5
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5685
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbSendViewLogServerUrl:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 5686
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbSendViewLogServerUrl:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setViewLogServerUrl(Ljava/lang/String;)V

    .line 5689
    :cond_6
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbRecomendServerUrl:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 5690
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbRecomendServerUrl:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCridServerUrl(Ljava/lang/String;)V

    .line 5696
    :cond_7
    const/4 v4, 0x1

    .local v4, "entityid":I
    const/4 v3, 0x0

    .local v3, "cnt":I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_9

    .line 5697
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    aget-object v6, v6, v3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 5698
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;->mmbCasServerUrl:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-direct {p0, v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setCasDrmServerUrl(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5696
    :cond_8
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5702
    .end local v3    # "cnt":I
    .end local v4    # "entityid":I
    :catch_0
    move-exception v5

    .line 5703
    .local v5, "err":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5704
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5649
    .end local v0    # "IF_NUM_1":I
    .end local v1    # "IF_NUM_2":I
    .end local v2    # "IF_NUM_3":I
    .end local v5    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 5708
    .restart local v0    # "IF_NUM_1":I
    .restart local v1    # "IF_NUM_2":I
    .restart local v2    # "IF_NUM_3":I
    .restart local v3    # "cnt":I
    .restart local v4    # "entityid":I
    :cond_9
    :try_start_3
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->MMBPR_LOCK:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5711
    :try_start_4
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->saveMapConfigration()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5721
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5734
    monitor-exit p0

    return-void

    .line 5713
    :catch_1
    move-exception v5

    .line 5714
    .local v5, "err":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5715
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v6

    .line 5721
    .end local v5    # "err":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5717
    :catch_2
    move-exception v5

    .line 5718
    .local v5, "err":Ljava/io/IOException;
    :try_start_8
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5719
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public setStartupMode(I)I
    .locals 7
    .param p1, "aStartupMode"    # I

    .prologue
    .line 4799
    const/4 v2, 0x0

    .line 4802
    .local v2, "result":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isStartupModeValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4803
    const-string v3, "Parametor Error [%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4804
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 4806
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    monitor-enter v4

    .line 4809
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4810
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyStartupMode"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4811
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4812
    const/4 v2, 0x1

    .line 4817
    :try_start_1
    monitor-exit v4

    .line 4821
    return v2

    .line 4813
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 4814
    .local v1, "err":Ljava/lang/RuntimeException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4815
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v5, "SharedPreference edit Error [KEY_STARTUP_MODE]"

    invoke-direct {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4817
    .end local v1    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public declared-synchronized setSuperImposeDisplay(I)I
    .locals 5
    .param p1, "aSuperImposeDisplay"    # I

    .prologue
    .line 1929
    monitor-enter p0

    const/4 v2, 0x0

    .line 1936
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isCaptionSuperValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1937
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1938
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1943
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1944
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keySuperimposeViewFlag"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1945
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1946
    const/4 v2, 0x1

    .line 1956
    monitor-exit p0

    return v2

    .line 1948
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 1949
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1950
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setSuperImposeLanguage(I)I
    .locals 5
    .param p1, "aSuperImposeLanguage"    # I

    .prologue
    .line 2016
    monitor-enter p0

    const/4 v2, 0x0

    .line 2023
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isSuperImposeLanguageValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2024
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2025
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2016
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2030
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2031
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keySuperimposeLanguage"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2032
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2033
    const/4 v2, 0x1

    .line 2043
    monitor-exit p0

    return v2

    .line 2035
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 2036
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2037
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setThumbnailSize(II)I
    .locals 5
    .param p1, "aWidth"    # I
    .param p2, "aHeight"    # I

    .prologue
    .line 2352
    monitor-enter p0

    const/4 v2, 0x0

    .line 2359
    .local v2, "result":I
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 2360
    :cond_0
    :try_start_0
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2361
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2366
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2367
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyThumbnailWidth"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2368
    const-string v3, "keyThumbnailHeight"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2370
    const/4 v2, 0x1

    .line 2380
    monitor-exit p0

    return v2

    .line 2372
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 2373
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2374
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setViewLogTransmission(I)I
    .locals 5
    .param p1, "aViewLogTransmission"    # I

    .prologue
    .line 1674
    monitor-enter p0

    const/4 v2, 0x0

    .line 1677
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isFlagValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1678
    const-string v3, "Parametor Error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1674
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1684
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1685
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keySendLogFlag"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1686
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    const/4 v2, 0x1

    .line 1696
    monitor-exit p0

    return v2

    .line 1689
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 1690
    .local v1, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1691
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized setupModule()V
    .locals 6

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->setupModule()V

    .line 577
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    const-string v4, "keyPreferenceSetupFlag"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 578
    .local v2, "flag":Z
    if-nez v2, :cond_0

    .line 579
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 580
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "keyPreferenceSetupFlag"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setEpgEcgServerUrl()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    monitor-exit p0

    return-void

    .line 586
    :catch_0
    move-exception v1

    .line 587
    .local v1, "err":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Get SecureClock Error [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 574
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "flag":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized startupModule()V
    .locals 4

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->startupModule()V

    .line 500
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    const-string v2, "mmbPrPreference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mDataPath:Ljava/lang/String;

    .line 508
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->prepareConfiguration()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :try_start_2
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    if-nez v1, :cond_0

    .line 523
    new-instance v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    invoke-direct {v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;-><init>()V

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMiddle:Lmmb/android/MmbSeMngMw/MmbSeMngMw;

    .line 526
    :cond_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mSecClock:Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;

    if-nez v1, :cond_1

    .line 527
    new-instance v1, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;

    invoke-direct {v1}, Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;-><init>()V

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mSecClock:Lmmb/android/MmbScSecClkMw/MmbScSecClkMw;

    .line 530
    :cond_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    if-nez v1, :cond_2

    .line 531
    new-instance v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    sput-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    :cond_2
    monitor-exit p0

    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 519
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPrPreferenceModuleSv [mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->mPreference:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
