.class public Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
.source "ServiceConnectionException.java"


# static fields
.field private static final serialVersionUID:J = 0x7631cb5e5e0b42d3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method
