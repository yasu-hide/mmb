.class public Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;
.super Ljava/lang/Object;
.source "MmbFcIndivdMw.java"


# instance fields
.field private log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "/system/lib/libMmbFcIndivdMw.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    invoke-direct {v0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    .line 34
    invoke-static {}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeInitialize()V

    .line 35
    return-void
.end method

.method private native nativeCancelExport()Z
.end method

.method private native nativeCancelExportAll(Ljava/lang/String;)Z
.end method

.method private native nativeDeleteExportFile(Ljava/lang/String;)Z
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetAcceptableCount()I
.end method

.method private static native nativeInitialize()V
.end method

.method private native nativeRegistListener(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;)V
.end method

.method private native nativeStartExport(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native nativeStartExportAll(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeStartExportThumbnail(Ljava/lang/String;Ljava/lang/String;)Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;
.end method


# virtual methods
.method public cancelExport()Z
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "cancelExport start"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeCancelExport()Z

    move-result v0

    .line 79
    .local v0, "ret":Z
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "cancelExport end"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 80
    return v0
.end method

.method public cancelExport(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_0

    .line 132
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "cancelExport crid is null"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 142
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "cancelExport crid length is zero"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelExport start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeCancelExportAll(Ljava/lang/String;)Z

    move-result v0

    .line 141
    .local v0, "ret":Z
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelExport end["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteExportFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "deleteExportFile crid is null"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 163
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "deleteExportFile crid length is zero"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteExportFile start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeDeleteExportFile(Ljava/lang/String;)Z

    move-result v0

    .line 162
    .local v0, "ret":Z
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteExportFile end["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeFinalize()V

    .line 184
    return-void
.end method

.method public getAcceptableCount()I
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "getAcceptableCount start"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeGetAcceptableCount()I

    move-result v0

    .line 170
    .local v0, "ret":I
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAcceptableCount end["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 171
    return v0
.end method

.method public registListener(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;)V
    .locals 2
    .param p1, "alistener"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;

    .prologue
    .line 48
    iget-object v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v1, "registListener start"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeRegistListener(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;)V

    .line 50
    iget-object v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v1, "registListener end"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public startExport(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "startExport start"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeStartExport(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, "ret":Z
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "startExport end"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 65
    return v0
.end method

.method public startExportAll(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z

    .prologue
    const/4 v0, -0x1

    .line 108
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 109
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "startExportAll crid or path is null"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 119
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 113
    :cond_2
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "startExportAll crid or path length is zero"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startExportAll start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] overwrite["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeStartExportAll(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 118
    .local v0, "ret":I
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startExportAll end["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startExportThumbnail(Ljava/lang/String;Ljava/lang/String;)Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;
    .locals 3
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "startExportThumbnail start"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->nativeStartExportThumbnail(Ljava/lang/String;Ljava/lang/String;)Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;

    move-result-object v0

    .line 95
    .local v0, "ret":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;
    iget-object v1, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->log:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;

    const-string v2, "startExportThumbnail end"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 96
    return-object v0
.end method
