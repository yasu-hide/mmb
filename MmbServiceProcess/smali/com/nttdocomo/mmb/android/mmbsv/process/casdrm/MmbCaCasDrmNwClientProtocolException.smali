.class public Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
.super Lorg/apache/http/client/ClientProtocolException;
.source "MmbCaCasDrmNwClientProtocolException.java"


# static fields
.field private static final serialVersionUID:J = 0x529b093f6f089ed2L


# instance fields
.field public mmbErrorCode:I

.field public mmbErrorStatusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "aErrorCode"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/http/client/ClientProtocolException;-><init>()V

    .line 60
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorStatusCode:I

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "aErrorCode"    # I
    .param p2, "aErrorStatusCode"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/http/client/ClientProtocolException;-><init>()V

    .line 88
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    .line 89
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorStatusCode:I

    .line 93
    return-void
.end method
