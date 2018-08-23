.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;
.source "MmbFcContMwExtSearchListSender.java"


# instance fields
.field protected dictionary_change:Z

.field protected expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

.field protected handle:J

.field protected index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

.field protected language:Ljava/lang/String;

.field private record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

.field status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;


# direct methods
.method public constructor <init>(IJLmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p5, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p6, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p7, "aDictionaryChange"    # Z
    .param p8, "aLanguage"    # Ljava/lang/String;
    .param p9, "aMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p9}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->handle:J

    .line 36
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 39
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->dictionary_change:Z

    .line 45
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->language:Ljava/lang/String;

    .line 48
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 51
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 68
    iput-wide p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->handle:J

    .line 69
    invoke-virtual {p5}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 70
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 71
    iput-object p6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 72
    iput-boolean p7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->dictionary_change:Z

    .line 73
    iput-object p8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->language:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getRecord()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

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
    .line 116
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 117
    .local v0, "count":I
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 120
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;-><init>()V

    aput-object v3, v2, v1

    .line 121
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->readRecord(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method protected readRecord(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    .locals 4
    .param p1, "aInput"    # Ljava/io/InputStream;
    .param p2, "aRecord"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 134
    .local v1, "num_fields":I
    new-array v2, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    aput-object v3, v2, v0

    .line 137
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    aget-object v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->readField(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method protected writeFile(Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "aOutput"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-wide v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->handle:J

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 88
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne v2, v3, :cond_0

    .line 89
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->SAVED_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 100
    :goto_0
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->dictionary_change:Z

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 102
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->language:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 104
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    array-length v0, v2

    .line 105
    .local v0, "count":I
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 107
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 111
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExtSearchListSender;->writeExpression(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 112
    return-void
.end method
