.class public Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceSecurityException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
.source "ServiceSecurityException.java"


# static fields
.field private static final serialVersionUID:J = 0x1d25d1dac37cb9a0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method
