.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwGetFdtInstanceStateSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_GET_FDT_INSTANCE_STATE"


# instance fields
.field private crid:Ljava/lang/String;

.field private state:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "MESSAGE_MMBFCCONTMW_GET_FDT_INSTANCE_STATE"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->crid:Ljava/lang/String;

    .line 31
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_IS_NOTHING:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->state:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    .line 41
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->crid:Ljava/lang/String;

    .line 42
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
    .line 55
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->maxLength()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "receiveState":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    move-result-object v2

    iput-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->state:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->log:Lmmb/android/MmbFcPgInfoMw/common/MmbFcPgInfoMwLogUtil;

    const-string v3, "unknown type[%d]."

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
    .line 50
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public getState()Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwGetFdtInstanceStateSender;->state:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    return-object v0
.end method
