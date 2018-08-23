.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;
.source "MmbFcContMwSearchListSender.java"


# instance fields
.field protected dictionary_change:Z

.field protected expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

.field protected handle:J

.field protected index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

.field protected language:Ljava/lang/String;

.field private record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

.field status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field protected target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;


# direct methods
.method public constructor <init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p5, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p6, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p7, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p8, "aDictionaryChange"    # Z
    .param p9, "aLanguage"    # Ljava/lang/String;
    .param p10, "aMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p10}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;-><init>(ILjava/lang/String;)V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->handle:J

    .line 37
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 40
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 43
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->dictionary_change:Z

    .line 49
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->language:Ljava/lang/String;

    .line 52
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 55
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 74
    iput-wide p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->handle:J

    .line 75
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 76
    invoke-virtual {p6}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 77
    iput-object p5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 78
    iput-object p7, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 79
    iput-boolean p8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->dictionary_change:Z

    .line 80
    iput-object p9, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->language:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public getRecord()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

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
    .line 126
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 127
    .local v0, "count":I
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 130
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;-><init>()V

    aput-object v3, v2, v1

    .line 131
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->readRecord(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
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
    .line 143
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 144
    .local v1, "num_fields":I
    new-array v2, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 146
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    aput-object v3, v2, v0

    .line 147
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    aget-object v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->readField(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
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
    .line 93
    iget-wide v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->handle:J

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 95
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne v2, v3, :cond_0

    .line 96
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->SAVED_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 107
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 110
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->dictionary_change:Z

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 112
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->language:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 114
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    array-length v0, v2

    .line 115
    .local v0, "count":I
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 117
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 121
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchListSender;->writeExpression(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 122
    return-void
.end method
