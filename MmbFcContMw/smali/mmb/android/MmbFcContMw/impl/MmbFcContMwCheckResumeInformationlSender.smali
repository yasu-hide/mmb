.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwCheckResumeInformationlSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_COMMON_CHECK_RESUME_INFORMATION"


# instance fields
.field private crid:Ljava/lang/String;

.field private returnCd:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "MESSAGE_COMMON_CHECK_RESUME_INFORMATION"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->crid:Ljava/lang/String;

    .line 36
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->returnCd:I

    .line 45
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->crid:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->maxLength()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "type":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->getInt()I

    move-result v2

    iput v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->returnCd:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "unknown type[%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected doSendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "aOutput"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCheckResumeInformationlSender;->returnCd:I

    return v0
.end method
