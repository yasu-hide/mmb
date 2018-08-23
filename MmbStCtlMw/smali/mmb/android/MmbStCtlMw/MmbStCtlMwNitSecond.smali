.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;
.super Ljava/lang/Object;
.source "MmbStCtlMwNitSecond.java"


# instance fields
.field public mChannel:I

.field public mOriginal_network_id:I

.field public mPartialreception_service_id:[I

.field public mPartialreception_service_id_count:C

.field public mServicelist_count:C

.field public mServicelist_service_id:[I

.field public mServicelist_service_type:[S

.field public mTransmission_type_count:C

.field public mTransmission_type_info:[S

.field public mTransport_stream_id:I

.field public mTsInfo_num_of_service:[S


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-array v0, v2, [I

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_service_id:[I

    .line 37
    new-array v0, v2, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mServicelist_service_type:[S

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mPartialreception_service_id:[I

    .line 55
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mTransmission_type_info:[S

    .line 57
    new-array v0, v1, [S

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwNitSecond;->mTsInfo_num_of_service:[S

    return-void
.end method
