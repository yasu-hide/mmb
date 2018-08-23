.class interface abstract Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwCasProcess.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
    }
.end annotation


# static fields
.field public static final PROCESS_GET_REQUEST_EMM_INFO:B = 0x5t

.field public static final PROCESS_TYPE_AUTHENTICATE:B = 0x0t

.field public static final PROCESS_TYPE_CANCEL_ASYNCHRONOUS_PROCESS:B = 0x1ft

.field public static final PROCESS_TYPE_CHECK_COMPLETED_INIT_SETTING:B = 0x2t

.field public static final PROCESS_TYPE_CHECK_SUPPPRT_CAS_FUNCTION:B = 0x1t

.field public static final PROCESS_TYPE_CREATE_KL:B = 0x3t

.field public static final PROCESS_TYPE_DELETE_ACCUMULATED_CRID:B = 0x12t

.field public static final PROCESS_TYPE_DELETE_ACCUMULATED_CRID_MANAGEMENT_INFO:B = 0x53t

.field public static final PROCESS_TYPE_DELETE_ALL_LICENSE:B = 0xet

.field public static final PROCESS_TYPE_DELETE_INVALID_LICENSE:B = 0xft

.field public static final PROCESS_TYPE_DELETE_LICENSE:B = 0xdt

.field public static final PROCESS_TYPE_DELETE_MANAGEMENT_INFO:B = 0x13t

.field public static final PROCESS_TYPE_DELETE_PREVIEW_MANAGEMENT_INFO:B = 0x52t

.field public static final PROCESS_TYPE_DELETE_TIER_MANAGEMENT_INFO:B = 0x50t

.field public static final PROCESS_TYPE_GET_ACCUMULATED_CRID_COUNT:B = 0x10t

.field public static final PROCESS_TYPE_GET_CA_SYSTEM_ID:B = 0x1et

.field public static final PROCESS_TYPE_GET_LICENSE_COUNT:B = 0x9t

.field public static final PROCESS_TYPE_GET_LICENSE_INFO:B = 0xat

.field public static final PROCESS_TYPE_GET_REQUEST_LICENSE_INFO:B = 0xbt

.field public static final PROCESS_TYPE_GET_TIER_INFO:B = 0x8t

.field public static final PROCESS_TYPE_INITIALIZE_USE_FLAG:B = 0x1ct

.field public static final PROCESS_TYPE_REGISTER_ACCUMULATED_CRID:B = 0x11t

.field public static final PROCESS_TYPE_REGISTER_ACCUMULATED_CRID_MAX_NUM:B = 0x63t

.field public static final PROCESS_TYPE_REGISTER_KL:B = 0x4t

.field public static final PROCESS_TYPE_REGISTER_LICENSE:B = 0xct

.field public static final PROCESS_TYPE_REGISTER_LICENSE_MAX_NUM:B = 0x61t

.field public static final PROCESS_TYPE_REGISTER_PREVIEW_INFO_MAX_NUM:B = 0x62t

.field public static final PROCESS_TYPE_SEARCH_ACCUMULATED_CRID:B = 0x22t

.field public static final PROCESS_TYPE_SECURE_ACCESS:B = 0x1dt

.field public static final PROCESS_TYPE_UPDATE_EMM_APP:B = 0x6t


# virtual methods
.method public abstract getCasResultData()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwCasProcess$CasResultData;
.end method

.method public abstract getType()B
.end method
