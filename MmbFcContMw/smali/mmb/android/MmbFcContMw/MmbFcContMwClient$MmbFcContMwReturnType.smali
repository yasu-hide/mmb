.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwReturnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

.field public static final enum ERROR_GENERAL:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

.field public static final enum ERROR_MEMORY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

.field public static final enum ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

.field public static final enum ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

.field public static final enum ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

.field public static final enum OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;


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

    .line 78
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .line 80
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    const-string v1, "ERROR_NOT_REGIST"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .line 82
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    const-string v1, "ERROR_PARAMETERS"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .line 84
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    const-string v1, "ERROR_MEMORY"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .line 86
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    const-string v1, "ERROR_OTHER"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .line 88
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    const-string v1, "ERROR_GENERAL"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_GENERAL:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    aput-object v1, v0, v6

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    aput-object v1, v0, v7

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_GENERAL:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->value:I

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->value:I

    return v0
.end method
