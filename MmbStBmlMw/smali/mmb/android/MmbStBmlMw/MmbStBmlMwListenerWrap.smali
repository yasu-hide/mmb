.class public Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;
.super Ljava/lang/Object;
.source "MmbStBmlMwListenerWrap.java"


# instance fields
.field private mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trimByteArray([B)[B
    .locals 5
    .param p1, "aArray"    # [B

    .prologue
    .line 350
    const-string v1, ""

    .line 352
    .local v1, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v1    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .end local p1    # "aArray":[B
    move-object v1, v2

    .line 355
    .end local v2    # "str":Ljava/lang/String;
    .restart local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 354
    .restart local p1    # "aArray":[B
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "str":Ljava/lang/String;
    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onBrowserReq(IZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "aAppType"    # I
    .param p2, "aIsShowAv"    # Z
    .param p3, "aReturnUri"    # Ljava/lang/String;
    .param p4, "aStartUri"    # Ljava/lang/String;
    .param p5, "aBrowser"    # I
    .param p6, "aIsDisp"    # Z

    .prologue
    .line 164
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;-><init>()V

    .line 168
    .local v0, "browserReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbAppType:I

    .line 169
    iput-boolean p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbIsShowAv:Z

    .line 170
    iput-object p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbReturnUri:Ljava/lang/String;

    .line 171
    iput-object p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbStartUri:Ljava/lang/String;

    .line 172
    iput p5, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbBrowser:I

    .line 173
    iput-boolean p6, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbIsDisp:Z

    .line 175
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onBrowserReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)V

    goto :goto_0
.end method

.method public onCallReq(Ljava/lang/String;)V
    .locals 2
    .param p1, "aPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;-><init>()V

    .line 141
    .local v0, "callReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;->mmbPhoneNumber:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onCallReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)V

    goto :goto_0
.end method

.method public onCheckStorageStatusReq([B)V
    .locals 2
    .param p1, "aCrid"    # [B

    .prologue
    .line 206
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;-><init>()V

    .line 210
    .local v0, "checkStrageStatusReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;->mmbCrid:[B

    .line 212
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onCheckStorageStatusReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwCheckStrageStatusReqInfo;)V

    goto :goto_0
.end method

.method public onCloseReq()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onCloseReq()V

    goto :goto_0
.end method

.method public onEpgTuneReq(III)V
    .locals 2
    .param p1, "aOriginalNetworkId"    # I
    .param p2, "aTransportStreamId"    # I
    .param p3, "aServiceId"    # I

    .prologue
    .line 254
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 256
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;-><init>()V

    .line 258
    .local v0, "epgTuneReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;->mmbOriginalNetworkId:I

    .line 259
    iput p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;->mmbTransportStreamId:I

    .line 260
    iput p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;->mmbServiceId:I

    .line 262
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onEpgTuneReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwEpgTuneReqInfo;)V

    goto :goto_0
.end method

.method public onGetGpsReq(I)V
    .locals 2
    .param p1, "aPosInfo"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;-><init>()V

    .line 185
    .local v0, "getGpsReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;->mmbPosInfo:I

    .line 187
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onGetGpsReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;)V

    goto :goto_0
.end method

.method public onHttpCancelReq()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onHttpCancelReq()V

    goto :goto_0
.end method

.method public onHttpStartReq(III[B[B[BI[BI[B[BI)V
    .locals 2
    .param p1, "aSqNum"    # I
    .param p2, "aMethod"    # I
    .param p3, "aRqdataSize"    # I
    .param p4, "aRqData"    # [B
    .param p5, "aUri"    # [B
    .param p6, "aRqHeaders"    # [B
    .param p7, "aUserNameSize"    # I
    .param p8, "aUserName"    # [B
    .param p9, "aPasswordSize"    # I
    .param p10, "aPassword"    # [B
    .param p11, "aUserAgent"    # [B
    .param p12, "aSslMode"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;-><init>()V

    .line 81
    .local v0, "httpStartReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSqNum:I

    .line 82
    iput p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbMethod:I

    .line 83
    iput p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqdataSize:I

    .line 84
    iput-object p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqData:[B

    .line 85
    invoke-direct {p0, p5}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->trimByteArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUri:[B

    .line 86
    iput-object p6, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbRqHeaders:[B

    .line 87
    iput p7, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserNameSize:I

    .line 88
    iput-object p8, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserName:[B

    .line 89
    iput p9, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbPasswordSize:I

    .line 90
    iput-object p10, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbPassword:[B

    .line 91
    iput-object p11, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbUserAgent:[B

    .line 92
    iput p12, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;->mmbSslMode:I

    .line 94
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onHttpStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwHttpStartReqInfo;)V

    goto :goto_0
.end method

.method public onIsContentsStoredReq([B)V
    .locals 2
    .param p1, "aCrid"    # [B

    .prologue
    .line 242
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;-><init>()V

    .line 246
    .local v0, "isContentsStoredReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;->mmbCrid:[B

    .line 248
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onIsContentsStoredReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwIsContentsStoredReqInfo;)V

    goto :goto_0
.end method

.method public onLaunchContentReq([BI)V
    .locals 2
    .param p1, "aCrid"    # [B
    .param p2, "aDispMode"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;-><init>()V

    .line 197
    .local v0, "launchContentReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;->mmbCrid:[B

    .line 198
    iput p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;->mmbDispMode:I

    .line 200
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onLaunchContentReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwLaunchContentReqInfo;)V

    goto :goto_0
.end method

.method public onMailSendReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aSubject"    # Ljava/lang/String;
    .param p2, "aAddress"    # Ljava/lang/String;
    .param p3, "aBody"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;-><init>()V

    .line 112
    .local v0, "mailSendReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;->mmbSubject:Ljava/lang/String;

    .line 113
    iput-object p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;->mmbAddress:Ljava/lang/String;

    .line 114
    iput-object p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;->mmbBody:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onMailSendReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)V

    goto :goto_0
.end method

.method public onNvramReadReq(II)V
    .locals 2
    .param p1, "aBroadcasterId"    # I
    .param p2, "aBlockNo"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;-><init>()V

    .line 67
    .local v0, "readReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;->mmbBroadcasterId:I

    .line 68
    iput p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;->mmbBlockNo:I

    .line 70
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onNvramReadReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramReadReqInfo;)V

    goto :goto_0
.end method

.method public onNvramWriteReq(II[B)V
    .locals 2
    .param p1, "aBroadcasterId"    # I
    .param p2, "aBlockNo"    # I
    .param p3, "aSaveData"    # [B

    .prologue
    .line 49
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;-><init>()V

    .line 53
    .local v0, "writeReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBroadcasterId:I

    .line 54
    iput p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbBlockNo:I

    .line 55
    iput-object p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;->mmbSaveData:[B

    .line 57
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onNvramWriteReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwNvramWriteReqInfo;)V

    goto :goto_0
.end method

.method public onPhoneBookReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aKana"    # Ljava/lang/String;
    .param p3, "aPhoneNumber"    # Ljava/lang/String;
    .param p4, "aMailAddress"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;-><init>()V

    .line 126
    .local v0, "phoneBookReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbName:Ljava/lang/String;

    .line 127
    iput-object p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbKana:Ljava/lang/String;

    .line 128
    iput-object p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbPhoneNumber:Ljava/lang/String;

    .line 129
    iput-object p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbMailAddress:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onPhoneBookReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)V

    goto :goto_0
.end method

.method public onPictureSaveComplete(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onPictureSaveComplete(Z)V

    goto :goto_0
.end method

.method public onPictureSaveReq(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "aPictureUri"    # Ljava/lang/String;
    .param p2, "aFileName"    # Ljava/lang/String;
    .param p3, "aFileSize"    # I
    .param p4, "aIsOverWrite"    # Z

    .prologue
    .line 293
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;-><init>()V

    .line 297
    .local v0, "pictureSaveReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbPictureUri:Ljava/lang/String;

    .line 298
    iput-object p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbFileName:Ljava/lang/String;

    .line 299
    iput p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbFileSize:I

    .line 300
    iput-boolean p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;->mmbIsOverWrite:Z

    .line 302
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onPictureSaveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwPictureSaveReqInfo;)V

    goto :goto_0
.end method

.method public onScheduleReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "aDate"    # Ljava/lang/String;
    .param p2, "aTitle"    # Ljava/lang/String;
    .param p3, "aBody"    # Ljava/lang/String;
    .param p4, "aIsAlarm"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;-><init>()V

    .line 153
    .local v0, "scheduleReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbDate:Ljava/lang/String;

    .line 154
    iput-object p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbTitle:Ljava/lang/String;

    .line 155
    iput-object p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbBody:Ljava/lang/String;

    .line 156
    iput-boolean p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbIsAlarm:Z

    .line 158
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onScheduleReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)V

    goto :goto_0
.end method

.method public onStartFullDispReq(IIII)V
    .locals 2
    .param p1, "aX"    # I
    .param p2, "aY"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 268
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;-><init>()V

    .line 271
    .local v0, "startFullDispReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    .line 272
    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    .line 274
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput p1, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    .line 275
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput p2, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    .line 276
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput p3, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    .line 277
    iget-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput p4, v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    .line 279
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V

    goto :goto_0
.end method

.method public onStartReply(Z)V
    .locals 1
    .param p1, "aResult"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v0, p1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onStartReply(Z)V

    goto :goto_0
.end method

.method public onStopFullDispReq()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onStopFullDispReq()V

    goto :goto_0
.end method

.method public onStoreCancelReserveReq([B)V
    .locals 2
    .param p1, "aCrid"    # [B

    .prologue
    .line 230
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;-><init>()V

    .line 234
    .local v0, "storeCancelReserveReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;->mmbCrid:[B

    .line 236
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onStoreCancelReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreCancelReserveReqInfo;)V

    goto :goto_0
.end method

.method public onStoreReserveReq([B)V
    .locals 2
    .param p1, "aCrid"    # [B

    .prologue
    .line 218
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;-><init>()V

    .line 222
    .local v0, "storeReserveReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;->mmbCrid:[B

    .line 224
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onStoreReserveReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStoreReserveReqInfo;)V

    goto :goto_0
.end method

.method public onTvLinkEnrolReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 2
    .param p1, "aTitle"    # Ljava/lang/String;
    .param p2, "aDstUri"    # Ljava/lang/String;
    .param p3, "aOutline"    # Ljava/lang/String;
    .param p4, "aXprobmtype"    # I
    .param p5, "aExpire"    # Ljava/lang/String;
    .param p6, "aServiceId"    # I
    .param p7, "aBroadcasterId"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;-><init>()V

    .line 337
    .local v0, "tvLinkEnrolReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbTitle:Ljava/lang/String;

    .line 338
    iput-object p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbDstUri:Ljava/lang/String;

    .line 339
    iput-object p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbOutline:Ljava/lang/String;

    .line 340
    iput p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbXprobmtype:I

    .line 341
    iput-object p5, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbExpire:Ljava/lang/String;

    .line 342
    iput p6, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbServiceId:I

    .line 343
    iput p7, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;->mmbBroadcasterId:I

    .line 345
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onTvLinkEnrolReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkEnrolReqInfo;)V

    goto :goto_0
.end method

.method public onTvLinkStartReq(IZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "aAppType"    # I
    .param p2, "aIsShowAv"    # Z
    .param p3, "aReturnUri"    # Ljava/lang/String;
    .param p4, "aStartUri"    # Ljava/lang/String;
    .param p5, "aBrowser"    # I
    .param p6, "aIsDisp"    # Z

    .prologue
    .line 316
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    if-nez v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;-><init>()V

    .line 320
    .local v0, "tvLinkStartReqInfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;
    iput p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mmbAppType:I

    .line 321
    iput-boolean p2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mbIsShowAv:Z

    .line 322
    iput-object p3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mmbReturnUri:Ljava/lang/String;

    .line 323
    iput-object p4, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mmbStartUri:Ljava/lang/String;

    .line 324
    iput p5, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mmbBrowser:I

    .line 325
    iput-boolean p6, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;->mmbIsDisp:Z

    .line 327
    iget-object v1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    invoke-interface {v1, v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;->onTvLinkStartReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwTvLinkStartReqInfo;)V

    goto :goto_0
.end method

.method public setListener(Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;)V
    .locals 0
    .param p1, "aListener"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    .prologue
    .line 27
    iput-object p1, p0, Lmmb/android/MmbStBmlMw/MmbStBmlMwListenerWrap;->mMwListener:Lmmb/android/MmbStBmlMw/MmbStBmlMwListener;

    .line 28
    return-void
.end method
