.class public Lmmb/android/MmbStRecMw/MmbStRecMwEitProgramInfo;
.super Ljava/lang/Object;
.source "MmbStRecMwEitProgramInfo.java"


# instance fields
.field public mDuration:I

.field public mEvent_id:I

.field public mEvent_name_char:[S

.field public mEvent_name_char_length:C

.field public mFree_ca_mode:C

.field public mStart_time:J

.field public mText_char:[S

.field public mText_char_length:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x60

    new-array v0, v0, [S

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwEitProgramInfo;->mEvent_name_char:[S

    .line 40
    const/16 v0, 0xc0

    new-array v0, v0, [S

    iput-object v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwEitProgramInfo;->mText_char:[S

    return-void
.end method
