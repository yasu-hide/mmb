.class public Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
.super Ljava/lang/Object;
.source "MmbMoInfoMw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;,
        Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;,
        Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
    }
.end annotation


# instance fields
.field private log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "MmbPoInfoMp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    invoke-direct {v0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    .line 108
    return-void
.end method


# virtual methods
.method public getBroadcastSameTransact()I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getBroadcastSameTransactJNI()I

    move-result v0

    return v0
.end method

.method native getBroadcastSameTransactJNI()I
.end method

.method public getChangeStorageState(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
    .locals 4
    .param p1, "aContentType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    .prologue
    .line 294
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "getChangeStorageState"

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 295
    if-nez p1, :cond_0

    .line 296
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "parameter error."

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogW(Ljava/lang/String;)V

    .line 297
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->NON_COMPLIANT_CONTENT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    .line 301
    :goto_0
    return-object v0

    .line 299
    :cond_0
    invoke-virtual {p1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getChangeStorageStateJNI(I)I

    move-result v1

    invoke-static {v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;->valueOf(I)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;

    move-result-object v0

    .line 300
    .local v0, "state":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageChangeState;
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChangeStorageState return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method native getChangeStorageStateJNI(I)I
.end method

.method public getCommonDataPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getCommonDataPathJNI()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failed to get a path value."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_1
    return-object v0
.end method

.method native getCommonDataPathJNI()Ljava/lang/String;
.end method

.method public getContentsStorageRootPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->CONTENT_DOWNLOAD:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    invoke-virtual {p0, v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getStorageDefault(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getContentsStorageRootPath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentsStorageRootPath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;
    .locals 4
    .param p1, "aContentType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
    .param p2, "aStorageType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    .prologue
    .line 235
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "getContentsStorageRootPath"

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 236
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 237
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "parameter error."

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogW(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->getInt()I

    move-result v1

    invoke-virtual {p2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->getInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getContentsStorageRootPathJNI(II)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 242
    :cond_2
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "getContentsStorageRootPath length is zero"

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogW(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 245
    :cond_3
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentsStorageRootPath return velue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method native getContentsStorageRootPathJNI(II)Ljava/lang/String;
.end method

.method public getStorageDefault(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;
    .locals 4
    .param p1, "aContentType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;

    .prologue
    .line 255
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "getStorageDefault"

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 256
    if-nez p1, :cond_0

    .line 257
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "parameter error."

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogW(Ljava/lang/String;)V

    .line 258
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->STORAGE_NON_COMPLIANT:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    .line 262
    :goto_0
    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getStorageDefaultJNI(I)I

    move-result v1

    invoke-static {v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->valueOf(I)Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    move-result-object v0

    .line 261
    .local v0, "ret":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStorageDefault return velue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method native getStorageDefaultJNI(I)I
.end method

.method public getStoragePath(Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;)Ljava/lang/String;
    .locals 4
    .param p1, "aContentType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;
    .param p2, "aStorageType"    # Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;

    .prologue
    .line 272
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "getStoragePath"

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 273
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 274
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "parameter error."

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogW(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    .line 277
    :cond_1
    invoke-virtual {p1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoContentType;->getInt()I

    move-result v1

    invoke-virtual {p2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw$MmbMoStorageType;->getInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getStoragePathJNI(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 279
    :cond_2
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    const-string v2, "getStoragePath length is zero"

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogW(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    .line 282
    :cond_3
    iget-object v1, p0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->log:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStoragePath return velue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method native getStoragePathJNI(II)Ljava/lang/String;
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getVersionJNI()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "ver":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failed to get a version value."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    return-object v0
.end method

.method native getVersionJNI()Ljava/lang/String;
.end method
