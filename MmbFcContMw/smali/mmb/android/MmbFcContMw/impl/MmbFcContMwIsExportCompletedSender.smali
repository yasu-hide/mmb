.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwIsExportCompletedSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_IS_EXPORT_COMPLETED"


# instance fields
.field private crid:Ljava/lang/String;

.field private result:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "MESSAGE_MMBFCCONTMW_IS_EXPORT_COMPLETED"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->crid:Ljava/lang/String;

    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->result:Z

    .line 21
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->crid:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected doReceiveData(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->readBoolean(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->result:Z

    .line 32
    return-void
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
    .line 26
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public getResult()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwIsExportCompletedSender;->result:Z

    return v0
.end method
