.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwExportCompleteSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_EXPORT_COMPLETE"


# instance fields
.field private crid:Ljava/lang/String;

.field private doDelete:Z

.field private result:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "aClientId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aDelete"    # Z

    .prologue
    .line 23
    const-string v0, "MESSAGE_MMBFCCONTMW_EXPORT_COMPLETE"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->crid:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->doDelete:Z

    .line 20
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->result:I

    .line 24
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->crid:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->doDelete:Z

    .line 26
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
    .line 37
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->result:I

    .line 38
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
    .line 30
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->crid:Ljava/lang/String;

    const/16 v1, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 32
    iget-boolean v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->doDelete:Z

    invoke-virtual {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->writeBoolean(Ljava/io/OutputStream;Z)V

    .line 33
    return-void
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwExportCompleteSender;->result:I

    return v0
.end method
