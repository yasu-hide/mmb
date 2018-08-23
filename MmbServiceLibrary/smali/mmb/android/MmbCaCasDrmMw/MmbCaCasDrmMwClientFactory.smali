.class public Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientFactory;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwClientFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newClient()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClientIf;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;

    invoke-direct {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;-><init>()V

    .line 35
    .local v0, "client":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwClient;
    return-object v0
.end method
