.class public Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbCfConflictModuleSv.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictExceptionSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfRecConflictPreviousSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictLateSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictPreviousSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictNotSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    }
.end annotation


# static fields
.field static final MMBCF_CALLBACK_LOCK:Ljava/lang/Object;

.field private static final MMBCF_CONFLICT_LOCK:Ljava/lang/Object;

.field private static final MMBCF_LOCATION_LOCK:Ljava/lang/Object;

.field private static final PARTITION_AREA_NUM:I

.field private static final TARGET_AREA:[[D

.field private static conflictEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;",
            ">;"
        }
    .end annotation
.end field

.field private static decoderFlag:Z

.field private static mServiceState:I

.field private static final matrixTbl:[[[B

.field public static mmbCfCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;",
            ">;"
        }
    .end annotation
.end field

.field public static mmbCfMngClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mmbCfMngStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;",
            ">;"
        }
    .end annotation
.end field

.field public static mmbCfTunerStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;",
            ">;"
        }
    .end annotation
.end field

.field private static mmbCheckServiceId:I

.field private static mmbRecPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final recMatrixTbl:[[[B


# instance fields
.field private final PERIOD_END_CONFIRM:I

.field private final TIMER_LOOP_COUNT_GPS_LOCATION:I

.field private final TIMER_LOOP_COUNT_NETWORK_LOCATION:I

.field private final TIMER_WAIT_DILAY:I

.field private final WAIT_COUNT_END_CONFIRM:I

.field private aResourceUserTmp:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

.field private locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

.field private locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mContext:Landroid/content/Context;

.field private mStMiddle:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

.field mUpdater:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;

.field private mmbCallReleaseResourceTimerFlag:I

.field public mmbPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mmbTunerPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->MMBCF_CONFLICT_LOCK:Ljava/lang/Object;

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->MMBCF_CALLBACK_LOCK:Ljava/lang/Object;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->MMBCF_LOCATION_LOCK:Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    .line 253
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfCallbackList:Landroid/os/RemoteCallbackList;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    .line 383
    const/16 v0, 0x13

    new-array v0, v0, [[[B

    const/16 v1, 0xb

    new-array v1, v1, [[B

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    aput-object v2, v1, v8

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    aput-object v2, v1, v9

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [B

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v5, [B

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v5, [B

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v5, [B

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v5, [B

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v5, [B

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xb

    new-array v1, v1, [[B

    new-array v2, v5, [B

    fill-array-data v2, :array_b

    aput-object v2, v1, v8

    new-array v2, v5, [B

    fill-array-data v2, :array_c

    aput-object v2, v1, v9

    new-array v2, v5, [B

    fill-array-data v2, :array_d

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [B

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_f

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v5, [B

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v5, [B

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v5, [B

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v5, [B

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v5, [B

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/16 v1, 0xb

    new-array v1, v1, [[B

    new-array v2, v5, [B

    fill-array-data v2, :array_16

    aput-object v2, v1, v8

    new-array v2, v5, [B

    fill-array-data v2, :array_17

    aput-object v2, v1, v9

    new-array v2, v5, [B

    fill-array-data v2, :array_18

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [B

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_1a

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v5, [B

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v5, [B

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v5, [B

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v5, [B

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v5, [B

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_21

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_22

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_23

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_24

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_25

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_26

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_27

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_28

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_29

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_2a

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_2b

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v1, v1, [[B

    new-array v2, v5, [B

    fill-array-data v2, :array_2c

    aput-object v2, v1, v8

    new-array v2, v5, [B

    fill-array-data v2, :array_2d

    aput-object v2, v1, v9

    new-array v2, v5, [B

    fill-array-data v2, :array_2e

    aput-object v2, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [B

    fill-array-data v3, :array_2f

    aput-object v3, v1, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_30

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v3, v5, [B

    fill-array-data v3, :array_31

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v5, [B

    fill-array-data v3, :array_32

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_33

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v5, [B

    fill-array-data v3, :array_34

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v5, [B

    fill-array-data v3, :array_35

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v5, [B

    fill-array-data v3, :array_36

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_37

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_38

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_39

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_3a

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_3b

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_3c

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_3d

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_3e

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_3f

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_40

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_41

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_42

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_43

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_44

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_45

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_46

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_47

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_48

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_49

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_4a

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_4b

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_4c

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_4d

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_4e

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_4f

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_50

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_51

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_52

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_53

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_54

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_55

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_56

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_57

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_58

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_59

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_5a

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_5b

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_5c

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_5d

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_5e

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_5f

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_60

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_61

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_62

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_63

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_64

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_65

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_66

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_67

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_68

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_69

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_6a

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_6b

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_6c

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_6d

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_6e

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_6f

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_70

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_71

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_72

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_73

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_74

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_75

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_76

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_77

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_78

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_79

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_7a

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_7b

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_7c

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_7d

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_7e

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_7f

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_80

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_81

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_82

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_83

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_84

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_85

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_86

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_87

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_88

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_89

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_8a

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_8b

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_8c

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_8d

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_8e

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_8f

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_90

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_91

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_92

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_93

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_94

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_95

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_96

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_97

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_98

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_99

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_9a

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_9b

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_9c

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_9d

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_9e

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_9f

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_a0

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_a1

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_a2

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_a3

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_a4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_a5

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_a6

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_a7

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_a8

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_a9

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_aa

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_ab

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_ac

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_ad

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_ae

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_af

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_b0

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_b1

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_b2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_b3

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_b4

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_b5

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_b6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_b7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_b8

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_b9

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_ba

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_bb

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_bc

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_bd

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_be

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_bf

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_c0

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_c1

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_c2

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_c3

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_c4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_c5

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xb

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_c6

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_c7

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_c8

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_c9

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_ca

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_cb

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_cc

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_cd

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [B

    fill-array-data v4, :array_ce

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [B

    fill-array-data v4, :array_cf

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v5, [B

    fill-array-data v4, :array_d0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->matrixTbl:[[[B

    .line 408
    sput-boolean v8, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->decoderFlag:Z

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    .line 440
    const/16 v0, 0xb

    new-array v0, v0, [[D

    new-array v1, v6, [D

    fill-array-data v1, :array_d1

    aput-object v1, v0, v8

    new-array v1, v6, [D

    fill-array-data v1, :array_d2

    aput-object v1, v0, v9

    new-array v1, v6, [D

    fill-array-data v1, :array_d3

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v6, [D

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    new-array v1, v6, [D

    fill-array-data v1, :array_d5

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v6, [D

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [D

    fill-array-data v2, :array_d7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [D

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [D

    fill-array-data v2, :array_d9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [D

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [D

    fill-array-data v2, :array_db

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TARGET_AREA:[[D

    .line 456
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TARGET_AREA:[[D

    array-length v0, v0

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->PARTITION_AREA_NUM:I

    .line 518
    sput v9, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mServiceState:I

    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    .line 560
    const v0, 0x8000

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCheckServiceId:I

    .line 667
    const/4 v0, 0x7

    new-array v0, v0, [[[B

    const/16 v1, 0x8

    new-array v1, v1, [[B

    aput-object v7, v1, v8

    aput-object v7, v1, v9

    aput-object v7, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [B

    fill-array-data v3, :array_dc

    aput-object v3, v1, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_dd

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x6

    aput-object v7, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_de

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v1, v1, [[B

    aput-object v7, v1, v8

    aput-object v7, v1, v9

    aput-object v7, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [B

    fill-array-data v3, :array_df

    aput-object v3, v1, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_e0

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x6

    aput-object v7, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_e1

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/16 v1, 0x8

    new-array v1, v1, [[B

    aput-object v7, v1, v8

    aput-object v7, v1, v9

    aput-object v7, v1, v5

    const/4 v2, 0x3

    new-array v3, v5, [B

    fill-array-data v3, :array_e2

    aput-object v3, v1, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_e3

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x6

    aput-object v7, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_e4

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x8

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_e5

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_e6

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_e7

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_e8

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_e9

    aput-object v3, v2, v6

    const/4 v3, 0x5

    aput-object v7, v2, v3

    const/4 v3, 0x6

    aput-object v7, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_ea

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v1, v1, [[B

    aput-object v7, v1, v8

    aput-object v7, v1, v9

    aput-object v7, v1, v5

    const/4 v2, 0x3

    aput-object v7, v1, v2

    aput-object v7, v1, v6

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x6

    aput-object v7, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_eb

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x8

    new-array v2, v2, [[B

    aput-object v7, v2, v8

    aput-object v7, v2, v9

    aput-object v7, v2, v5

    const/4 v3, 0x3

    aput-object v7, v2, v3

    aput-object v7, v2, v6

    const/4 v3, 0x5

    aput-object v7, v2, v3

    const/4 v3, 0x6

    aput-object v7, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_ec

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    new-array v2, v2, [[B

    new-array v3, v5, [B

    fill-array-data v3, :array_ed

    aput-object v3, v2, v8

    new-array v3, v5, [B

    fill-array-data v3, :array_ee

    aput-object v3, v2, v9

    new-array v3, v5, [B

    fill-array-data v3, :array_ef

    aput-object v3, v2, v5

    const/4 v3, 0x3

    new-array v4, v5, [B

    fill-array-data v4, :array_f0

    aput-object v4, v2, v3

    new-array v3, v5, [B

    fill-array-data v3, :array_f1

    aput-object v3, v2, v6

    const/4 v3, 0x5

    new-array v4, v5, [B

    fill-array-data v4, :array_f2

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [B

    fill-array-data v4, :array_f3

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [B

    fill-array-data v4, :array_f4

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->recMatrixTbl:[[[B

    return-void

    .line 383
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_12
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_13
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_14
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x2t
        0xat
    .end array-data

    nop

    :array_17
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_18
    .array-data 1
        0x2t
        0xat
    .end array-data

    nop

    :array_19
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 1
        0x2t
        0xat
    .end array-data

    nop

    :array_1b
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_1c
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_1d
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_1f
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_20
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_21
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_22
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_23
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_25
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_27
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_29
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_2b
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_2c
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2d
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_2f
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_30
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_31
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_32
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_33
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_34
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_35
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_36
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_37
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_38
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_39
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3a
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_3b
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3c
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_3d
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3e
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_3f
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_40
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_41
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_42
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_43
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_44
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_45
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_46
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_47
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_48
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_49
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_4a
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4b
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_4d
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4e
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_4f
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_50
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_51
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_52
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_53
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_54
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_55
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_56
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_57
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_58
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_59
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_5a
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5b
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_5c
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5d
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_5e
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_5f
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_60
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_61
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_62
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_63
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_64
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_65
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_66
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_67
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_68
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_69
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_6a
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_6b
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_6c
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_6d
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_6e
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_6f
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_70
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_71
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_72
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_73
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_74
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_75
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_76
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_77
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_78
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_79
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_7a
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_7b
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_7c
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_7d
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_7e
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_7f
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_80
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_81
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_82
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_83
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_84
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_85
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_86
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_87
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_88
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_89
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_8a
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_8b
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_8c
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_8d
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_8e
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_8f
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_90
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_91
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_92
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_93
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_94
    .array-data 1
        0x2t
        0x8t
    .end array-data

    nop

    :array_95
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_96
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_97
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_98
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_99
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_9a
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_9b
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_9c
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_9d
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_9e
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_9f
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_a0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_a1
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_a2
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_a3
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_a4
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_a5
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_a6
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_a7
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_a8
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_a9
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_aa
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_ab
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_ac
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_ad
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_ae
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_af
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_b0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_b1
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_b2
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_b3
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_b4
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_b5
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_b6
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_b7
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_b8
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_b9
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_ba
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_bb
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_bc
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_bd
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_be
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_bf
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_c0
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_c1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_c2
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_c3
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_c4
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_c5
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_c6
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_c7
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_c8
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_c9
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_ca
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_cb
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_cc
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_cd
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_ce
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_cf
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_d0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    .line 440
    nop

    :array_d1
    .array-data 8
        0x4044ad0c83f1e78eL    # 41.35194444
        0x4046c7654325c48bL    # 45.55777778
        0x40616ab3c4be0a92L    # 139.3344444
        0x40629ca3d70a3d71L    # 148.895
    .end array-data

    :array_d2
    .array-data 8
        0x4042654c3b2c7bdfL    # 36.79138889
        0x4044c72ea61b3236L    # 41.55611111
        0x40616545677dbd9bL    # 139.1647222
        0x4061c251eb851eb8L    # 142.0725
    .end array-data

    :array_d3
    .array-data 8
        0x404038acf13a3f6cL    # 32.44277778
        0x404293d70a3d70a4L    # 37.155
        0x4061023b2a0d19c4L    # 136.0697222
        0x40619beb851eb852L    # 140.8725
    .end array-data

    :array_d4
    .array-data 8
        0x4041abf258b7fd07L    # 35.34333333
        0x404346d3a0661182L    # 38.55333333
        0x4060ee61d938ebdaL    # 135.4494444
        0x40617ccccccccccdL    # 139.9
    .end array-data

    :array_d5
    .array-data 8
        0x4040dc83fb77b010L    # 33.72277778
        0x40423b851eb851ecL    # 36.465
        0x4060fb4e81a302cfL    # 135.8533333
        0x406165a740ec595aL    # 139.1766667
    .end array-data

    :array_d6
    .array-data 8
        0x4040b76e5d55c686L    # 33.43305556
        0x4041e3bbbbc2e441L    # 35.77916667
        0x4060c8147ae147aeL    # 134.2525
        0x40610e91a2bfb309L    # 136.4552778
    .end array-data

    :array_d7
    .array-data 8
        0x4040db3c4d63352fL    # 33.71277778
        0x40429f40da7b362cL    # 37.24416667
        0x406058ca86360f87L    # 130.7747222
        0x4060d07d27de6b5bL    # 134.5152778
    .end array-data

    :array_d8
    .array-data 8
        0x404059eb851eb852L    # 32.7025
        0x40414848d1551cbdL    # 34.56472222
        0x4060806666666666L    # 132.0125
        0x4060da4b17f696cbL    # 134.8216667
    .end array-data

    :array_d9
    .array-data 8
        0x403b04c3b29ccad1L    # 27.01861111
        0x40415d1eb851eb85L    # 34.7275
        0x40600350c839c015L    # 128.1036111
        0x406085abcde42401L    # 132.1772222
    .end array-data

    :array_da
    .array-data 8
        0x40380ba9877859d9L    # 24.04555556
        0x403be2b3c4e8fdb0L    # 27.88555556
        0x405ebbc048c56bafL    # 122.9336111
        0x40606aa19073802aL    # 131.3322222
    .end array-data

    :array_db
    .array-data 8
        0x40346cdf012cd0c3L    # 20.42527778
        0x403bba987658f7beL    # 27.72888889
        0x4061023b2a0d19c4L    # 136.0697222
        0x40633f72ea6dc784L    # 153.9827778
    .end array-data

    .line 667
    :array_dc
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_dd
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_de
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_df
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_e0
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_e1
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_e2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_e3
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_e4
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_e5
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_e6
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_e7
    .array-data 1
        0x4t
        0x0t
    .end array-data

    nop

    :array_e8
    .array-data 1
        0x2t
        0x2t
    .end array-data

    nop

    :array_e9
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_ea
    .array-data 1
        0x4t
        0x0t
    .end array-data

    nop

    :array_eb
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_ec
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_ed
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_ee
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_ef
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_f0
    .array-data 1
        0x2t
        0xdt
    .end array-data

    nop

    :array_f1
    .array-data 1
        0x2t
        0xdt
    .end array-data

    nop

    :array_f2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_f3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_f4
    .array-data 1
        0x3t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0xb4

    const/4 v1, 0x0

    .line 685
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 148
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    .line 152
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mStMiddle:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 158
    const/16 v0, 0x64

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryLevel:I

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    .line 167
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;

    invoke-direct {v0, p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$1;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mUpdater:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;

    .line 173
    const/16 v0, 0x8

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->WAIT_COUNT_END_CONFIRM:I

    .line 177
    const/16 v0, 0xfa

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->PERIOD_END_CONFIRM:I

    .line 419
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .line 423
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    .line 477
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TIMER_WAIT_DILAY:I

    .line 481
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TIMER_LOOP_COUNT_NETWORK_LOCATION:I

    .line 485
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TIMER_LOOP_COUNT_GPS_LOCATION:I

    .line 543
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    .line 564
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->aResourceUserTmp:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 568
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCallReleaseResourceTimerFlag:I

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    .line 593
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0xa502

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0xa504

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0xad00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0xa900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0xa91a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0x8a1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0xa306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    const v1, 0xa10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4231
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$1;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 690
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    .line 695
    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->updateLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->notifyReleaseTunerResouce(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getTmmStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCheckServiceId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    .param p2, "x2"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setMmbReleaseResourceSts(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 142
    sput p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mServiceState:I

    return p0
.end method

.method static synthetic access$1600(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->endConfirm(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .param p1, "x1"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCallReleaseResourceTimerFlag:I

    return p1
.end method

.method private changeServiceTypeForMatrix(I)I
    .locals 1
    .param p1, "aServiceType"    # I

    .prologue
    .line 1925
    const v0, 0xa306

    .line 1927
    .local v0, "newServiceType":I
    sparse-switch p1, :sswitch_data_0

    .line 1933
    move v0, p1

    .line 1940
    :goto_0
    return v0

    .line 1930
    :sswitch_0
    const v0, 0xa306

    .line 1931
    goto :goto_0

    .line 1927
    :sswitch_data_0
    .sparse-switch
        0x8a1c -> :sswitch_0
        0xa91a -> :sswitch_0
    .end sparse-switch
.end method

.method private checkAssignResource()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2151
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2153
    .local v3, "result":Ljava/lang/Boolean;
    :try_start_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    .line 2155
    .local v2, "resource":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget-object v1, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    .line 2157
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2158
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2167
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "resource":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :cond_0
    :goto_0
    return-object v3

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    .local v0, "err":Ljava/lang/Exception;
    const-string v4, "Assign Resource NullPointer : restartService"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2162
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0
.end method

.method private checkConfirm(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3129
    .local p1, "aServiceTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3132
    .local v4, "tmpArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 3133
    .local v3, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    const/4 v0, 0x0

    .local v0, "cnt":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "loopcnt":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3134
    iget v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_1

    .line 3138
    const/4 v5, 0x0

    .line 3146
    .end local v0    # "cnt":I
    .end local v2    # "loopcnt":I
    .end local v3    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :goto_1
    return v5

    .line 3133
    .restart local v0    # "cnt":I
    .restart local v2    # "loopcnt":I
    .restart local v3    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3146
    .end local v0    # "cnt":I
    .end local v2    # "loopcnt":I
    .end local v3    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :cond_2
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private declared-synchronized checkConflictInternal(IILjava/lang/String;)I
    .locals 20
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1613
    monitor-enter p0

    const/4 v12, 0x0

    .line 1620
    .local v12, "result":I
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->isServiceTypeValue(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1622
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ServiceType["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    .line 1624
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1625
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1629
    :cond_0
    const/4 v15, 0x5

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryLimit(I)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1631
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    .line 1632
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1633
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1638
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v3

    .line 1639
    .local v3, "casdrmModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkSupportCasFunction()V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1665
    .end local v3    # "casdrmModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :cond_2
    const/16 v15, 0x400

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1673
    const/16 v15, 0x14

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryLimit(I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1675
    const/16 v12, 0x9

    .line 1676
    const-string v15, "checkConflict() result = [Auto receive can\'t start LowBattery]."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v11, v12

    .line 1907
    :goto_0
    monitor-exit p0

    return v11

    .line 1641
    :catch_0
    move-exception v4

    .line 1645
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :try_start_4
    iget v15, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/16 v16, -0x6

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    iget v15, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/16 v16, -0x16

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 1648
    iget v15, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/16 v16, -0x14

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1649
    const/4 v12, 0x5

    .line 1650
    const-string v15, "checkConflict() result = [No UIM]."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v11, v12

    .line 1660
    goto :goto_0

    .line 1654
    :cond_3
    const/4 v12, 0x6

    .line 1655
    const-string v15, "checkConflict() result = [Not Support Tmm Service UIM]."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1685
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_4
    const/16 v15, 0x800

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1692
    const/4 v5, 0x1

    .line 1694
    .local v5, "isMounted":Z
    :try_start_5
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkStorageMount(I)Z
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    .line 1700
    if-nez v5, :cond_5

    .line 1701
    const/4 v12, 0x7

    .line 1702
    :try_start_6
    const-string v15, "checkConflict() result = [SD Card Not mount]."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v12

    .line 1706
    goto :goto_0

    .line 1695
    :catch_1
    move-exception v4

    .line 1696
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v15, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1697
    throw v4

    .line 1711
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v5    # "isMounted":Z
    :cond_5
    const/16 v15, 0x2000

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x2000

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I

    move-result v15

    if-eqz v15, :cond_6

    .line 1720
    const/4 v12, 0x4

    .line 1721
    const-string v15, "checkConflict() result = [%s / Location is Foreign Country]."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v12

    .line 1725
    goto/16 :goto_0

    .line 1730
    :cond_6
    const/16 v15, 0x1000

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x1000

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1737
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkHttpConflictSv()I

    move-result v12

    .line 1738
    const/4 v15, 0x3

    if-ne v12, v15, :cond_7

    .line 1739
    const-string v15, "checkConflict() result = [NW_OUTSIDE]."

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move v11, v12

    .line 1744
    goto/16 :goto_0

    .line 1747
    :cond_8
    sget-object v16, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->MMBCF_CONFLICT_LOCK:Ljava/lang/Object;

    monitor-enter v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1749
    :try_start_7
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->changeServiceTypeForMatrix(I)I

    move-result v15

    and-int/lit16 v14, v15, 0xff

    .line 1750
    .local v14, "subscript":I
    const/16 v15, 0x100

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_a

    .line 1758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 1759
    const/16 v12, 0x8

    .line 1760
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "checkConflict() result = [Tuner already Used].package=["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1765
    monitor-exit v16

    move v11, v12

    goto/16 :goto_0

    .line 1768
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkTunerConflict(I)I

    move-result v11

    .line 1769
    .local v11, "resourcestate":I
    sparse-switch v11, :sswitch_data_0

    .line 1788
    const v15, 0xa10a

    move/from16 v0, p1

    if-eq v15, v0, :cond_a

    .line 1789
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSameTs(I)Z

    move-result v15

    if-nez v15, :cond_a

    .line 1790
    or-int/lit8 v14, v14, 0x1

    .line 1798
    .end local v11    # "resourcestate":I
    :cond_a
    const/16 v15, 0x200

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 1805
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkDecodeConflict()I

    move-result v12

    .line 1806
    if-eqz v12, :cond_b

    .line 1807
    const-string v15, "checkConflict() result = [Decorder Error]."

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1811
    monitor-exit v16

    move v11, v12

    goto/16 :goto_0

    .line 1772
    .restart local v11    # "resourcestate":I
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkAssignResource()Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1773
    const-string v15, "checkConflict() result = [Tuner Using]."

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1777
    const/16 v11, 0xc

    monitor-exit v16

    goto/16 :goto_0

    .line 1902
    .end local v11    # "resourcestate":I
    .end local v14    # "subscript":I
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1782
    .restart local v11    # "resourcestate":I
    .restart local v14    # "subscript":I
    :sswitch_1
    :try_start_9
    const-string v15, "checkConflict() result = [Tuner already Used]."

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    monitor-exit v16

    goto/16 :goto_0

    .line 1816
    .end local v11    # "resourcestate":I
    :cond_b
    const/4 v10, 0x0

    .line 1817
    .local v10, "recMatrixData":[B
    const/16 v9, 0xff

    .line 1818
    .local v9, "preService":I
    const/16 v6, 0xff

    .line 1820
    .local v6, "lateService":I
    const v15, 0x8000

    const v17, 0x8000

    and-int v17, v17, p1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 1822
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningRecService()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    move-result-object v13

    .line 1823
    .local v13, "runningRecService":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    if-eqz v13, :cond_c

    .line 1824
    iget v15, v13, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    iget-boolean v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbRecState:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setPreService(IZ)I

    move-result v9

    .line 1825
    invoke-direct/range {p0 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setLateService(II)I

    move-result v6

    .line 1826
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkRecExecutionConflict(II)[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v10

    .line 1831
    .end local v13    # "runningRecService":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :cond_c
    if-eqz v10, :cond_e

    .line 1839
    :try_start_a
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    const/16 v17, 0x0

    aget-byte v17, v10, v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    move/from16 v0, v17

    invoke-virtual {v15, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;->executionConflict(II)I
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v12

    .line 1893
    :cond_d
    :goto_2
    if-nez v12, :cond_10

    .line 1894
    const/16 v15, 0x108

    move/from16 v0, p1

    if-eq v15, v0, :cond_f

    .line 1895
    :try_start_b
    invoke-direct/range {p0 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setServiceStatus(IILjava/lang/String;)V

    .line 1902
    :goto_3
    monitor-exit v16

    move v11, v12

    .line 1907
    goto/16 :goto_0

    .line 1843
    :catch_2
    move-exception v4

    .line 1844
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->resetDecodeFlag(I)V

    .line 1845
    const-string v15, "checkConflict() ServiceStateException. PreEvent = %s, Data = %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1847
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v15, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 1848
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v4

    .line 1849
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->resetDecodeFlag(I)V

    .line 1850
    const-string v15, "checkConflict() ServiceInternalException. PreEvent = %s, Data = %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1852
    throw v4

    .line 1853
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v4

    .line 1854
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->resetDecodeFlag(I)V

    .line 1855
    const-string v15, "checkConflict() ProcessTimeoutException. PreEvent = %s, Data = %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1857
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v15, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 1860
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    :cond_e
    const/16 v15, 0x100

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 1867
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflictStatus()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->toMatrixStatusSv(I)I

    move-result v8

    .line 1868
    .local v8, "matrixStatus":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkExecutionConflict(II)[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v7

    .line 1870
    .local v7, "matrixData":[B
    :try_start_c
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    const/16 v17, 0x0

    aget-byte v17, v7, v17

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;

    const/16 v17, 0x1

    aget-byte v17, v7, v17

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictBaseSv;->executionConflict(II)I
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v12

    goto/16 :goto_2

    .line 1874
    :catch_5
    move-exception v4

    .line 1875
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :try_start_d
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->resetDecodeFlag(I)V

    .line 1876
    const-string v15, "checkConflict() ServiceStateException. Status = %s, Data = %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1878
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v15, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 1879
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_6
    move-exception v4

    .line 1880
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->resetDecodeFlag(I)V

    .line 1881
    const-string v15, "checkConflict() ServiceInternalException. Status = %s, Data = %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1883
    throw v4

    .line 1884
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_7
    move-exception v4

    .line 1885
    .local v4, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->resetDecodeFlag(I)V

    .line 1886
    const-string v15, "checkConflict() ProcessTimeoutException. Status = %s, Data = %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1888
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v15, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 1897
    .end local v4    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    .end local v7    # "matrixData":[B
    .end local v8    # "matrixStatus":I
    :cond_f
    const v15, 0xa306

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->updateServiceStatus(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 1900
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->resetDecodeFlag(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_3

    .line 1769
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkConflictStatus()I
    .locals 10

    .prologue
    .line 4358
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningStatus()Ljava/util/List;

    move-result-object v5

    .line 4360
    .local v5, "tmpStatus":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    const/4 v1, 0x0

    .line 4362
    .local v1, "isStreamingAlreadyDo":Z
    const/4 v4, 0x0

    .line 4363
    .local v4, "status":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 4364
    .local v2, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iget v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->changeServiceTypeForMatrix(I)I

    move-result v3

    .line 4365
    .local v3, "serviceType":I
    sparse-switch v3, :sswitch_data_0

    .line 4386
    const-string v6, "Warning Not Support mmbServiceType[%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4367
    :sswitch_0
    if-nez v1, :cond_0

    .line 4368
    add-int/lit8 v4, v4, 0x1

    .line 4369
    const/4 v1, 0x1

    goto :goto_0

    .line 4373
    :sswitch_1
    add-int/lit8 v4, v4, 0x2

    .line 4374
    goto :goto_0

    .line 4377
    :sswitch_2
    add-int/lit8 v4, v4, 0x4

    .line 4378
    goto :goto_0

    .line 4380
    :sswitch_3
    add-int/lit8 v4, v4, 0x20

    .line 4381
    goto :goto_0

    .line 4383
    :sswitch_4
    add-int/lit8 v4, v4, 0x40

    .line 4384
    goto :goto_0

    .line 4397
    .end local v2    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .end local v3    # "serviceType":I
    :cond_1
    return v4

    .line 4365
    :sswitch_data_0
    .sparse-switch
        0xa10a -> :sswitch_1
        0xa306 -> :sswitch_0
        0xa502 -> :sswitch_3
        0xa504 -> :sswitch_4
        0xa900 -> :sswitch_2
        0xad00 -> :sswitch_2
    .end sparse-switch
.end method

.method private checkDecodeConflict()I
    .locals 2

    .prologue
    .line 2185
    const/4 v0, 0x0

    .line 2186
    .local v0, "result":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getDecoderFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2187
    const/16 v0, 0xb

    .line 2196
    :goto_0
    return v0

    .line 2190
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setDecoderFlag(Z)V

    goto :goto_0
.end method

.method private checkExecutionConflict(II)[B
    .locals 4
    .param p1, "aStatus"    # I
    .param p2, "aEvent"    # I

    .prologue
    .line 4322
    const/4 v0, 0x1

    .line 4323
    .local v0, "parameterFlag":Z
    if-ltz p1, :cond_0

    const/16 v2, 0x12

    if-ge v2, p1, :cond_1

    .line 4324
    :cond_0
    const/4 v0, 0x0

    .line 4326
    :cond_1
    if-ltz p2, :cond_2

    const/16 v2, 0xa

    if-ge v2, p2, :cond_3

    .line 4327
    :cond_2
    const/4 v0, 0x0

    .line 4329
    :cond_3
    if-nez v0, :cond_4

    .line 4330
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "Outside of the range"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4334
    :cond_4
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->matrixTbl:[[[B

    aget-object v2, v2, p1

    aget-object v1, v2, p2

    .line 4339
    .local v1, "ret":[B
    return-object v1
.end method

.method private checkHttpConflictSv()I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 4563
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConnectionInfo()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4574
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRecExecutionConflict(II)[B
    .locals 3
    .param p1, "aPreEvent"    # I
    .param p2, "aLateEvent"    # I

    .prologue
    .line 2119
    const/4 v1, 0x1

    .line 2120
    .local v1, "parameterFlag":Z
    if-ltz p1, :cond_0

    const/4 v2, 0x6

    if-ge v2, p1, :cond_1

    .line 2121
    :cond_0
    const/4 v1, 0x0

    .line 2123
    :cond_1
    if-ltz p2, :cond_2

    const/4 v2, 0x7

    if-ge v2, p2, :cond_3

    .line 2124
    :cond_2
    const/4 v1, 0x0

    .line 2126
    :cond_3
    if-nez v1, :cond_4

    .line 2127
    const/4 v0, 0x0

    .line 2135
    .local v0, "bRet":[B
    :goto_0
    return-object v0

    .line 2129
    .end local v0    # "bRet":[B
    :cond_4
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->recMatrixTbl:[[[B

    aget-object v2, v2, p1

    aget-object v0, v2, p2

    .restart local v0    # "bRet":[B
    goto :goto_0
.end method

.method private checkSameTs(I)Z
    .locals 11
    .param p1, "aServiceId"    # I

    .prologue
    .line 4502
    const/4 v6, 0x0

    .line 4503
    .local v6, "tsid":I
    if-lez p1, :cond_1

    .line 4505
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getServiceListModule()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->getTransportStreamId(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 4516
    const/4 v2, 0x0

    .line 4517
    .local v2, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    new-instance v5, Ljava/util/ArrayList;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4519
    .local v5, "tmpArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4520
    .local v4, "serviceCnt":I
    const/4 v3, 0x1

    .line 4521
    .local v3, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 4522
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 4524
    .restart local v2    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    const/16 v7, 0x100

    iget v8, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    and-int/lit16 v8, v8, 0x100

    if-ne v7, v8, :cond_2

    const v7, 0xa10a

    iget v8, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    if-eq v7, v8, :cond_2

    .line 4530
    iget v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbTsid:I

    if-eq v7, v6, :cond_0

    .line 4533
    const-string v7, "checkSameTs() - TSID Unmatched. Before Service[%s]: %s, After Service[%s]: %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbTsid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4536
    const/4 v3, 0x0

    .line 4545
    :cond_0
    return v3

    .line 4506
    .end local v1    # "i":I
    .end local v2    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .end local v3    # "ret":Z
    .end local v4    # "serviceCnt":I
    .end local v5    # "tmpArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    :catch_0
    move-exception v0

    .line 4507
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4508
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v7

    .line 4511
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_1
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 4512
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4513
    throw v0

    .line 4521
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v1    # "i":I
    .restart local v2    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .restart local v3    # "ret":Z
    .restart local v4    # "serviceCnt":I
    .restart local v5    # "tmpArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkStorageMount(I)Z
    .locals 6
    .param p1, "aServiceType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4595
    const/4 v0, 0x0

    .line 4597
    .local v0, "contentStorage":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4604
    const/4 v2, 0x0

    .line 4605
    .local v2, "isMounted":Z
    sparse-switch p1, :sswitch_data_0

    .line 4637
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardMount()Z

    move-result v2

    .line 4644
    :goto_0
    return v2

    .line 4598
    .end local v2    # "isMounted":Z
    :catch_0
    move-exception v1

    .line 4599
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4600
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 4614
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v2    # "isMounted":Z
    :sswitch_0
    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-ne v3, v4, :cond_0

    .line 4615
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardMount()Z

    move-result v2

    goto :goto_0

    .line 4616
    :cond_0
    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-nez v3, :cond_1

    .line 4618
    const/4 v2, 0x1

    goto :goto_0

    .line 4620
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentStorage() mmbFcContent == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4621
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 4626
    :sswitch_1
    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbRecContent:I

    if-ne v3, v4, :cond_2

    .line 4627
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardMount()Z

    move-result v2

    goto :goto_0

    .line 4628
    :cond_2
    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbRecContent:I

    if-nez v3, :cond_3

    .line 4630
    const/4 v2, 0x1

    goto :goto_0

    .line 4632
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentStorage() mmbRecContent == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbRecContent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4633
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 4605
    :sswitch_data_0
    .sparse-switch
        0x380c -> :sswitch_0
        0x381e -> :sswitch_0
        0x3c0c -> :sswitch_0
        0x3c1e -> :sswitch_0
        0x8a1c -> :sswitch_1
        0xa900 -> :sswitch_0
        0xa91a -> :sswitch_1
        0xad00 -> :sswitch_0
    .end sparse-switch
.end method

.method private checkTunerResouce(I)I
    .locals 3
    .param p1, "aServiceId"    # I

    .prologue
    .line 3221
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mStMiddle:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->checkResourceAvailable(I)I

    move-result v0

    .line 3226
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3227
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "checkResourceAvailable() running result -> 4"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3234
    :cond_0
    return v0
.end method

.method private checkTunnerConflictCause()I
    .locals 6

    .prologue
    .line 3920
    const/16 v2, 0x8

    .line 3922
    .local v2, "ret":I
    const/4 v1, 0x0

    .line 3923
    .local v1, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3925
    .local v4, "tmpArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3926
    .local v3, "serviceCnt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    .line 3927
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 3928
    .restart local v1    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    sparse-switch v5, :sswitch_data_0

    .line 3926
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3936
    :sswitch_0
    const/4 v2, 0x1

    .line 3937
    goto :goto_1

    .line 3947
    :cond_0
    return v2

    .line 3928
    nop

    :sswitch_data_0
    .sparse-switch
        0xa306 -> :sswitch_0
        0xa502 -> :sswitch_0
        0xa504 -> :sswitch_0
        0xa900 -> :sswitch_0
        0xa91a -> :sswitch_0
        0xad00 -> :sswitch_0
    .end sparse-switch
.end method

.method private clearBeforeLocationInfo()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 925
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$302(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 926
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$402(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 930
    return-void
.end method

.method private copyLocationInfo()V
    .locals 4

    .prologue
    .line 903
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$302(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 905
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$402(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 906
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$502(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;J)J

    .line 911
    :cond_0
    return-void
.end method

.method private endConfirm(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3165
    .local p1, "aServiceTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 3166
    .local v2, "waitcnt":I
    const/4 v1, 0x0

    .line 3169
    .local v1, "isbreak":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConfirm(Ljava/util/List;)Z

    move-result v1

    .line 3171
    if-eqz v1, :cond_0

    .line 3202
    return-void

    .line 3176
    :cond_0
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 3178
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;

    const-string v3, "No Response..."

    invoke-direct {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3179
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3180
    throw v0

    .line 3183
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    :cond_1
    monitor-enter p0

    .line 3186
    const-wide/16 v4, 0xfa

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3187
    add-int/lit8 v2, v2, 0x1

    .line 3197
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3188
    :catch_0
    move-exception v0

    .line 3190
    .local v0, "err":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3191
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3192
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3194
    .local v0, "err":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3195
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private getDecoderFlag()Z
    .locals 1

    .prologue
    .line 4293
    sget-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->decoderFlag:Z

    .line 4297
    .local v0, "ret":Z
    return v0
.end method

.method private getLocationManager()Landroid/location/LocationManager;
    .locals 3

    .prologue
    .line 883
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 888
    .local v0, "mgr":Landroid/location/LocationManager;
    return-object v0
.end method

.method private getMmbFwAssignUserSv(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    .locals 7
    .param p1, "aResourceId"    # I

    .prologue
    const/4 v6, -0x1

    .line 3964
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    .line 3965
    .local v1, "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 3967
    .local v0, "aAssignUsrObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getTmmStatus()I

    move-result v3

    .line 3969
    .local v3, "tmmstatus":I
    if-eq v3, v6, :cond_1

    .line 3970
    :try_start_0
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iput p1, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    .line 3971
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iput v3, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbTmmStatus:I

    .line 3972
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    .line 3987
    :cond_0
    :goto_0
    return-object v0

    .line 3974
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3975
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    .line 3976
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v5, -0x1

    iput v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbTmmStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3980
    :catch_0
    move-exception v2

    .line 3981
    .local v2, "err":Ljava/lang/Exception;
    const-string v4, "Assign Resource NullPointer : restartService"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3982
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0
.end method

.method private getRunningCallbackList(I)Ljava/util/List;
    .locals 12
    .param p1, "aEvent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4664
    const/4 v1, 0x6

    .line 4666
    .local v1, "CALLBACK_ALL":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4668
    .local v2, "callbackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 4669
    .local v5, "num":I
    packed-switch p1, :pswitch_data_0

    .line 4674
    const-string v8, "Warning Not Support Event[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4710
    :cond_0
    return-object v2

    .line 4671
    :pswitch_0
    const/4 v5, 0x6

    .line 4682
    const/4 v8, 0x7

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    .line 4691
    .local v0, "CALLBACKLIST":[I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningStatus()Ljava/util/List;

    move-result-object v7

    .line 4692
    .local v7, "tmpArray":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    const/4 v3, 0x0

    .line 4693
    .local v3, "cnt":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 4695
    .local v6, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    const/4 v3, 0x0

    .line 4697
    :cond_1
    iget v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    aget v9, v0, v3

    if-ne v8, v9, :cond_2

    .line 4698
    iget v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4700
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 4704
    if-le v3, v5, :cond_1

    goto :goto_0

    .line 4669
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    .line 4682
    :array_0
    .array-data 4
        0xa502
        0xa504
        0xad00
        0xa900
        0xa91a
        0x8a1c
        0xa306
    .end array-data
.end method

.method private getRunningRecService()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .locals 9

    .prologue
    const v8, 0x8000

    .line 1958
    const/4 v3, 0x0

    .line 1959
    .local v3, "runningRecService":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningStatus()Ljava/util/List;

    move-result-object v4

    .line 1960
    .local v4, "tmpStatus":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    const/4 v2, 0x0

    .line 1961
    .local v2, "recState":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 1962
    .local v1, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    and-int/2addr v5, v8

    if-ne v8, v5, :cond_1

    .line 1965
    if-nez v3, :cond_2

    .line 1966
    move-object v3, v1

    .line 1974
    :cond_1
    :goto_1
    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0xa91a

    if-ne v5, v6, :cond_0

    .line 1975
    const/4 v2, 0x1

    goto :goto_0

    .line 1968
    :cond_2
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    iget v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbRecPriorityList:Ljava/util/List;

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-le v5, v6, :cond_3

    :goto_2
    goto :goto_1

    :cond_3
    move-object v3, v1

    goto :goto_2

    .line 1978
    .end local v1    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :cond_4
    if-eqz v3, :cond_5

    .line 1979
    if-eqz v2, :cond_6

    .line 1980
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbRecState:Z

    .line 1989
    :cond_5
    :goto_3
    return-object v3

    .line 1982
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbRecState:Z

    goto :goto_3
.end method

.method private getRunningStatus()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1401
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    monitor-enter v3

    .line 1403
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1410
    return-object v1

    .line 1405
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .prologue
    .line 863
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 868
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    return-object v0
.end method

.method private getTmmStatus()I
    .locals 11

    .prologue
    const v10, 0xa306

    const/4 v9, 0x1

    .line 4007
    const/4 v1, -0x1

    .line 4009
    .local v1, "mmbTmmStatus":I
    const/4 v2, 0x0

    .line 4010
    .local v2, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4012
    .local v4, "tmpArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4013
    .local v3, "serviceCnt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_7

    .line 4014
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 4015
    .restart local v2    # "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    if-eq v5, v10, :cond_0

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    if-eq v5, v10, :cond_0

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0xa10a

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const/16 v6, 0x108

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0xa91a

    if-eq v5, v6, :cond_0

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0x8a1c

    if-ne v5, v6, :cond_2

    .line 4022
    :cond_0
    const/4 v1, 0x0

    .line 4013
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4024
    :cond_2
    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0xa900

    if-eq v5, v6, :cond_3

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0xad00

    if-ne v5, v6, :cond_4

    .line 4027
    :cond_3
    if-eqz v1, :cond_1

    .line 4028
    const/4 v1, 0x1

    goto :goto_1

    .line 4030
    :cond_4
    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0xa502

    if-eq v5, v6, :cond_5

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    const v6, 0xa504

    if-ne v5, v6, :cond_6

    .line 4033
    :cond_5
    if-eqz v1, :cond_1

    if-eq v1, v9, :cond_1

    .line 4035
    const/4 v1, 0x2

    goto :goto_1

    .line 4039
    :cond_6
    const-string v5, "Warning Not Support mmbServiceType[%s]"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4046
    :cond_7
    return v1
.end method

.method private isBatteryCharging()Z
    .locals 3

    .prologue
    .line 2882
    const/4 v1, 0x0

    .line 2883
    .local v1, "charging":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v0

    .line 2885
    .local v0, "batteryStatus":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2887
    :cond_0
    const/4 v1, 0x1

    .line 2893
    :cond_1
    return v1
.end method

.method private isBatteryLimit(I)Z
    .locals 2
    .param p1, "aLimit"    # I

    .prologue
    .line 2911
    const/4 v0, 0x1

    .line 2913
    .local v0, "battery":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryLevel()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryCharging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2914
    const/4 v0, 0x0

    .line 2920
    :cond_0
    return v0
.end method

.method private isLocationUpdateTime()Z
    .locals 10

    .prologue
    .line 2365
    const/4 v1, 0x0

    .line 2368
    .local v1, "flag":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    .line 2369
    .local v4, "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v2

    .line 2373
    .local v2, "now":J
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 2375
    const/4 v1, 0x1

    .line 2384
    .end local v2    # "now":J
    .end local v4    # "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_0
    :goto_0
    return v1

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isMockLocationAllowed()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2339
    const/4 v1, 0x0

    .line 2341
    .local v1, "flag":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 2349
    :goto_0
    return v1

    .line 2341
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2343
    :catch_0
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private judgeArea()I
    .locals 8

    .prologue
    .line 3470
    const/4 v1, -0x1

    .local v1, "ret":I
    const/4 v0, 0x0

    .line 3471
    .local v0, "cnt":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v2

    .line 3472
    .local v2, "latitude":D
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v4

    .line 3479
    .local v4, "longitude":D
    :goto_0
    sget v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->PARTITION_AREA_NUM:I

    if-ge v0, v6, :cond_0

    .line 3480
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TARGET_AREA:[[D

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_1

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TARGET_AREA:[[D

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_1

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TARGET_AREA:[[D

    aget-object v6, v6, v0

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_1

    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->TARGET_AREA:[[D

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_1

    .line 3488
    const/4 v1, 0x0

    .line 3497
    :cond_0
    return v1

    .line 3491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private notifyGetRecommendStop()V
    .locals 4

    .prologue
    .line 3058
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    const/16 v3, 0x3414

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3061
    .local v1, "classname":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3062
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;-><init>()V

    .line 3064
    .local v0, "cbobj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;->onFinishFunction(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3081
    .end local v0    # "cbobj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;
    :cond_0
    :goto_0
    return-void

    .line 3072
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3067
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private notifyReleaseTunerResouce(I)V
    .locals 7
    .param p1, "aEventID"    # I

    .prologue
    .line 3097
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningCallbackList(I)Ljava/util/List;

    move-result-object v0

    .line 3099
    .local v0, "callbackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;-><init>()V

    .line 3100
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;
    const/4 v2, 0x0

    .local v2, "cnt2":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "loop":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 3105
    const/4 v5, 0x2

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfCallbackSendSv;->onFinishFunction(ILjava/lang/String;)V

    .line 3100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3112
    :cond_0
    return-void
.end method

.method private removeServiceStatus(ILjava/lang/String;)Z
    .locals 8
    .param p1, "aServiceType"    # I
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1437
    const/4 v4, 0x0

    .line 1438
    .local v4, "ret":Z
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    monitor-enter v7

    .line 1440
    const/4 v2, 0x0

    .line 1441
    .local v2, "isregisterted":Z
    const/4 v3, 0x0

    .line 1442
    .local v3, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :try_start_0
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 1443
    .local v5, "serviceCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1444
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    move-object v3, v0

    .line 1445
    iget v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    if-ne v6, p1, :cond_2

    iget-object v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1449
    const/4 v2, 0x1

    .line 1453
    :cond_0
    if-eqz v2, :cond_1

    .line 1455
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 1457
    :cond_1
    monitor-exit v7

    .line 1462
    return v4

    .line 1443
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1457
    .end local v1    # "i":I
    .end local v5    # "serviceCnt":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private resetDecodeFlag(I)V
    .locals 2
    .param p1, "aServiceType"    # I

    .prologue
    .line 2218
    const/16 v0, 0x200

    and-int/lit16 v1, p1, 0x200

    if-ne v0, v1, :cond_0

    .line 2221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setDecoderFlag(Z)V

    .line 2227
    :cond_0
    return-void
.end method

.method private searchLocation(Landroid/location/LocationManager;Ljava/lang/String;II)V
    .locals 10
    .param p1, "aLocationManager"    # Landroid/location/LocationManager;
    .param p2, "aProviderName"    # Ljava/lang/String;
    .param p3, "aWaitTime"    # I
    .param p4, "aRetryCount"    # I

    .prologue
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    .line 3390
    const/4 v2, 0x0

    .line 3392
    .local v2, "timeout":I
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 3393
    .local v1, "looper":Landroid/os/Looper;
    invoke-virtual {p1, p2, p0, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3396
    :goto_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-nez v3, :cond_3

    .line 3399
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isMockLocationAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3400
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3401
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 3402
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3448
    :try_start_1
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3452
    :goto_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 3458
    :goto_2
    return-void

    .line 3449
    :catch_0
    move-exception v0

    .line 3450
    .local v0, "err":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3410
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    :cond_0
    if-le v2, p4, :cond_1

    .line 3411
    :try_start_2
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3412
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 3417
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3418
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3448
    :try_start_3
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3452
    :goto_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    goto :goto_2

    .line 3449
    :catch_1
    move-exception v0

    .line 3450
    .restart local v0    # "err":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3425
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    :cond_2
    int-to-long v4, p3

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3448
    :cond_3
    :try_start_5
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3452
    :goto_4
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    goto :goto_2

    .line 3449
    :catch_2
    move-exception v0

    .line 3450
    .restart local v0    # "err":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3433
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_3
    move-exception v0

    .line 3435
    .restart local v0    # "err":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3436
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3444
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    .line 3448
    :try_start_7
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_6

    .line 3452
    :goto_5
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    throw v3

    .line 3437
    :catch_4
    move-exception v0

    .line 3438
    .local v0, "err":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3439
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3440
    .end local v0    # "err":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v0

    .line 3441
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3442
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3449
    .end local v0    # "err":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 3450
    .local v0, "err":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private setBatteryStatus(I)V
    .locals 1
    .param p1, "aBatteryStatus"    # I

    .prologue
    .line 3019
    packed-switch p1, :pswitch_data_0

    .line 3038
    const/4 v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    .line 3044
    :goto_0
    return-void

    .line 3022
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    goto :goto_0

    .line 3026
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    goto :goto_0

    .line 3030
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    goto :goto_0

    .line 3034
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    goto :goto_0

    .line 3019
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized setDecoderFlag(Z)V
    .locals 1
    .param p1, "aFlag"    # Z

    .prologue
    .line 4270
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->decoderFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4274
    monitor-exit p0

    return-void

    .line 4270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setLateService(II)I
    .locals 2
    .param p1, "aLateServiceType"    # I
    .param p2, "aLateServiceId"    # I

    .prologue
    .line 2057
    const/16 v0, 0xff

    .line 2059
    .local v0, "lateService":I
    sparse-switch p1, :sswitch_data_0

    .line 2093
    :goto_0
    return v0

    .line 2061
    :sswitch_0
    const/4 v0, 0x0

    .line 2062
    goto :goto_0

    .line 2064
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSameTs(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2065
    const/4 v0, 0x1

    goto :goto_0

    .line 2067
    :cond_0
    const/4 v0, 0x2

    .line 2069
    goto :goto_0

    .line 2071
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSameTs(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2072
    const/4 v0, 0x3

    goto :goto_0

    .line 2074
    :cond_1
    const/4 v0, 0x4

    .line 2076
    goto :goto_0

    .line 2079
    :sswitch_3
    const/4 v0, 0x5

    .line 2080
    goto :goto_0

    .line 2083
    :sswitch_4
    const/4 v0, 0x6

    .line 2084
    goto :goto_0

    .line 2086
    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 2059
    :sswitch_data_0
    .sparse-switch
        0x8a1c -> :sswitch_5
        0xa10a -> :sswitch_0
        0xa306 -> :sswitch_1
        0xa502 -> :sswitch_4
        0xa504 -> :sswitch_4
        0xa900 -> :sswitch_3
        0xa91a -> :sswitch_2
        0xad00 -> :sswitch_3
    .end sparse-switch
.end method

.method private setLocationInfo(DD)V
    .locals 7
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 3254
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$302(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 3255
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$402(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 3258
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    .line 3259
    .local v1, "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$502(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;J)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3267
    .end local v1    # "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :goto_0
    return-void

    .line 3260
    :catch_0
    move-exception v0

    .line 3261
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized setMmbReleaseResourceSts(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;I)V
    .locals 3
    .param p1, "aResourceUser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    .param p2, "aStatus"    # I

    .prologue
    .line 4063
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    .line 4066
    .local v0, "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    iput-object p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 4067
    iput p2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbResourceStatus:I

    .line 4068
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4072
    monitor-exit p0

    return-void

    .line 4063
    .end local v0    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private setPreService(IZ)I
    .locals 1
    .param p1, "aServiceType"    # I
    .param p2, "aRecState"    # Z

    .prologue
    .line 2007
    const/16 v0, 0xff

    .line 2009
    .local v0, "preSerivce":I
    sparse-switch p1, :sswitch_data_0

    .line 2039
    :goto_0
    return v0

    .line 2011
    :sswitch_0
    const/4 v0, 0x0

    .line 2012
    goto :goto_0

    .line 2014
    :sswitch_1
    if-eqz p2, :cond_0

    .line 2015
    const/4 v0, 0x1

    goto :goto_0

    .line 2017
    :cond_0
    const/4 v0, 0x2

    .line 2019
    goto :goto_0

    .line 2021
    :sswitch_2
    const/4 v0, 0x3

    .line 2022
    goto :goto_0

    .line 2025
    :sswitch_3
    const/4 v0, 0x4

    .line 2026
    goto :goto_0

    .line 2029
    :sswitch_4
    const/4 v0, 0x5

    .line 2030
    goto :goto_0

    .line 2032
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 2009
    :sswitch_data_0
    .sparse-switch
        0x8a1c -> :sswitch_5
        0xa10a -> :sswitch_0
        0xa306 -> :sswitch_1
        0xa502 -> :sswitch_4
        0xa504 -> :sswitch_4
        0xa900 -> :sswitch_3
        0xa91a -> :sswitch_2
        0xad00 -> :sswitch_3
    .end sparse-switch
.end method

.method private setRunningList(IILjava/lang/String;I)V
    .locals 3
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aTsid"    # I

    .prologue
    .line 1330
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;-><init>()V

    .line 1331
    .local v0, "obj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iput p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    .line 1332
    iput p2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceId:I

    .line 1333
    iput p4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbTsid:I

    .line 1334
    iput-object p3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbCrid:Ljava/lang/String;

    .line 1336
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    monitor-enter v2

    .line 1338
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    monitor-exit v2

    .line 1344
    return-void

    .line 1339
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setServiceStatus(IILjava/lang/String;)V
    .locals 3
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1194
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->isServiceTypeValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1196
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 1197
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1198
    throw v0

    .line 1201
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_0
    const/4 v1, 0x0

    .line 1202
    .local v1, "tsid":I
    if-lez p2, :cond_1

    const v2, 0xa10a

    if-eq v2, p1, :cond_1

    .line 1204
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getServiceListModule()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->getTransportStreamId(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1211
    :cond_1
    if-nez p3, :cond_2

    .line 1213
    const-string p3, ""

    .line 1217
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->removeServiceStatus(ILjava/lang/String;)Z

    .line 1220
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setRunningList(IILjava/lang/String;I)V

    .line 1225
    return-void

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1207
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2
.end method

.method private toMatrixStatusSv(I)I
    .locals 1
    .param p1, "aStatus"    # I

    .prologue
    .line 4417
    const/4 v0, 0x0

    .line 4418
    .local v0, "ret":I
    sparse-switch p1, :sswitch_data_0

    .line 4483
    :goto_0
    return v0

    .line 4420
    :sswitch_0
    const/4 v0, 0x0

    .line 4421
    goto :goto_0

    .line 4423
    :sswitch_1
    const/4 v0, 0x1

    .line 4424
    goto :goto_0

    .line 4426
    :sswitch_2
    const/4 v0, 0x2

    .line 4427
    goto :goto_0

    .line 4429
    :sswitch_3
    const/4 v0, 0x3

    .line 4430
    goto :goto_0

    .line 4432
    :sswitch_4
    const/4 v0, 0x4

    .line 4433
    goto :goto_0

    .line 4435
    :sswitch_5
    const/4 v0, 0x5

    .line 4436
    goto :goto_0

    .line 4438
    :sswitch_6
    const/4 v0, 0x6

    .line 4439
    goto :goto_0

    .line 4441
    :sswitch_7
    const/4 v0, 0x7

    .line 4442
    goto :goto_0

    .line 4444
    :sswitch_8
    const/16 v0, 0x8

    .line 4445
    goto :goto_0

    .line 4447
    :sswitch_9
    const/16 v0, 0x9

    .line 4448
    goto :goto_0

    .line 4450
    :sswitch_a
    const/16 v0, 0xa

    .line 4451
    goto :goto_0

    .line 4453
    :sswitch_b
    const/16 v0, 0xb

    .line 4454
    goto :goto_0

    .line 4456
    :sswitch_c
    const/16 v0, 0xc

    .line 4457
    goto :goto_0

    .line 4459
    :sswitch_d
    const/16 v0, 0xd

    .line 4460
    goto :goto_0

    .line 4462
    :sswitch_e
    const/16 v0, 0xe

    .line 4463
    goto :goto_0

    .line 4465
    :sswitch_f
    const/16 v0, 0xf

    .line 4466
    goto :goto_0

    .line 4468
    :sswitch_10
    const/16 v0, 0x10

    .line 4469
    goto :goto_0

    .line 4471
    :sswitch_11
    const/16 v0, 0x11

    .line 4472
    goto :goto_0

    .line 4474
    :sswitch_12
    const/16 v0, 0x12

    .line 4475
    goto :goto_0

    .line 4418
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_8
        0x8 -> :sswitch_e
        0x9 -> :sswitch_9
        0x20 -> :sswitch_4
        0x21 -> :sswitch_6
        0x24 -> :sswitch_f
        0x25 -> :sswitch_a
        0x40 -> :sswitch_5
        0x41 -> :sswitch_7
        0x44 -> :sswitch_10
        0x45 -> :sswitch_b
        0x60 -> :sswitch_11
        0x61 -> :sswitch_c
        0x80 -> :sswitch_12
        0x81 -> :sswitch_d
    .end sparse-switch
.end method

.method private updateLocation()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 946
    invoke-direct {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryLimit(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 953
    :cond_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->MMBCF_LOCATION_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 955
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isMockLocationAllowed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 960
    monitor-exit v4

    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 964
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isLocationUpdateTime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 969
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 973
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    .line 979
    .local v1, "locationManager":Landroid/location/LocationManager;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v3, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$302(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 980
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v3, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$402(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;D)D

    .line 983
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 986
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_1
    if-ge v2, v10, :cond_3

    .line 988
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConnectionInfo()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 989
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 990
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 993
    const-string v3, "network"

    const/16 v5, 0x3e8

    const/16 v6, 0xb4

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->searchLocation(Landroid/location/LocationManager;Ljava/lang/String;II)V

    .line 1008
    :cond_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_9

    .line 1037
    .end local v2    # "retry":I
    :cond_4
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1044
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_a

    .line 1046
    :cond_5
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->copyLocationInfo()V

    .line 1051
    :goto_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 1054
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->judgeArea()I

    move-result v5

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I

    .line 1062
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    :cond_6
    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1002
    .restart local v1    # "locationManager":Landroid/location/LocationManager;
    .restart local v2    # "retry":I
    :cond_7
    const-wide/16 v6, 0x7d0

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 986
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "err":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 1030
    .end local v0    # "err":Ljava/lang/InterruptedException;
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    .end local v2    # "retry":I
    :catch_1
    move-exception v0

    .line 1031
    .local v0, "err":Ljava/lang/SecurityException;
    :try_start_6
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1037
    :try_start_7
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1044
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_b

    .line 1046
    :cond_8
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->copyLocationInfo()V

    .line 1051
    :goto_6
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 1054
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->judgeArea()I

    move-result v5

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 1014
    .end local v0    # "err":Ljava/lang/SecurityException;
    .restart local v1    # "locationManager":Landroid/location/LocationManager;
    :cond_9
    :try_start_8
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1015
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 1016
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 1019
    const-string v3, "gps"

    const/16 v5, 0x3e8

    const/16 v6, 0xb4

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->searchLocation(Landroid/location/LocationManager;Ljava/lang/String;II)V

    .line 1022
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_4

    goto/16 :goto_2

    .line 1049
    :cond_a
    :try_start_9
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearBeforeLocationInfo()V

    goto/16 :goto_3

    .end local v1    # "locationManager":Landroid/location/LocationManager;
    .restart local v0    # "err":Ljava/lang/SecurityException;
    :cond_b
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearBeforeLocationInfo()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 1032
    .end local v0    # "err":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 1033
    .local v0, "err":Ljava/lang/IllegalArgumentException;
    :try_start_a
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1037
    :try_start_b
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1044
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_d

    .line 1046
    :cond_c
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->copyLocationInfo()V

    .line 1051
    :goto_7
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 1054
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->judgeArea()I

    move-result v5

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I

    goto/16 :goto_4

    .line 1049
    :cond_d
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearBeforeLocationInfo()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    .line 1034
    .end local v0    # "err":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 1035
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_c
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1037
    :try_start_d
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1044
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v3, v6, v8

    if-eqz v3, :cond_f

    .line 1046
    :cond_e
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->copyLocationInfo()V

    .line 1051
    :goto_8
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 1054
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->judgeArea()I

    move-result v5

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I

    goto/16 :goto_4

    .line 1049
    :cond_f
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearBeforeLocationInfo()V

    goto :goto_8

    .line 1037
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catchall_1
    move-exception v3

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1044
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_12

    .line 1046
    :cond_10
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->copyLocationInfo()V

    .line 1051
    :goto_9
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 1054
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->judgeArea()I

    move-result v6

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I

    :cond_11
    throw v3

    .line 1049
    :cond_12
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearBeforeLocationInfo()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_9
.end method

.method private updateServiceStatus(IILjava/lang/String;)V
    .locals 8
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1257
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->isServiceTypeValue(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1259
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 1260
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1261
    throw v0

    .line 1264
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningStatus()Ljava/util/List;

    move-result-object v3

    .line 1265
    .local v3, "runningList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v1, "executionList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 1267
    .local v4, "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iget v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    if-ne v6, p1, :cond_1

    .line 1268
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1272
    .end local v4    # "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :cond_2
    const/4 v6, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 1273
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 1275
    .restart local v4    # "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iget v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    iget-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbCrid:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->removeServiceStatus(ILjava/lang/String;)Z

    .line 1278
    const/4 v5, 0x0

    .line 1279
    .local v5, "tsid":I
    if-lez p2, :cond_3

    const v6, 0xa10a

    if-eq v6, p1, :cond_3

    .line 1281
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getServiceListModule()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->getTransportStreamId(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1288
    :cond_3
    if-nez p3, :cond_4

    .line 1290
    const-string p3, ""

    .line 1293
    :cond_4
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setRunningList(IILjava/lang/String;I)V

    .line 1300
    .end local v4    # "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .end local v5    # "tsid":I
    :cond_5
    return-void

    .line 1282
    .restart local v4    # "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    .restart local v5    # "tsid":I
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1284
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6
.end method


# virtual methods
.method public declared-synchronized assignResource(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)I
    .locals 12
    .param p1, "aResourceUser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v11, 0x1

    .line 3726
    monitor-enter p0

    :try_start_0
    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    if-eq v7, v11, :cond_0

    .line 3730
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3726
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 3734
    :cond_0
    :try_start_1
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    iget-object v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    .line 3736
    .local v2, "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    const-string v1, ""

    .line 3737
    .local v1, "aNewPackageName":Ljava/lang/String;
    const-string v4, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3739
    .local v4, "aUsePackageName":Ljava/lang/String;
    :try_start_2
    iget-object v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getTmmStatus()I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_2

    .line 3742
    :cond_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3743
    .end local v2    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    .local v3, "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :try_start_3
    iput-object p1, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 3744
    const/4 v7, 0x4

    iput v7, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbResourceStatus:I

    .line 3746
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    iget-object v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .end local v3    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    .restart local v2    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    move v7, v9

    .line 3805
    :goto_0
    monitor-exit p0

    return v7

    .line 3754
    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    if-eqz v7, :cond_3

    move v7, v8

    .line 3759
    goto :goto_0

    .line 3763
    :cond_3
    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget-object v1, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    .line 3765
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    iget-object v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    move-object v2, v0

    .line 3768
    iget-object v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iget-object v4, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3774
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v11, :cond_4

    .line 3777
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    .line 3780
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;

    invoke-direct {v7, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceMmbThread;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3782
    .local v6, "releaseResourceMmbThread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 3786
    const/4 v7, 0x2

    goto :goto_0

    .line 3769
    .end local v6    # "releaseResourceMmbThread":Ljava/lang/Thread;
    :catch_0
    move-exception v5

    .line 3770
    .local v5, "err":Ljava/lang/Exception;
    :goto_2
    const-string v7, "Assign Resource NullPointer : restartService"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3771
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_1

    .line 3792
    .end local v5    # "err":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v11, :cond_5

    iget v7, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbResourceStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v7, v9, :cond_5

    move v7, v9

    .line 3799
    goto :goto_0

    :cond_5
    move v7, v8

    .line 3805
    goto :goto_0

    .line 3769
    .end local v2    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    .restart local v3    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    .restart local v2    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    goto :goto_2
.end method

.method public checkConflict(IILjava/lang/String;)I
    .locals 2
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1575
    const/4 v0, 0x0

    .line 1578
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeDeadResponses()V

    .line 1580
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflictInternal(IILjava/lang/String;)I

    move-result v0

    .line 1584
    return v0
.end method

.method public checkConnectionInfo()I
    .locals 7

    .prologue
    .line 2766
    const/4 v3, 0x3

    .line 2767
    .local v3, "res":I
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 2768
    .local v2, "mobile":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 2775
    .local v4, "wifi":Landroid/net/NetworkInfo$State;
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryLimit(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2777
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    .line 2778
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2779
    throw v1

    .line 2783
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2786
    .local v0, "conmng":Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 2787
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 2789
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v5, :cond_1

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 2791
    const/4 v3, 0x0

    .line 2805
    :goto_0
    return v3

    .line 2792
    :cond_1
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v5, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2

    .line 2794
    const/4 v3, 0x1

    goto :goto_0

    .line 2795
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v5, :cond_3

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3

    .line 2797
    const/4 v3, 0x2

    goto :goto_0

    .line 2800
    :cond_3
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public checkForeignMode()I
    .locals 1

    .prologue
    .line 2495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode(Z)I

    move-result v0

    return v0
.end method

.method public checkForeignMode(Z)I
    .locals 9
    .param p1, "aDoMeasure"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2408
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryLimit(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2410
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    .line 2411
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2412
    throw v0

    .line 2415
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :cond_0
    if-eqz p1, :cond_1

    .line 2416
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 2417
    .local v3, "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setForeignFlag(I)I

    .line 2431
    .end local v3    # "pref":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_1
    const/4 v5, 0x0

    .line 2432
    .local v5, "type":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2433
    .local v4, "telmng":Landroid/telephony/TelephonyManager;
    sget v6, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mServiceState:I

    if-nez v6, :cond_2

    if-eqz v4, :cond_2

    .line 2434
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 2442
    :cond_2
    if-eqz v5, :cond_5

    .line 2445
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 2446
    .local v2, "operator":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_5

    .line 2448
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2454
    .local v1, "mcc":Ljava/lang/String;
    const-string v6, "440"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "441"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "001"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2458
    :cond_3
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I

    .line 2466
    :goto_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)I

    move-result v6

    .line 2478
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "operator":Ljava/lang/String;
    :goto_1
    return v6

    .line 2461
    .restart local v1    # "mcc":Ljava/lang/String;
    .restart local v2    # "operator":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$702(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;I)I

    goto :goto_0

    .line 2471
    .end local v1    # "mcc":Ljava/lang/String;
    .end local v2    # "operator":Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isLocationUpdateTime()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2472
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->updateLocation()V

    .line 2478
    :cond_6
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)I

    move-result v6

    goto :goto_1
.end method

.method public checkSdCardChanged(I)I
    .locals 2
    .param p1, "aVolumeId"    # I

    .prologue
    .line 2632
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getSdCardVolumeId()I

    move-result v0

    .line 2634
    .local v0, "volid":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 2636
    if-ne p1, v0, :cond_0

    .line 2637
    const/4 v0, -0x1

    .line 2643
    :cond_0
    return v0
.end method

.method public checkSdCardFreeSpace()I
    .locals 12

    .prologue
    .line 2534
    const-wide/16 v8, 0x0

    .line 2535
    .local v8, "size":J
    const/16 v6, 0x400

    .line 2542
    .local v6, "kilobyte":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardMount()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2544
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 2545
    .local v4, "exmempath":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 2546
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2551
    .local v5, "fs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 2552
    .local v2, "bksize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 2555
    .local v0, "avablocks":J
    mul-long v8, v2, v0

    .line 2558
    int-to-long v10, v6

    div-long/2addr v8, v10

    .line 2568
    .end local v0    # "avablocks":J
    .end local v2    # "bksize":J
    .end local v5    # "fs":Landroid/os/StatFs;
    :cond_0
    long-to-int v7, v8

    return v7

    .line 2562
    .end local v4    # "exmempath":Ljava/io/File;
    :cond_1
    const-string v7, "checkSdCardFreeSpace: SDCard is No Mount"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2563
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v7
.end method

.method public checkSdCardMount()Z
    .locals 3

    .prologue
    .line 2509
    const/4 v0, 0x0

    .line 2515
    .local v0, "ret":Z
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 2517
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2522
    return v0
.end method

.method public checkTunerConflict(I)I
    .locals 9
    .param p1, "aServiceId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3607
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryLimit(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3609
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    .line 3610
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3611
    throw v0

    .line 3614
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :cond_0
    if-nez p1, :cond_4

    .line 3615
    const/4 v5, 0x0

    .line 3616
    .local v5, "useTuner":Z
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningStatus()Ljava/util/List;

    move-result-object v3

    .line 3617
    .local v3, "runningList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 3618
    .local v4, "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    const/16 v7, 0x100

    iget v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    and-int/lit16 v8, v8, 0x100

    if-ne v7, v8, :cond_1

    .line 3620
    const/4 v5, 0x1

    .line 3625
    .end local v4    # "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :cond_2
    if-eqz v5, :cond_3

    .line 3626
    const/16 v2, 0x8

    .line 3677
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "runningList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    .end local v5    # "useTuner":Z
    :goto_0
    return v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "runningList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    .restart local v5    # "useTuner":Z
    :cond_3
    move v2, v6

    .line 3628
    goto :goto_0

    .line 3635
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "runningList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    .end local v5    # "useTuner":Z
    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkTunerResouce(I)I

    move-result v2

    .line 3636
    .local v2, "ret":I
    if-nez v2, :cond_5

    .line 3638
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkAssignResource()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    .line 3642
    const/16 v2, 0xc

    goto :goto_0

    .line 3645
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 3650
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    throw v0

    .line 3654
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v2    # "ret":I
    :cond_5
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3656
    :pswitch_0
    const/4 v2, 0x0

    .line 3657
    goto :goto_0

    .line 3659
    :pswitch_1
    const/4 v2, 0x2

    .line 3660
    const-string v7, "checkTunerConflict() result = [Streaming Resource Max]."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3663
    :pswitch_2
    const/4 v2, 0x2

    .line 3664
    const-string v7, "checkTunerConflict() result = [FileCast Resource Max]."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3668
    :pswitch_3
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkTunnerConflictCause()I

    move-result v2

    .line 3669
    goto :goto_0

    .line 3654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cleanupModule()V
    .locals 3

    .prologue
    .line 1083
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mStMiddle:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 1086
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1088
    .local v0, "telmng":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1091
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mUpdater:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->stop()V

    .line 1096
    return-void
.end method

.method public clearServiceStatus(IILjava/lang/String;)V
    .locals 4
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1130
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->isServiceTypeValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1132
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 1133
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1134
    throw v0

    .line 1137
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_0
    if-nez p3, :cond_1

    .line 1139
    const-string p3, ""

    .line 1143
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->removeServiceStatus(ILjava/lang/String;)Z

    move-result v1

    .line 1144
    .local v1, "removeFlag":Z
    if-eqz v1, :cond_2

    .line 1146
    const/16 v2, 0x200

    and-int/lit16 v3, p1, 0x200

    if-ne v2, v3, :cond_2

    .line 1148
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setDecoderFlag(Z)V

    .line 1157
    :cond_2
    sput p2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCheckServiceId:I

    .line 1162
    return-void
.end method

.method public getActiveStatusList(I)Ljava/util/List;
    .locals 7
    .param p1, "aServiceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1364
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->isServiceTypeValue(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1366
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServiceType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    .line 1368
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1369
    throw v1

    .line 1372
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getRunningStatus()Ljava/util/List;

    move-result-object v2

    .line 1373
    .local v2, "executionList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v0, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;

    .line 1375
    .local v4, "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    iget v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbServiceType:I

    if-ne v5, p1, :cond_1

    .line 1376
    iget-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;->mmbCrid:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1383
    .end local v4    # "status":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictServiceStatusSv;
    :cond_2
    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 2938
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryLevel:I

    return v0
.end method

.method public getBatteryStatus()I
    .locals 1

    .prologue
    .line 2961
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    return v0
.end method

.method public getMemoryFreeSpace()I
    .locals 10

    .prologue
    .line 2722
    const/4 v4, 0x0

    .line 2723
    .local v4, "result":I
    const/16 v2, 0x400

    .line 2730
    .local v2, "kilobyte":I
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isBatteryLimit(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2732
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    .line 2733
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2734
    throw v1

    .line 2738
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2742
    .local v0, "activitymanager":Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2743
    .local v3, "memoryinfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2746
    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    int-to-long v8, v2

    div-long/2addr v6, v8

    long-to-int v4, v6

    .line 2751
    return v4
.end method

.method public declared-synchronized getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    .locals 3
    .param p1, "aResourceId"    # I

    .prologue
    .line 3694
    monitor-enter p0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 3698
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3694
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3700
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMmbFwAssignUserSv(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    move-result-object v0

    .line 3702
    .local v0, "aAssignUsrObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3706
    .local v1, "usrobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    monitor-exit p0

    return-object v1
.end method

.method public getSdCardVolumeId()I
    .locals 10

    .prologue
    .line 2584
    const/4 v3, -0x1

    .line 2586
    .local v3, "result":I
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 2587
    .local v5, "storage":Ljava/io/File;
    if-eqz v5, :cond_0

    .line 2591
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v9, "storage"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 2592
    .local v4, "sm":Landroid/os/storage/StorageManager;
    if-eqz v4, :cond_0

    .line 2593
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 2594
    .local v7, "volumes":[Landroid/os/storage/StorageVolume;
    if-eqz v7, :cond_0

    .line 2595
    array-length v0, v7

    .line 2596
    .local v0, "count":I
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2597
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2598
    aget-object v8, v7, v1

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2599
    aget-object v8, v7, v1

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v6

    .line 2600
    .local v6, "uuid":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2601
    const-string v8, "-"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    long-to-int v3, v8

    .line 2613
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "sm":Landroid/os/storage/StorageManager;
    .end local v6    # "uuid":Ljava/lang/String;
    .end local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    return v3

    .line 2597
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "sm":Landroid/os/storage/StorageManager;
    .restart local v7    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isUimService()Z
    .locals 5

    .prologue
    .line 2687
    const/4 v2, 0x0

    .line 2695
    .local v2, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 2696
    .local v0, "casdrmModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkSupportCasFunction()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2697
    const/4 v2, 0x1

    .line 2710
    .end local v0    # "casdrmModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :cond_0
    :goto_0
    return v2

    .line 2698
    :catch_0
    move-exception v1

    .line 2702
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_0

    .line 2703
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isUimStatus()Z
    .locals 4

    .prologue
    .line 2657
    const/4 v0, 0x0

    .line 2665
    .local v0, "result":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2667
    .local v1, "telmanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2668
    const/4 v0, 0x1

    .line 2673
    :cond_0
    return v0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 3
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2981
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2983
    const-string v0, "status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setBatteryStatus(I)V

    .line 2986
    const-string v0, "level"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryLevel:I

    .line 2988
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryLevel:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mBatteryStatus:I

    if-nez v0, :cond_0

    .line 2991
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->notifyGetRecommendStop()V

    .line 2996
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.ACTION_TUNER_RELEASE_MMB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2998
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->notifyReleaseTunerResouce(I)V

    .line 3003
    :cond_1
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "aLocation"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x0

    .line 3284
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isMockLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3285
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setLocationInfo(DD)V

    .line 3289
    :goto_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 3293
    return-void

    .line 3287
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$202(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "aProvider"    # Ljava/lang/String;

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z

    .line 3313
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "aProvider"    # Ljava/lang/String;

    .prologue
    .line 3332
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "aProvider"    # Ljava/lang/String;
    .param p2, "aStatus"    # I
    .param p3, "aExtras"    # Landroid/os/Bundle;

    .prologue
    .line 3354
    if-nez p2, :cond_0

    .line 3356
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3357
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->locationInfoTmp:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;->access$602(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationInfoSv;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3366
    :cond_0
    :goto_0
    return-void

    .line 3359
    :catch_0
    move-exception v0

    .line 3360
    .local v0, "err":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .locals 6
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    .prologue
    .line 2251
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->isServiceTypeValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 2254
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 2255
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2256
    throw v0

    .line 2259
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->MMBCF_CALLBACK_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 2261
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2263
    const-string v1, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ALREADY_REGISTERED"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2265
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2268
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    :cond_2
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2275
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2276
    monitor-exit v2

    .line 2281
    return-void

    .line 2276
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized releaseResource(ILjava/lang/String;)I
    .locals 6
    .param p1, "aResourceId"    # I
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 3825
    monitor-enter p0

    if-eq p1, v5, :cond_0

    .line 3829
    :try_start_0
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3825
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 3833
    :cond_0
    if-nez p2, :cond_1

    .line 3837
    :try_start_1
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 3840
    :cond_1
    const/4 v3, 0x0

    .line 3842
    .local v3, "releaseResult":I
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 3846
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;-><init>()V

    .line 3848
    .local v0, "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    .line 3849
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v5, 0x1

    iput v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    .line 3851
    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v5, -0x1

    iput v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbTmmStatus:I

    .line 3853
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3856
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    .line 3877
    .end local v0    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->aResourceUserTmp:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 3879
    const/4 v4, 0x0

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCallReleaseResourceTimerFlag:I

    .line 3881
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3883
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3887
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3888
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3889
    const-string v4, "com.nttdocomo.mmb.android.mmbsv.process.arbitration.MmbCfConflictModuleSv"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3890
    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3894
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3902
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    monitor-exit p0

    return v3

    .line 3858
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_4

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCallReleaseResourceTimerFlag:I

    if-nez v4, :cond_4

    if-ne p1, v5, :cond_4

    .line 3866
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;-><init>()V

    .line 3867
    .restart local v0    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->aResourceUserTmp:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iput-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 3868
    const/4 v4, 0x0

    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbResourceStatus:I

    .line 3869
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3873
    .end local v0    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 3895
    :catch_0
    move-exception v1

    .line 3896
    .local v1, "err":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No send Broadcast. releaseResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized releaseTunerResouce(I)I
    .locals 10
    .param p1, "aServiceId"    # I

    .prologue
    const/4 v9, 0x2

    .line 3522
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 3567
    :goto_0
    monitor-exit p0

    return v9

    .line 3529
    :cond_0
    :try_start_1
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3532
    .local v2, "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :try_start_2
    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 3533
    .local v0, "aAssignObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    .line 3536
    .local v6, "usrobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    iget-object v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3544
    .end local v0    # "aAssignObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    .end local v6    # "usrobj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :goto_1
    :try_start_3
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;-><init>()V

    .line 3545
    .local v1, "aNewAssignUsrObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    iget-object v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    .line 3546
    iget-object v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v8, 0x1

    iput v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    .line 3547
    iget-object v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v8, 0x0

    iput v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbTmmStatus:I

    .line 3551
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3552
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3556
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3558
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    invoke-direct {v7, p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfReleaseResourceOneSegThread;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3560
    .local v5, "releaseResourceOneSegThread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 3562
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->aResourceUserTmp:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3522
    .end local v1    # "aNewAssignUsrObj":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    .end local v2    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "releaseResourceOneSegThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 3538
    .restart local v2    # "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    :catch_0
    move-exception v3

    .line 3539
    .local v3, "err":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "Assign Resource NullPointer : restartService"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3540
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public setupModule()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 746
    new-instance v2, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-direct {v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mStMiddle:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    .line 753
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;-><init>()V

    .line 755
    .local v0, "aResourceMngObj":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;
    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbPackageName:Ljava/lang/String;

    .line 756
    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbResourceId:I

    .line 758
    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfResourceManagementSv;->mmbAssignObj:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->mmbResourceUser:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;

    const/4 v3, -0x1

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;->mmbTmmStatus:I

    .line 760
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfTunerStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 764
    .local v1, "telmng":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 767
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mUpdater:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x1499700

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;->start(JJ)V

    .line 772
    return-void
.end method

.method public startupModule()V
    .locals 2

    .prologue
    .line 712
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictNotSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictNotSv;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictPreviousSv;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictPreviousSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictLateSv;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictLateSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictExceptionSv;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfConflictExceptionSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->conflictEventList:Ljava/util/List;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfRecConflictPreviousSv;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfRecConflictPreviousSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngStatus:Ljava/util/List;

    .line 721
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->setDecoderFlag(Z)V

    .line 726
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbCfConflictModuleSv [aResourceUserTmp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->aResourceUserTmp:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mStMiddle:Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdater="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mUpdater:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv$MmbCfLocationUpdaterSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbCallReleaseResourceTimerFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCallReleaseResourceTimerFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mmbTunerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbTunerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .locals 4
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;

    .prologue
    .line 2301
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfConstantsSv;->isServiceTypeValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 2304
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    .line 2305
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2306
    throw v0

    .line 2309
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :cond_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->MMBCF_CALLBACK_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 2311
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2314
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2317
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mmbCfMngClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    :cond_2
    monitor-exit v2

    .line 2323
    return-void

    .line 2319
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForWifiConnected()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v4, 0x1

    .line 2830
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2831
    .local v1, "wifiMng":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2865
    :cond_0
    :goto_0
    return v4

    .line 2839
    :cond_1
    const-wide/16 v2, 0x0

    .line 2840
    .local v2, "elapsedTime":J
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2844
    .local v0, "connMng":Landroid/net/ConnectivityManager;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2846
    const-wide/32 v6, 0xea60

    cmp-long v5, v2, v6

    if-ltz v5, :cond_2

    .line 2851
    const/4 v4, 0x0

    goto :goto_0

    .line 2857
    :cond_2
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 2858
    add-long/2addr v2, v8

    goto :goto_1
.end method
