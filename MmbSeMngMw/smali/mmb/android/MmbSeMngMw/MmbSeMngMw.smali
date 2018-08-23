.class public Lmmb/android/MmbSeMngMw/MmbSeMngMw;
.super Landroid/content/ContentProvider;
.source "MmbSeMngMw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbIsAgrm;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeFlg;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeServiceType;,
        Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeNetworkType;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Ljava/lang/String; = "content://com.nttdocomo.mmb.android.mmbsv/settings"

.field private static log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;


# instance fields
.field private final splitStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    invoke-direct {v0}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;-><init>()V

    sput-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    .line 37
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v1, "loadLibrary"

    invoke-virtual {v0, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 39
    const-string v0, "/system/lib/libMmbSeMngMw.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v1, "nativeInit"

    invoke-virtual {v0, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeInit()V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 31
    const-string v0, "#"

    iput-object v0, p0, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->splitStr:Ljava/lang/String;

    .line 657
    return-void
.end method

.method private native nativeClearSettings()I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetAutoFCCmpl()I
.end method

.method private native nativeGetAutoLns()I
.end method

.method private native nativeGetAutoRcv(I)I
.end method

.method private native nativeGetContentStorage(I)I
.end method

.method private native nativeGetFCCmplLmt(I)Ljava/lang/String;
.end method

.method private native nativeGetPrgSrvUrl(I)Ljava/lang/String;
.end method

.method private native nativeGetPrntlCtrl()I
.end method

.method private native nativeGetPrntlRate()I
.end method

.method private native nativeGetUpdPrgTime()Ljava/lang/String;
.end method

.method private static final native nativeInit()V
.end method

.method private native nativeJdgPrntlPwd(Ljava/lang/String;)I
.end method

.method private native nativeSetAutoFCCmpl(I)I
.end method

.method private native nativeSetAutoLns(I)I
.end method

.method private native nativeSetAutoRcv(II)I
.end method

.method private native nativeSetContentStorage(II)I
.end method

.method private native nativeSetFCCmplLmt(ILjava/lang/String;)I
.end method

.method private native nativeSetPrgSrvUrl(ILjava/lang/String;)I
.end method

.method private native nativeSetPrntlCtrl(I)I
.end method

.method private native nativeSetPrntlPwd(Ljava/lang/String;)I
.end method

.method private native nativeSetPrntlRate(I)I
.end method

.method private native nativeSetUpdPrgTime(Ljava/lang/String;)I
.end method


# virtual methods
.method public clearSettings()I
    .locals 4

    .prologue
    .line 379
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "clearSettings"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeClearSettings()I

    move-result v0

    .line 381
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeClearSettings\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 382
    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "aSelection"    # Ljava/lang/String;
    .param p3, "aSelectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v1, "finalize start"

    invoke-virtual {v0, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeFinalize()V

    .line 420
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v1, "finalize end"

    invoke-virtual {v0, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public getAutoFCCmpl()I
    .locals 4

    .prologue
    .line 206
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getAutoFCCmpl"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetAutoFCCmpl()I

    move-result v0

    .line 208
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetAutoFCCmpl\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 209
    return v0
.end method

.method public getAutoLns()I
    .locals 4

    .prologue
    .line 229
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getAutoLns"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetAutoLns()I

    move-result v0

    .line 231
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetAutoLns\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 232
    return v0
.end method

.method public getAutoRcv()I
    .locals 4

    .prologue
    .line 146
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getAutoRcv"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_ALL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->getInt()I

    move-result v1

    invoke-direct {p0, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetAutoRcv(I)I

    move-result v0

    .line 148
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetAutoRcv\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 149
    return v0
.end method

.method public getAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;)I
    .locals 4
    .param p1, "aType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    .prologue
    .line 160
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getAutoRcv"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->getInt()I

    move-result v1

    invoke-direct {p0, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetAutoRcv(I)I

    move-result v0

    .line 162
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetAutoRcv\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 163
    return v0
.end method

.method public getContentStorage(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    .locals 4
    .param p1, "aContentType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;

    .prologue
    .line 403
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getContentStorage"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 404
    if-nez p1, :cond_0

    .line 405
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "param is null"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogE(Ljava/lang/String;)V

    .line 406
    sget-object v0, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->STORAGE_FAIL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .line 410
    :goto_0
    return-object v0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->getInt()I

    move-result v1

    invoke-direct {p0, v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetContentStorage(I)I

    move-result v1

    invoke-static {v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->valueOf(I)Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    move-result-object v0

    .line 409
    .local v0, "ret":Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentStorage return velue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFCCmplLmt(I)[I
    .locals 8
    .param p1, "aType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    sget-object v2, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFCCmplLmt\'s getting network type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetFCCmplLmt(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "str":Ljava/lang/String;
    sget-object v2, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeGetFCCmplLmt\'s return value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 337
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 338
    :cond_0
    const/4 v2, 0x0

    .line 341
    :goto_0
    return-object v2

    .line 340
    :cond_1
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "strArray":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [I

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v5

    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v7

    goto :goto_0
.end method

.method public getPrgSrvUrl(I)Ljava/lang/String;
    .locals 4
    .param p1, "aServiceType"    # I

    .prologue
    .line 368
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrgSrvUrl\'s getting service type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetPrgSrvUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "retStr":Ljava/lang/String;
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetPrgSrvUrl\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 371
    return-object v0
.end method

.method public getPrntlCtrl()I
    .locals 4

    .prologue
    .line 252
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getPrntlCtrl"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetPrntlCtrl()I

    move-result v0

    .line 254
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetPrntlCtrl\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 255
    return v0
.end method

.method public getPrntlRate()I
    .locals 4

    .prologue
    .line 275
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getPrntlRate"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetPrntlRate()I

    move-result v0

    .line 277
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetPrntlRate\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 278
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdPrgTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "getUpdPrgTime"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetUpdPrgTime()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "retStr":Ljava/lang/String;
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetUpdPrgTime\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 186
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "aValues"    # Landroid/content/ContentValues;

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public jdgPrntlPwd(Ljava/lang/String;)I
    .locals 4
    .param p1, "aInput"    # Ljava/lang/String;

    .prologue
    .line 299
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jdgPrntlPwd\'s jdg password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeJdgPrntlPwd(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeJdgPrntlPwd\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 302
    return v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "aProjection"    # [Ljava/lang/String;
    .param p3, "aSelection"    # Ljava/lang/String;
    .param p4, "aSelectionArgs"    # [Ljava/lang/String;
    .param p5, "aSortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v4, "query start"

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "resultCursor":Landroid/database/MatrixCursor;
    const-string v3, "content://com.nttdocomo.mmb.android.mmbsv/settings"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const/16 v1, -0x64

    .line 67
    .local v1, "prntlRate":I
    const/4 v0, -0x1

    .line 68
    .local v0, "prntlCtrl":I
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 69
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query aProjection[0] value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 71
    const-string v3, "parentalRate"

    aget-object v4, p2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetPrntlCtrl()I

    move-result v0

    .line 75
    if-ne v0, v7, :cond_2

    .line 76
    invoke-direct {p0}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeGetPrntlRate()I

    move-result v1

    .line 83
    :cond_0
    :goto_0
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prntlCtrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 84
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prntlRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 85
    new-instance v2, Landroid/database/MatrixCursor;

    .end local v2    # "resultCursor":Landroid/database/MatrixCursor;
    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 86
    .restart local v2    # "resultCursor":Landroid/database/MatrixCursor;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 90
    .end local v0    # "prntlCtrl":I
    .end local v1    # "prntlRate":I
    :cond_1
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v4, "query end"

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 91
    return-object v2

    .line 78
    .restart local v0    # "prntlCtrl":I
    .restart local v1    # "prntlRate":I
    :cond_2
    if-nez v0, :cond_0

    .line 79
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAutoFCCmpl(I)I
    .locals 4
    .param p1, "aFlg"    # I

    .prologue
    .line 195
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoFCCmpl\'s setting flg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetAutoFCCmpl(I)I

    move-result v0

    .line 197
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetAutoFCCmpl\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 198
    return v0
.end method

.method public setAutoLns(I)I
    .locals 4
    .param p1, "aFlg"    # I

    .prologue
    .line 218
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoLns\'s setting flg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetAutoLns(I)I

    move-result v0

    .line 220
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetAutoLns\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 221
    return v0
.end method

.method public setAutoRcv(I)I
    .locals 4
    .param p1, "aFlg"    # I

    .prologue
    .line 135
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoRcv\'s setting flg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->AUTO_RECEIVE_TYPE_ALL:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;

    invoke-virtual {v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->getInt()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetAutoRcv(II)I

    move-result v0

    .line 137
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetAutoRcv\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 138
    return v0
.end method

.method public setAutoRcv(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;I)I
    .locals 4
    .param p1, "aType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;
    .param p2, "aFlg"    # I

    .prologue
    .line 153
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoRcv\'s setting flg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeAutoReceiveType;->getInt()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetAutoRcv(II)I

    move-result v0

    .line 155
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetAutoRcv\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 156
    return v0
.end method

.method public setContentStorage(Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;)I
    .locals 4
    .param p1, "aContentType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;
    .param p2, "aStorageType"    # Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;

    .prologue
    .line 392
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "setContentStorage"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 393
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 394
    :cond_0
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    const-string v2, "param is null"

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogE(Ljava/lang/String;)V

    .line 395
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->ERR_PARAM:Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;

    invoke-virtual {v1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbErrCd;->getInt()I

    move-result v0

    .line 399
    :goto_0
    return v0

    .line 397
    :cond_1
    invoke-virtual {p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeContentType;->getInt()I

    move-result v1

    invoke-virtual {p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw$MmbSeStorageType;->getInt()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetContentStorage(II)I

    move-result v0

    .line 398
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContentStorage return velue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFCCmplLmt(III)I
    .locals 6
    .param p1, "aType"    # I
    .param p2, "aLimit"    # I
    .param p3, "aProcess"    # I

    .prologue
    .line 313
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFCCmplLmt\'s setting network type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 314
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFCCmplLmt\'s setting limit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 315
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFCCmplLmt\'s setting process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 316
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 318
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 320
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "strFccmplLmt":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetFCCmplLmt(ILjava/lang/String;)I

    move-result v0

    .line 324
    .local v0, "ret":I
    sget-object v3, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeSetFCCmplLmt\'s return value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 325
    return v0
.end method

.method public setPrgSrvUrl(ILjava/lang/String;)I
    .locals 4
    .param p1, "aServiceType"    # I
    .param p2, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 355
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrgSrvUrl\'s setting service type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 356
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrgSrvUrl\'s setting url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetPrgSrvUrl(ILjava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetPrgSrvUrl\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 359
    return v0
.end method

.method public setPrntlCtrl(I)I
    .locals 4
    .param p1, "aFlg"    # I

    .prologue
    .line 241
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrntlCtrl\'s setting flg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetPrntlCtrl(I)I

    move-result v0

    .line 243
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetPrntlCtrl\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 244
    return v0
.end method

.method public setPrntlPwd(Ljava/lang/String;)I
    .locals 4
    .param p1, "aPassword"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrntlPwd\'s setting password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetPrntlPwd(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetPrntlPwd\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 290
    return v0
.end method

.method public setPrntlRate(I)I
    .locals 4
    .param p1, "aAge"    # I

    .prologue
    .line 264
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrntlRate\'s setting age:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetPrntlRate(I)I

    move-result v0

    .line 266
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetPrntlRate\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 267
    return v0
.end method

.method public setUpdPrgTime(Ljava/lang/String;)I
    .locals 4
    .param p1, "aTime"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUpdPrgTime\'s setting time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1}, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->nativeSetUpdPrgTime(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "ret":I
    sget-object v1, Lmmb/android/MmbSeMngMw/MmbSeMngMw;->log:Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetUpdPrgTime\'s return value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbSeMngMw/MmbSeMngMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 175
    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "aValues"    # Landroid/content/ContentValues;
    .param p3, "aSelection"    # Ljava/lang/String;
    .param p4, "aSelectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method
