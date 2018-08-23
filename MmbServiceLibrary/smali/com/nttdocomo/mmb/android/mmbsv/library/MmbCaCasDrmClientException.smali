.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "MmbCaCasDrmClientException.java"


# static fields
.field public static final RES_NG_ALREADY_EXISTS_VALID_LICENSE:I = -0xb

.field public static final RES_NG_ARGUMENT:I = -0x1

.field public static final RES_NG_CANCEL:I = -0x1000007

.field public static final RES_NG_CHANGE_CAS_CLIENT_ID:I = -0x6

.field public static final RES_NG_CHECK_CARDID:I = -0x11

.field public static final RES_NG_CHECK_CAS_CLIENTID:I = -0xd

.field public static final RES_NG_CHECK_CRID:I = -0xe

.field public static final RES_NG_CHECK_ENTITYID:I = -0x10

.field public static final RES_NG_CHECK_MESSAGEID:I = -0xf

.field public static final RES_NG_CHECK_RECEIVERID:I = -0xc

.field public static final RES_NG_CONTENTS_DATA:I = -0x1000008

.field public static final RES_NG_DATABASE:I = -0x1000004

.field public static final RES_NG_FALSIFICATION:I = -0x12

.field public static final RES_NG_FILE_IO:I = -0x3

.field public static final RES_NG_GENERAL:I = -0x80000000

.field public static final RES_NG_INITIALIZE:I = -0x1000006

.field private static final RES_NG_INTERNAL_BASE:I = -0x1000000

.field public static final RES_NG_IN_USE:I = -0x9

.field public static final RES_NG_LOW_BATTERY:I = -0x1000003

.field public static final RES_NG_MAXIMUM_NUMBER_EXCESS:I = -0xa

.field public static final RES_NG_MEMORY:I = -0x2

.field private static final RES_NG_MW_BASE:I = -0x1

.field private static final RES_NG_NETWORK_BASE:I = -0x2000000

.field public static final RES_NG_NETWORK_CHECK_KL:I = -0x3000003

.field public static final RES_NG_NETWORK_CHECK_KM:I = -0x300000a

.field public static final RES_NG_NETWORK_CLIENT:I = -0x2000000

.field public static final RES_NG_NETWORK_CUSTOMERID_HAS_EXPIRED:I = -0x3000009

.field public static final RES_NG_NETWORK_INIT_UNINITIALIZED:I = -0x3000002

.field public static final RES_NG_NETWORK_INVOLUNTARY_TERMINATION:I = -0x3000012

.field public static final RES_NG_NETWORK_NETWORK_IO:I = -0x2000008

.field public static final RES_NG_NETWORK_NON_CRID:I = -0x3000010

.field public static final RES_NG_NETWORK_NON_LICENSE_ISSUED:I = -0x3000005

.field public static final RES_NG_NETWORK_PARAMETER:I = -0x3000000

.field public static final RES_NG_NETWORK_PRESEG33COMMONID:I = -0x2000009

.field public static final RES_NG_NETWORK_PROCESSING_TYPE:I = -0x2000006

.field public static final RES_NG_NETWORK_PROTOCOL:I = -0x2000007

.field public static final RES_NG_NETWORK_REGIONAL_LIMITS:I = -0x300000f

.field public static final RES_NG_NETWORK_RESPONSECODE_OTHER:I = -0x2000002

.field public static final RES_NG_NETWORK_RESPONSEDATA:I = -0x200000a

.field private static final RES_NG_NETWORK_RESPONSE_BASE:I = -0x3000000

.field public static final RES_NG_NETWORK_RESPONSE_LENGTH:I = -0x2000004

.field public static final RES_NG_NETWORK_RESPONSE_TIMEOUT:I = -0x200000b

.field public static final RES_NG_NETWORK_SERVER:I = -0x2000001

.field public static final RES_NG_NETWORK_SERVER_INTERNAL_ERROR:I = -0x3000008

.field public static final RES_NG_NETWORK_SERVER_TEMPORARY_STOP:I = -0x3000011

.field public static final RES_NG_NETWORK_SESSION:I = -0x200000c

.field public static final RES_NG_NETWORK_STOP_CAS_CLIENT:I = -0x300000d

.field public static final RES_NG_NETWORK_STOP_CUSTOMERID:I = -0x300000c

.field public static final RES_NG_NETWORK_STOP_RECEIVERID:I = -0x300000e

.field public static final RES_NG_NETWORK_TIMEOUT:I = -0x2000003

.field public static final RES_NG_NETWORK_UNACQUIRE_LICENSE:I = -0x3000004

.field public static final RES_NG_NETWORK_UNSIGNED:I = -0x3000001

.field public static final RES_NG_NETWORK_UNSIGNED_AGREEMENTS:I = -0x300000b

.field public static final RES_NG_NETWORK_VERSION:I = -0x2000005

.field public static final RES_NG_NOT_ACTION_CAS_FUNCTION:I = -0x16

.field public static final RES_NG_NOT_DELETE_PART:I = -0x13

.field public static final RES_NG_NOT_EXECUTED_INIT_SETTING:I = -0x7

.field public static final RES_NG_NOT_FOUND:I = -0x8

.field public static final RES_NG_NOT_INIT_SETTING_AND_SECURE_CLOCK:I = -0x17

.field public static final RES_NG_NOT_SUUPPORT_CAS_FUNCTION:I = -0x5

.field public static final RES_NG_NO_UIM:I = -0x14

.field public static final RES_NG_OUT_OF_RANGE:I = -0x1000002

.field public static final RES_NG_OVERSEAS:I = -0x1000001

.field public static final RES_NG_PARENTAL:I = -0x1000009

.field public static final RES_NG_PREFERENCE:I = -0x100000a

.field public static final RES_NG_SCHDULE:I = -0x1000005

.field public static final RES_NG_SECURE_CLOCK:I = -0x1000000

.field public static final RES_NG_SECURE_CONNECT_TO_KEYMGR:I = -0x4

.field public static final RES_NG_UNNECESSARY_LICENSE:I = -0x15

.field public static final RES_OK:I = 0x0

.field private static final serialVersionUID:J = 0x378535fb63aba245L


# instance fields
.field public mmbResultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aResultCode"    # I

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(I)V

    .line 282
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 286
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 331
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 335
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aDetailMessage"    # Ljava/lang/String;
    .param p3, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 380
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 388
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "aResultCode"    # I
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 352
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 356
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 360
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 309
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 410
    .local v0, "result":I
    return v0
.end method

.method protected setErrorCode(I)V
    .locals 0
    .param p1, "aErrorCode"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 433
    return-void
.end method
