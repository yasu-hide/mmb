.class public Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "ProcessAbortException.java"


# static fields
.field private static final serialVersionUID:J = -0x10607e93cda283f0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "aErrorCode"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 123
    return-void
.end method
