.class public interface abstract Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwClientIf.java"


# static fields
.field public static final RES_NG_ALREADY_EXISTS_VALID_LICENSE:I = -0x6b

.field public static final RES_NG_ARGUMENT:I = -0x2

.field public static final RES_NG_CHANGE_CAS_CLIENT_ID:I = -0x66

.field public static final RES_NG_CHECK_CARDID:I = -0x71

.field public static final RES_NG_CHECK_CAS_CLIENTID:I = -0x6d

.field public static final RES_NG_CHECK_CRID:I = -0x6e

.field public static final RES_NG_CHECK_ENTITYID:I = -0x70

.field public static final RES_NG_CHECK_MESSAGEID:I = -0x6f

.field public static final RES_NG_CHECK_RECEIVERID:I = -0x6c

.field public static final RES_NG_FALSIFICATION:I = -0x72

.field public static final RES_NG_FILE_IO:I = -0x4

.field public static final RES_NG_GENERAL:I = -0x1

.field public static final RES_NG_IN_USE:I = -0x69

.field public static final RES_NG_MAXIMUM_NUMBER_EXCESS:I = -0x6a

.field public static final RES_NG_MEMORY:I = -0x3

.field public static final RES_NG_NOT_DELETE_MANAGEMENT_INFO:I = -0x78

.field public static final RES_NG_NOT_DELETE_PART:I = -0x75

.field public static final RES_NG_NOT_EXECUTED_INIT_SETTING:I = -0x67

.field public static final RES_NG_NOT_FOUND:I = -0x68

.field public static final RES_NG_NOT_INIT_SETTING_AND_SECURE_CLOCK:I = -0x79

.field public static final RES_NG_NOT_SUUPPORT_CAS_FUNCTION:I = -0x65

.field public static final RES_NG_NO_UIM:I = -0x76

.field public static final RES_NG_SECURE_CLOCK:I = -0x77

.field public static final RES_NG_SECURE_CONNECT_TO_KEYMGR:I = -0x64

.field public static final RES_OK:I


# virtual methods
.method public abstract cancelAsyncProcess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract checkCompletedInitSetting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract checkSupportCasFunction()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract createKl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deleteAccumulatedCrId([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deleteAccumulatedCridManagementInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deleteAllLicenseInfo(B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deleteInvalidLicenseInfo(BLjava/util/Date;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwDeleteInvalidLicenseInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deleteLicenseInfo(B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deleteManagementInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deletePreviewManagementInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract deleteTierManagementInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract getAccumulatedCrIdCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract getCaSystemId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract getLicenseCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract getLicenseInfo(B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLicenseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract getRequestEmmInfo()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestEmmInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract getRequestLicenseInfo([B[B[B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRequestLicenseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract getTierInfo(B)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwTierInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract initializeUseFlg()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract registerAccumulatedCrId([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract registerAccumulatedCrIdMaxNumber()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract registerKl([BLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract registerLicense(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwRegisterLicenseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract registerLicenseMaxNumber()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract registerPreviewMaxNumber()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract searchAccumulatedCrId([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract secureAccess(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract uninitialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method

.method public abstract updateEmm(B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
        }
    .end annotation
.end method
