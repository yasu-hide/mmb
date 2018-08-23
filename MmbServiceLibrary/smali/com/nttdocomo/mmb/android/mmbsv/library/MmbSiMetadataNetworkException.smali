.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "MmbSiMetadataNetworkException.java"


# static fields
.field public static final RES_NG_GENERAL:I = -0x80000000

.field private static final RES_NG_NETWORK_BASE:I = -0x2000000

.field public static final RES_NG_NETWORK_CLIENT:I = -0x2000000

.field public static final RES_NG_NETWORK_NETWORK_IO:I = -0x2000008

.field public static final RES_NG_NETWORK_PARAMETER:I = -0x3000000

.field public static final RES_NG_NETWORK_PROTOCOL:I = -0x2000007

.field public static final RES_NG_NETWORK_RESPONSECODE_OTHER:I = -0x2000002

.field public static final RES_NG_NETWORK_RESPONSEDATA:I = -0x200000a

.field private static final RES_NG_NETWORK_RESPONSE_BASE:I = -0x3000000

.field public static final RES_NG_NETWORK_SERVER:I = -0x2000001

.field public static final RES_NG_NETWORK_SERVER_INTERNAL_ERROR:I = -0x3000008

.field public static final RES_NG_NETWORK_TIMEOUT:I = -0x2000003

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

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 148
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->mmbResultCode:I

    .line 152
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aDetailMessage"    # Ljava/lang/String;
    .param p3, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 197
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->mmbResultCode:I

    .line 205
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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 126
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
