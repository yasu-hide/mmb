.class public Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "ServiceBmlBrowserException.java"


# static fields
.field private static final serialVersionUID:J = 0x2303a16333846b9aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method
