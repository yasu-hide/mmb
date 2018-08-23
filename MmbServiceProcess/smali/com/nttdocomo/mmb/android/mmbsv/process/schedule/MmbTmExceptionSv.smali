.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;
.super Ljava/lang/Exception;
.source "MmbTmExceptionSv.java"


# static fields
.field private static final serialVersionUID:J = 0x7f827c8061796ed1L


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "aErrorCode"    # I
    .param p2, "aErrorMessage"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->errorCode:I

    .line 76
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->errorCode:I

    .line 80
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmExceptionSv;->errorCode:I

    return v0
.end method
