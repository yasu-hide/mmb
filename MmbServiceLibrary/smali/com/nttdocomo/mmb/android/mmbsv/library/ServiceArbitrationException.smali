.class public Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "ServiceArbitrationException.java"


# static fields
.field private static final serialVersionUID:J = -0x2ec0368975fef7f0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "aErrorCode"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method
