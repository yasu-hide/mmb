.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwEntryFdtInstanceReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

.field public static final enum ENTRY_FDT_INSTANCE_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

.field public static final enum ENTRY_FDT_INSTANCE_FAILED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 380
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    const-string v1, "ENTRY_FDT_INSTANCE_COMPLETE"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->ENTRY_FDT_INSTANCE_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    .line 382
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    const-string v1, "ENTRY_FDT_INSTANCE_FAILED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->ENTRY_FDT_INSTANCE_FAILED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    .line 378
    const/4 v0, 0x2

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->ENTRY_FDT_INSTANCE_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->ENTRY_FDT_INSTANCE_FAILED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    aput-object v1, v0, v4

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "aValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 389
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->value:I

    .line 390
    return-void
.end method

.method public static maxLength()I
    .locals 1

    .prologue
    .line 405
    const/16 v0, 0x20

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwEntryFdtInstanceReason;->value:I

    return v0
.end method
