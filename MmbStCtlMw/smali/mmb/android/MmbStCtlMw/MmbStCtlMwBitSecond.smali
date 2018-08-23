.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;
.super Ljava/lang/Object;
.source "MmbStCtlMwBitSecond.java"


# instance fields
.field public mBroadcaster_id:S

.field public mBroadcaster_name:[S

.field public mBroadcaster_name_length:C

.field public mService_count:C

.field public mService_id:[I

.field public mService_type:[S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x14

    new-array v0, v0, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mBroadcaster_name:[S

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mService_id:[I

    .line 43
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwBitSecond;->mService_type:[S

    return-void
.end method
