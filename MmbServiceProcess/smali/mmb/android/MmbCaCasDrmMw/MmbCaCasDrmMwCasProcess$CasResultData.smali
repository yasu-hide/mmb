.class public Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwCasProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CasResultData"
.end annotation


# instance fields
.field private mCasRes:I

.field private mData:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "aCasRes"    # I
    .param p2, "aData"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->mCasRes:I

    .line 76
    iput-object p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->mData:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method getResult()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;->mCasRes:I

    return v0
.end method
