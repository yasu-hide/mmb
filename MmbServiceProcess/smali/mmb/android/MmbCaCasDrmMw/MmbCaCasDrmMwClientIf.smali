.class public interface abstract Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwClientIf.java"


# virtual methods
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
