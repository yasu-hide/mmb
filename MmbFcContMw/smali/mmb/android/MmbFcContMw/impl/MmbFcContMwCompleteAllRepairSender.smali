.class public Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;
.super Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;
.source "MmbFcContMwCompleteAllRepairSender.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "MESSAGE_MMBFCCONTMW_COMPLETE_ALL_REPAIR"


# instance fields
.field private contentsCrid:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private returnCd:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aClientId"    # I
    .param p2, "aContentsCrid"    # Ljava/lang/String;
    .param p3, "aLocation"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v0, "MESSAGE_MMBFCCONTMW_COMPLETE_ALL_REPAIR"

    invoke-direct {p0, p1, v0}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwAbstractBaseSender;-><init>(ILjava/lang/String;)V

    .line 30
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->contentsCrid:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->location:Ljava/lang/String;

    .line 36
    const/high16 v0, -0x80000000

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->returnCd:I

    .line 45
    iput-object p2, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->contentsCrid:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->location:Ljava/lang/String;

    .line 47
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
    .line 59
    invoke-virtual {p0, p1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->returnCd:I

    .line 60
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
    const/16 v1, 0x100

    .line 52
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->contentsCrid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->location:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->writeString(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public getReturnCd()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lmmb/android/MmbFcContMw/impl/MmbFcContMwCompleteAllRepairSender;->returnCd:I

    return v0
.end method
