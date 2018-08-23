.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
.super Lorg/apache/http/client/ClientProtocolException;
.source "MmbFcComplementTerminatedException.java"


# static fields
.field private static final serialVersionUID:J = 0x7bad443f76dcf09L


# instance fields
.field mmbErrInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

.field mmbErrorCode:I

.field mmbRetryFlg:Z


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "aErrorCode"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/http/client/ClientProtocolException;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z

    .line 81
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    .line 85
    return-void
.end method

.method constructor <init>(ILcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V
    .locals 1
    .param p1, "aErrorCode"    # I
    .param p2, "aErrInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/apache/http/client/ClientProtocolException;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z

    .line 106
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    .line 107
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    .line 111
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1
    .param p1, "aErrorCode"    # I
    .param p2, "aRetryFlg"    # Z

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/apache/http/client/ClientProtocolException;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z

    .line 132
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    .line 133
    iput-boolean p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbRetryFlg:Z

    .line 137
    return-void
.end method
