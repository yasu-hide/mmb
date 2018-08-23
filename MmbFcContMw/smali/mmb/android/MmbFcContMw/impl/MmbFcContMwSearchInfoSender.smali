.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;
.source "MmbFcContMwSearchInfoSender.java"


# instance fields
.field private baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

.field protected dictionary_change:Z

.field protected handle:J

.field protected identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

.field protected index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

.field protected language:Ljava/lang/String;

.field protected record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

.field protected status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field protected target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;


# direct methods
.method public constructor <init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p5, "aStatus"    # Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .param p6, "aIdentifier"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p7, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p8, "aVersion"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .param p9, "aDictionaryChange"    # Z
    .param p10, "aLanguage"    # Ljava/lang/String;
    .param p11, "aMessage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p11}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchBaseSender;-><init>(ILjava/lang/String;)V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->handle:J

    .line 37
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 40
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 43
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 46
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->dictionary_change:Z

    .line 52
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->language:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 58
    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 78
    iput-wide p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->handle:J

    .line 79
    iput-object p4, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 80
    iput-object p5, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 81
    iput-object p6, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 82
    invoke-virtual {p7}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 83
    iput-object p8, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 84
    iput-boolean p9, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->dictionary_change:Z

    .line 85
    iput-object p10, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->language:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public getRecord()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

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
    .line 143
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;-><init>()V

    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 146
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 147
    .local v0, "count":I
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    new-array v3, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iput-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    aput-object v3, v2, v1

    .line 151
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->readField(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
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
    .line 98
    iget-wide v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->handle:J

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 100
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->status:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne v2, v3, :cond_0

    .line 102
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->SAVED_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 113
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 116
    iget-boolean v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->dictionary_change:Z

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 118
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->language:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 121
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    iget v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 123
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    iget v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 131
    :goto_1
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeField(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 133
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    array-length v0, v2

    .line 134
    .local v0, "count":I
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 136
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 108
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 127
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_1

    .line 139
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method
