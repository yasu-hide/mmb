.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "MmbSiMetadataNetworkException.java"


# static fields
.field private static final serialVersionUID:J = 0x14a1e6f11d231a07L


# instance fields
.field public mmbResultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 99
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->mmbResultCode:I

    .line 103
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 173
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->mmbResultCode:I

    .line 177
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->mmbResultCode:I

    .line 227
    .local v0, "result":I
    return v0
.end method
