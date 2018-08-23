.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwRepairReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

.field public static final enum REPAIR_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

.field public static final enum REPAIR_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

.field public static final enum REPAIR_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

.field public static final enum REPAIR_FAILED_FILECHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

.field public static final enum REPAIR_FAILED_RETRY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

.field public static final enum REPAIR_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    const-string v1, "REPAIR_COMPLETE"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    .line 305
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    const-string v1, "REPAIR_FAILED_DECODE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    .line 307
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    const-string v1, "REPAIR_FAILED_WRITE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    .line 309
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    const-string v1, "REPAIR_FAILED_FILECHECK"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_FILECHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    .line 311
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    const-string v1, "REPAIR_CANCELED"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    .line 313
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    const-string v1, "REPAIR_FAILED_RETRY"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_RETRY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    .line 301
    const/4 v0, 0x6

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    aput-object v1, v0, v6

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_FILECHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    aput-object v1, v0, v7

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_RETRY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

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
    .line 319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 320
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->value:I

    .line 321
    return-void
.end method

.method public static maxLength()I
    .locals 1

    .prologue
    .line 336
    const/16 v0, 0x20

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->value:I

    return v0
.end method
