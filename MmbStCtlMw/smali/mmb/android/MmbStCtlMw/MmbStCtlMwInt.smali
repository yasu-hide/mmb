.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwInt;
.super Ljava/lang/Object;
.source "MmbStCtlMwInt.java"


# instance fields
.field public mPlatform_id:J

.field public mPlatform_name:[S

.field public mPlatform_name_length:C

.field public mPlatformprovider_name:[S

.field public mPlatformprovider_name_length:C


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x30

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwInt;->mPlatform_name:[S

    .line 45
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwInt;->mPlatformprovider_name:[S

    return-void
.end method
