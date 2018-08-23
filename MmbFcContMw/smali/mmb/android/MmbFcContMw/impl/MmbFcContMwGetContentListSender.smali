.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;
.source "MmbFcContMwGetContentListSender.java"


# instance fields
.field private contentsList:[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

.field private expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

.field private serviceId:I

.field private status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;


# direct methods
.method public constructor <init>(IILmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;Ljava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p4, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p5, "aMessage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p5}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->serviceId:I

    .line 36
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 39
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 42
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->contentsList:[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    .line 54
    iput p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->serviceId:I

    .line 55
    iput-object p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 56
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 57
    return-void
.end method


# virtual methods
.method public getContentsList()[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->contentsList:[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    return-object v0
.end method

.method protected readFile(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 93
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 104
    :cond_0
    return-void

    .line 97
    :cond_1
    new-array v2, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->contentsList:[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 100
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->contentsList:[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    new-instance v3, Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    invoke-direct {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;-><init>()V

    aput-object v3, v2, v1

    .line 101
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->contentsList:[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    aget-object v2, v2, v1

    const/16 v3, 0x100

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;->crid:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->contentsList:[Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;

    aget-object v2, v2, v1

    const/16 v3, 0x184

    invoke-virtual {p0, p1, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsListInfo;->title:Ljava/lang/String;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne v0, v1, :cond_0

    .line 71
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->SAVED_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 84
    :goto_0
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->serviceId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 86
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->writeExpression(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 87
    return-void

    .line 78
    :cond_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetContentListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0
.end method
