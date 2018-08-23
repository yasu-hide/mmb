.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;
.source "MmbFcPgInfoMwExtSearchListSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_EXT_SEARCH_LIST"


# instance fields
.field private dictionary_change:Z

.field private expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

.field private handle:J

.field private index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

.field private language:Ljava/lang/String;

.field private record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;


# direct methods
.method public constructor <init>(IJ[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V
    .locals 4
    .param p1, "aClientId"    # I
    .param p2, "aHandle"    # J
    .param p4, "aIndex"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p5, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p6, "aDictionaryChange"    # Z
    .param p7, "aLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v0, "MESSAGE_MMBFCPGINFOMW_EXT_SEARCH_LIST"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;-><init>(ILjava/lang/String;)V

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->handle:J

    .line 39
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 42
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->dictionary_change:Z

    .line 48
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->language:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 67
    iput-wide p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->handle:J

    .line 68
    invoke-virtual {p4}, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 69
    iput-object p5, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 70
    iput-boolean p6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->dictionary_change:Z

    .line 71
    iput-object p7, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->language:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public getRecord()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

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
    .line 108
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 109
    .local v0, "count":I
    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    iput-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 111
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;-><init>()V

    aput-object v3, v2, v1

    .line 112
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->record:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    aget-object v2, v2, v1

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->readRecord(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
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
    .line 124
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 125
    .local v1, "num_fields":I
    new-array v2, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iput-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 127
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    aput-object v3, v2, v0

    .line 128
    iget-object v2, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    aget-object v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->readField(Ljava/io/InputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
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
    iget-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->handle:J

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 87
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 92
    iget-boolean v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->dictionary_change:Z

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 94
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->language:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 96
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    array-length v0, v2

    .line 97
    .local v0, "count":I
    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 99
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->index:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->maxLength()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwExtSearchListSender;->writeExpression(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 104
    return-void
.end method
