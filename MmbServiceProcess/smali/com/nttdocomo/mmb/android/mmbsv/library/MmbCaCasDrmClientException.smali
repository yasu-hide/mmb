.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "MmbCaCasDrmClientException.java"


# static fields
.field private static final serialVersionUID:J = 0x378535fb63aba245L


# instance fields
.field public mmbResultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(I)V

    .line 282
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 286
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 331
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 335
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aDetailMessage"    # Ljava/lang/String;
    .param p3, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 380
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 388
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 352
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 356
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 360
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 410
    .local v0, "result":I
    return v0
.end method
