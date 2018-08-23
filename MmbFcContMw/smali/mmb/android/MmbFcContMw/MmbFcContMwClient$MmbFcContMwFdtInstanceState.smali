.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwFdtInstanceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

.field public static final enum FDT_INSTANCE_DOWNLOADED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

.field public static final enum FDT_INSTANCE_FROM_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

.field public static final enum FDT_INSTANCE_FROM_SERVER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

.field public static final enum FDT_INSTANCE_IS_NOTHING:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    const-string v1, "FDT_INSTANCE_FROM_BROADCAST"

    invoke-direct {v0, v1, v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_FROM_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    .line 348
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    const-string v1, "FDT_INSTANCE_FROM_SERVER"

    invoke-direct {v0, v1, v3, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_FROM_SERVER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    .line 349
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    const-string v1, "FDT_INSTANCE_DOWNLOADED"

    invoke-direct {v0, v1, v4, v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_DOWNLOADED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    .line 350
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    const-string v1, "FDT_INSTANCE_IS_NOTHING"

    invoke-direct {v0, v1, v5, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_IS_NOTHING:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    .line 346
    const/4 v0, 0x4

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_FROM_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_FROM_SERVER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_DOWNLOADED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_IS_NOTHING:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    aput-object v1, v0, v5

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

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
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 353
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->value:I

    .line 354
    return-void
.end method

.method public static maxLength()I
    .locals 1

    .prologue
    .line 369
    const/16 v0, 0x20

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 346
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->value:I

    return v0
.end method
