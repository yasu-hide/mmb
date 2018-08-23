.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;
.super Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.source "MmbCaCasDrmMwCasAuthenticateProcess.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;
    }
.end annotation


# static fields
.field private static final CNONCE_AVAIL_LENGTH:I = 0x10

.field private static final CNONCE_OFFSET:I = 0xd

.field private static final DUMMY_SIZE:I = 0x10

.field private static final HASH_INPUT_LENGTH:I = 0x30

.field private static final HASH_OUTPUT_LENGTH:I = 0x10

.field private static final NONCE_AVAIL_LENGTH:I = 0x10

.field private static final NONCE_OFFSET:I = 0xa

.field private static final PHASE_AUTH:I = 0x1

.field private static final PHASE_INIT:I = 0x0

.field private static final PHASE_RESULT:I = 0x2

.field private static final SEND_RECEIVE_SIZE:I = 0x20

.field private static final TIMEOUT_RESPONSE:I = 0x4e20

.field private static final mClientId:[B


# instance fields
.field private mCasResultData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

.field private mCnonce:[B

.field private mNonce:[B

.field private mPhase:I

.field private mRandom:Ljava/util/Random;

.field private mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mClientId:[B

    return-void

    :array_0
    .array-data 1
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
    .end array-data
.end method

.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    .param p2, "aSender"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_0
    iput-object p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    .line 72
    const/4 v0, 0x0

    iput-byte v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mType:B

    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mRandom:Ljava/util/Random;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;)B
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    .prologue
    .line 28
    iget-byte v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mType:B

    return v0
.end method

.method static synthetic access$100(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;

    .prologue
    .line 28
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    return v0
.end method


# virtual methods
.method createAuthenticateData(ILjava/lang/Object;)[B
    .locals 11
    .param p1, "aPhase"    # I
    .param p2, "aData"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v9, 0x0

    const/16 v10, 0x10

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-array v6, v7, [B

    iput-object v6, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mCnonce:[B

    .line 189
    iget-object v6, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mRandom:Ljava/util/Random;

    iget-object v7, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mCnonce:[B

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextBytes([B)V

    .line 190
    iget-object v5, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mCnonce:[B

    .line 213
    .end local p2    # "aData":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 191
    .restart local p2    # "aData":Ljava/lang/Object;
    :cond_0
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 192
    check-cast p2, [B

    .end local p2    # "aData":Ljava/lang/Object;
    check-cast p2, [B

    iput-object p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mNonce:[B

    .line 193
    const/16 v7, 0x30

    new-array v3, v7, [B

    .line 194
    .local v3, "hashinput":[B
    iget-object v7, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mCnonce:[B

    const/16 v8, 0xd

    invoke-static {v7, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 195
    sget-object v7, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mClientId:[B

    sget-object v8, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mClientId:[B

    array-length v8, v8

    invoke-static {v7, v9, v3, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 196
    iget-object v7, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mNonce:[B

    const/16 v8, 0xa

    sget-object v9, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mClientId:[B

    array-length v9, v9

    add-int/lit8 v9, v9, 0x10

    invoke-static {v7, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 200
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 201
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 203
    .local v2, "hash":[B
    const/16 v7, 0x20

    new-array v5, v7, [B

    .line 204
    .local v5, "responseData":[B
    const/16 v7, 0x10

    new-array v0, v7, [B

    .line 205
    .local v0, "dummyData":[B
    iget-object v7, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mRandom:Ljava/util/Random;

    invoke-virtual {v7, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 206
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v0, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 207
    const/4 v7, 0x0

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-static {v2, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v0    # "dummyData":[B
    .end local v2    # "hash":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "responseData":[B
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v5, v6

    .line 210
    goto :goto_0

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "hashinput":[B
    .restart local p2    # "aData":Ljava/lang/Object;
    :cond_1
    move-object v5, v6

    .line 213
    goto :goto_0
.end method

.method public getAuthenticateData()[B
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->createAuthenticateData(ILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCasResultData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mCasResultData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    return-object v0
.end method

.method getNextChild(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 6
    .param p1, "aChildProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    const-wide/16 v4, 0x4e20

    const/4 v2, 0x2

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    instance-of v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    .line 134
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;

    .end local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;

    invoke-direct {v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)V

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    iget-byte v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mType:B

    invoke-direct {v0, p0, v1, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V

    .line 135
    .restart local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    invoke-interface {v0, p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->startTimer(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;J)V

    .line 153
    :goto_0
    return-object v0

    .line 136
    :cond_0
    instance-of v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;

    if-eqz v1, :cond_3

    .line 137
    iget v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    .line 138
    iget v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    if-ge v1, v2, :cond_1

    .line 139
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;

    .end local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;

    invoke-direct {v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)V

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    iget-byte v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mType:B

    invoke-direct {v0, p0, v1, v2, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess$ResponseProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V

    .line 145
    .restart local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :goto_1
    invoke-interface {v0, p0, v4, v5}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->startTimer(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;J)V

    goto :goto_0

    .line 140
    :cond_1
    iget v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    if-ne v1, v2, :cond_2

    .line 141
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    .end local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;

    invoke-direct {v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)V

    iget-byte v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mType:B

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;B)V

    .restart local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    goto :goto_1

    .line 143
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 147
    :cond_3
    instance-of v1, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    if-eqz v1, :cond_4

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 84
    iget-byte v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mType:B

    return v0
.end method

.method onChildComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)I
    .locals 5
    .param p1, "aChildProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 164
    const/4 v2, 0x3

    .line 167
    .local v2, "state":I
    instance-of v3, p1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v1, p1

    .line 169
    check-cast v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;

    .line 170
    .local v1, "receiveProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;
    invoke-virtual {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;->GetReceiveData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    move-result-object v0

    .line 171
    .local v0, "receiveData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDataParser;->parseData(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    move-result-object v3

    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mCasResultData:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;

    .line 172
    const/4 v2, 0x2

    .line 175
    .end local v0    # "receiveData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    .end local v1    # "receiveProcess":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasReceiveProcess;
    :cond_0
    return v2
.end method

.method varargs onFirstExecute([Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 3
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mPhase:I

    .line 119
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;

    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mSender:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;

    iget-byte v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasAuthenticateProcess;->mType:B

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasSendProcess;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwSender;B)V

    return-object v0
.end method
