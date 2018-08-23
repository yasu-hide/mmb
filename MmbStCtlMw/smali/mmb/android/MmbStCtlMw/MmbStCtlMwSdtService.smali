.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;
.super Ljava/lang/Object;
.source "MmbStCtlMwSdtService.java"


# instance fields
.field public mAps_control_data:C

.field public mCa_contract_descriptor_flag:C

.field public mCa_system_id:I

.field public mCa_unit_id:C

.field public mComponent_control_flag:C

.field public mComponent_tag:[S

.field public mContract_verification_info:[S

.field public mContract_verification_info_length:S

.field public mCopy_control_type:C

.field public mCopy_descriptor_flag:C

.field public mDigital_recording_control_data:C

.field public mFree_ca_mode:C

.field public mMaximum_bit_rate:S

.field public mMaximum_bit_rate_flag:C

.field public mNum_of_component:C

.field public mService_id:I

.field public mService_name:[S

.field public mService_name_length:C

.field public mService_provider_name:[S

.field public mService_provider_name_length:C

.field public mService_type:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_provider_name:[S

    .line 40
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mService_name:[S

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mComponent_tag:[S

    .line 68
    const/16 v0, 0xac

    new-array v0, v0, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwSdtService;->mContract_verification_info:[S

    return-void
.end method
