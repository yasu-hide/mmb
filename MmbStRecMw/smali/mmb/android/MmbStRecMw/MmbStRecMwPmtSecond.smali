.class public Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;
.super Ljava/lang/Object;
.source "MmbStRecMwPmtSecond.java"


# instance fields
.field public mAps_control_data:[C

.field public mComponent_control_flag:[C

.field public mComponent_tag:[S

.field public mCopy_control_type:[C

.field public mCopy_descriptor_flag:[C

.field public mDigital_recording_control_data:[C

.field public mMaximum_bit_rate:[S

.field public mMaximum_bit_rate_flag:[C

.field public mStream_type:[S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mStream_type:[S

    .line 29
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mComponent_tag:[S

    .line 35
    new-array v0, v1, [C

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mCopy_descriptor_flag:[C

    .line 37
    new-array v0, v1, [C

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mDigital_recording_control_data:[C

    .line 39
    new-array v0, v1, [C

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mMaximum_bit_rate_flag:[C

    .line 41
    new-array v0, v1, [C

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mComponent_control_flag:[C

    .line 43
    new-array v0, v1, [C

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mCopy_control_type:[C

    .line 45
    new-array v0, v1, [C

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mAps_control_data:[C

    .line 47
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwPmtSecond;->mMaximum_bit_rate:[S

    return-void
.end method
