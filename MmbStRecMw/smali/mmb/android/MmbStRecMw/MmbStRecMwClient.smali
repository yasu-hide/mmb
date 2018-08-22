.class public Lmmb/android/MmbStRecMw/MmbStRecMwClient;
.super Ljava/lang/Object;
.source "MmbStRecMwClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStRecMwClient"


# instance fields
.field private log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

.field private mJniWrapper:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "MmbStRecMwService_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    invoke-direct {v0}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    return-void
.end method


# virtual methods
.method public native MmbStRecMwClientGetCapacityJni(Lmmb/android/MmbStRecMw/MmbStRecMwCapa;)I
.end method

.method public native MmbStRecMwClientGetEitJni(Lmmb/android/MmbStRecMw/MmbStRecMwEit;)I
.end method

.method public native MmbStRecMwClientGetPmtJni(Lmmb/android/MmbStRecMw/MmbStRecMwPmt;)I
.end method

.method public native MmbStRecMwClientGetRecStatusJni(Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;)I
.end method

.method public native MmbStRecMwClientGetSdtJni(Lmmb/android/MmbStRecMw/MmbStRecMwSdt;)I
.end method

.method public native MmbStRecMwClientPrepRecJni(II)I
.end method

.method public native MmbStRecMwClientSetListenerJni(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)V
.end method

.method public native MmbStRecMwClientStartRecJni(ILjava/lang/String;Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;)I
.end method

.method public native MmbStRecMwClientStopRecJni()I
.end method

.method public getCapacity(Lmmb/android/MmbStRecMw/MmbStRecMwCapa;)I
    .locals 4
    .param p1, "aCapa"    # Lmmb/android/MmbStRecMw/MmbStRecMwCapa;

    .prologue
    .line 236
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v2, "MmbStRecMwClient"

    const-string v3, "getCapacity()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v0, -0x2

    .line 240
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientGetCapacityJni(Lmmb/android/MmbStRecMw/MmbStRecMwCapa;)I

    move-result v0

    .line 244
    :cond_0
    return v0
.end method

.method public getEit(Lmmb/android/MmbStRecMw/MmbStRecMwEit;)I
    .locals 4
    .param p1, "aEit"    # Lmmb/android/MmbStRecMw/MmbStRecMwEit;

    .prologue
    .line 189
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v2, "MmbStRecMwClient"

    const-string v3, "getEit()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, -0x2

    .line 193
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientGetEitJni(Lmmb/android/MmbStRecMw/MmbStRecMwEit;)I

    move-result v0

    .line 195
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->outEitData(Lmmb/android/MmbStRecMw/MmbStRecMwEit;)V

    .line 198
    :cond_0
    return v0
.end method

.method public getPmt(Lmmb/android/MmbStRecMw/MmbStRecMwPmt;)I
    .locals 4
    .param p1, "aPmt"    # Lmmb/android/MmbStRecMw/MmbStRecMwPmt;

    .prologue
    .line 165
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v2, "MmbStRecMwClient"

    const-string v3, "getPmt()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, -0x2

    .line 169
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientGetPmtJni(Lmmb/android/MmbStRecMw/MmbStRecMwPmt;)I

    move-result v0

    .line 171
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->outPmtData(Lmmb/android/MmbStRecMw/MmbStRecMwPmt;)V

    .line 174
    :cond_0
    return v0
.end method

.method public getRecStatus(Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;)I
    .locals 4
    .param p1, "aStatus"    # Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;

    .prologue
    .line 258
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v2, "MmbStRecMwClient"

    const-string v3, "getRecStatus()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, -0x2

    .line 262
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientGetRecStatusJni(Lmmb/android/MmbStRecMw/MmbStRecMwRecStatus;)I

    move-result v0

    .line 266
    :cond_0
    return v0
.end method

.method public getSdt(Lmmb/android/MmbStRecMw/MmbStRecMwSdt;)I
    .locals 4
    .param p1, "aSdt"    # Lmmb/android/MmbStRecMw/MmbStRecMwSdt;

    .prologue
    .line 213
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v2, "MmbStRecMwClient"

    const-string v3, "getSdt()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, -0x2

    .line 217
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientGetSdtJni(Lmmb/android/MmbStRecMw/MmbStRecMwSdt;)I

    move-result v0

    .line 219
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->outSdtData(Lmmb/android/MmbStRecMw/MmbStRecMwSdt;)V

    .line 222
    :cond_0
    return v0
.end method

.method public prepRec(II)I
    .locals 3
    .param p1, "aServiceId"    # I
    .param p2, "aUserParam"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v1, "MmbStRecMwClient"

    const-string v2, "prepRec()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientPrepRecJni(II)I

    move-result v0

    return v0
.end method

.method public setContentsInfoMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)I
    .locals 6
    .param p1, "aMeta"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;

    .prologue
    .line 279
    iget-object v3, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v4, "MmbStRecMwClient"

    const-string v5, "setContentsInfoMeta()"

    invoke-virtual {v3, v4, v5}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x0

    .line 284
    .local v2, "ret":I
    :try_start_0
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 286
    .local v1, "recCmIns":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    invoke-virtual {v1, p1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->setContentsInfoMeta(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwMeta;)V
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v1    # "recCmIns":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    :goto_0
    return v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setListener(Lmmb/android/MmbStRecMw/MmbStRecMwListener;)I
    .locals 5
    .param p1, "listener"    # Lmmb/android/MmbStRecMw/MmbStRecMwListener;

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v2, "MmbStRecMwClient"

    const-string v3, "setListener()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, -0x2

    .line 80
    .local v0, "ret":I
    if-nez p1, :cond_0

    .line 81
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->mJniWrapper:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->setMmbStRecMwListener(Lmmb/android/MmbStRecMw/MmbStRecMwListener;)V

    .line 82
    iput-object v4, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->mJniWrapper:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    .line 83
    invoke-virtual {p0, v4}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientSetListenerJni(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)V

    .line 94
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 86
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->mJniWrapper:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-direct {v1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;-><init>()V

    iput-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->mJniWrapper:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    .line 90
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->mJniWrapper:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;->setMmbStRecMwListener(Lmmb/android/MmbStRecMw/MmbStRecMwListener;)V

    .line 91
    iget-object v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->mJniWrapper:Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;

    invoke-virtual {p0, v1}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientSetListenerJni(Lmmb/android/MmbStRecMw/MmbStRecMwJniWrapper;)V

    goto :goto_0
.end method

.method public startRec(ILjava/lang/String;Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;)I
    .locals 3
    .param p1, "aServiceId"    # I
    .param p2, "aCrId"    # Ljava/lang/String;
    .param p3, "aPrgNo"    # Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;

    .prologue
    .line 132
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v1, "MmbStRecMwClient"

    const-string v2, "startRec()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientStartRecJni(ILjava/lang/String;Lmmb/android/MmbStRecMw/MmbStRecMwPrgNo;)I

    move-result v0

    return v0
.end method

.method public stopRec()I
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->log:Lmmb/android/MmbStRecMw/MmbStRecMwCommon;

    const-string v1, "MmbStRecMwClient"

    const-string v2, "stopRec()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lmmb/android/MmbStRecMw/MmbStRecMwClient;->MmbStRecMwClientStopRecJni()I

    move-result v0

    return v0
.end method
