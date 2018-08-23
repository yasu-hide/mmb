.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;
.source "MmbFcPgInfoMwSearchInfoSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_SEARCH_INFO"


# instance fields
.field private baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

.field private dictionary_change:Z

.field private handle:J

.field private identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

.field private index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

.field private language:Ljava/lang/String;

.field private record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

.field private target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;


# direct methods
.method public constructor <init>(IJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)V
    .locals 4
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p5, "aIdentifier"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p6, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p7, "aVersion"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .param p8, "aDictionaryChange"    # Z
    .param p9, "aLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v0, "MESSAGE_MMBFCPGINFOMW_SEARCH_INFO"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;-><init>(ILjava/lang/String;)V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->handle:J

    .line 40
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 43
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 46
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->dictionary_change:Z

    .line 52
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->language:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 58
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 69
    iput-wide p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->handle:J

    .line 70
    iput-object p4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 71
    iput-object p5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 72
    invoke-virtual {p6}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 73
    iput-object p7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 74
    iput-boolean p8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->dictionary_change:Z

    .line 75
    iput-object p9, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->language:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getRecord()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

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
    .line 122
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;-><init>()V

    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 124
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 125
    .local v0, "count":I
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    new-array v3, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iput-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 128
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    aput-object v3, v2, v1

    .line 129
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->record:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->readField(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
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
    .line 85
    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->handle:J

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 87
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 92
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->target:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 95
    iget-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->dictionary_change:Z

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 97
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->language:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 100
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    iget v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 102
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    iget v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 110
    :goto_0
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->identifier:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeField(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 112
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    array-length v0, v2

    .line 113
    .local v0, "count":I
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 115
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchInfoSender;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 118
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method
