.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.super Ljava/lang/RuntimeException;
.source "ServiceException.java"


# static fields
.field private static final serialVersionUID:J = 0x5dfc6210961bf5e4L


# instance fields
.field protected mErrorCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "aErrorCode"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 152
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->mErrorCode:I

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 132
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->mErrorCode:I

    .line 177
    .local v0, "result":I
    return v0
.end method
