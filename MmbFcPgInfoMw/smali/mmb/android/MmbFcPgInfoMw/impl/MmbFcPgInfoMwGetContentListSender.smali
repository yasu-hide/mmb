.class public Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;
.super Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;
.source "MmbFcPgInfoMwGetContentListSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCPGINFOMW_GET_CONTENT_LIST"


# instance fields
.field private end:J

.field private expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

.field private info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

.field private serviceId:I

.field private start:J

.field private type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;


# direct methods
.method public constructor <init>(IILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;JJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V
    .locals 4
    .param p1, "aClientId"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aType"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;
    .param p4, "aStart"    # J
    .param p6, "aEnd"    # J
    .param p8, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 63
    const-string v0, "MESSAGE_MMBFCPGINFOMW_GET_CONTENT_LIST"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwSearchBaseSender;-><init>(ILjava/lang/String;)V

    .line 35
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->serviceId:I

    .line 38
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;->ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;

    iput-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;

    .line 41
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->start:J

    .line 44
    iput-wide v2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->end:J

    .line 47
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 50
    iput-object v1, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    .line 64
    iput p2, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->serviceId:I

    .line 65
    iput-object p3, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;

    .line 66
    iput-wide p4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->start:J

    .line 67
    iput-wide p6, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->end:J

    .line 68
    iput-object p8, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 69
    return-void
.end method


# virtual methods
.method public getInfo()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    return-object v0
.end method

.method protected readFile(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .line 103
    .local v1, "count":I
    if-gtz v1, :cond_1

    .line 128
    :cond_0
    return-void

    .line 106
    :cond_1
    new-array v4, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    iput-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    .line 107
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 108
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    new-instance v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    invoke-direct {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;-><init>()V

    aput-object v5, v4, v3

    .line 110
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->maxLength()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "contentsType":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    aget-object v4, v4, v3

    invoke-static {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    aget-object v4, v4, v3

    const/16 v5, 0x100

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->crid:Ljava/lang/String;

    .line 122
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    aget-object v4, v4, v3

    const/16 v5, 0x184

    invoke-virtual {p0, p1, v5}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->title:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->startTime:J

    .line 126
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->info:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->readLong(Ljava/io/InputStream;)J

    move-result-wide v6

    iput-wide v6, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentsInformation;->endTime:J

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v5, "unknown type[%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v2, v6}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
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
    .line 82
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->BROADCAST_DB:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchDatabase;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 87
    iget v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->serviceId:I

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->writeInt(Ljava/io/OutputStream;I)V

    .line 89
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->type:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchContentsType;->maxLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 92
    iget-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->start:J

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 94
    iget-wide v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->end:J

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->writeLong(Ljava/io/OutputStream;J)V

    .line 96
    iget-object v0, p0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->expression:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwGetContentListSender;->writeExpression(Ljava/io/OutputStream;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 97
    return-void
.end method
