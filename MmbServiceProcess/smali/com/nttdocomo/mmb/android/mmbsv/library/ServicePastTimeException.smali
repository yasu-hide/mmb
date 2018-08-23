.class public Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "ServicePastTimeException.java"


# static fields
.field private static final serialVersionUID:J = -0x37b4b1360d6e7c48L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 101
    return-void
.end method
