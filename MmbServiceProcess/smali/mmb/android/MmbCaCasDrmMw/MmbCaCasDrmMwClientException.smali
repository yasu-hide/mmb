.class public Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;
.super Ljava/lang/Exception;
.source "MmbCaCasDrmMwClientException.java"


# instance fields
.field private mCasResType:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "aCasResType"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->mCasResType:I

    .line 38
    iput p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->mCasResType:I

    .line 40
    return-void
.end method


# virtual methods
.method public getCasResType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientException;->mCasResType:I

    return v0
.end method
