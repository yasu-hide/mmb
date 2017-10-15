.class public Landroid/broadcast/oneseg/MtvOneSegBmlParams;
.super Ljava/lang/Object;
.source "MtvOneSegBmlParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/broadcast/oneseg/MtvOneSegBmlParams$onesegBmlDialogReply;,
        Landroid/broadcast/oneseg/MtvOneSegBmlParams$AnimMessages;,
        Landroid/broadcast/oneseg/MtvOneSegBmlParams$DialogMessages;,
        Landroid/broadcast/oneseg/MtvOneSegBmlParams$action;,
        Landroid/broadcast/oneseg/MtvOneSegBmlParams$state;,
        Landroid/broadcast/oneseg/MtvOneSegBmlParams$DTVBMLXDPABrowserType;
    }
.end annotation


# static fields
.field public static final MTV_BML_BASE:I = 0x8000

.field public static final MTV_BML_EVENT_KEYGROUP_BASIC:I = 0x1

.field public static final MTV_BML_EVENT_KEYGROUP_NONE:I = 0x0

.field public static final MTV_BML_EVENT_KEYGROUP_NUMERICTUNING:I = 0x4

.field public static final MTV_BML_EVENT_KEYGROUP_SPECIAL1:I = 0x10

.field public static final MTV_BML_EVENT_KEYGROUP_SPECIAL2:I = 0x20

.field public static final MTV_BML_E_DTV_OK:I = 0x0

.field public static final MTV_BML_TVLINK_HALT_PEER:I = 0x8001

.field public static final MTV_BRCOMMAND_QUERY_AUTH_DIALOG:I = 0x6

.field public static final MTV_BRCOMMAND_QUERY_DTV_PERMITFUNCTION:I = 0x98

.field public static final MTV_BRCOMMAND_QUERY_SETLOCATION:I = 0x0

.field public static final MTV_E_DTV_ILLEGALPARAMETER:I = -0x3eb

.field public static final MTV_E_DTV_NOTSUPPORTED:I = -0x3ea

.field public static final MTV_MEMORYCARD_NOTINSERTED:I = -0x41a

.field public static final MTV_MEMORYCARD_SAMEFILENAME:I = -0x41d


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method
