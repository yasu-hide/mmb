.class public final enum Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;
.super Ljava/lang/Enum;
.source "MmbMoInfoMwLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbOutLogMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

.field public static final enum MODE_ALL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

.field public static final enum MODE_DEBUG:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

.field public static final enum MODE_ERROR:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

.field public static final enum MODE_INFO:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

.field public static final enum MODE_RELEASE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

.field public static final enum MODE_VERBOSE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

.field public static final enum MODE_WARN:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    const-string v1, "MODE_RELEASE"

    invoke-direct {v0, v1, v3}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    .line 47
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    const-string v1, "MODE_VERBOSE"

    invoke-direct {v0, v1, v4}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_VERBOSE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    .line 49
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    const-string v1, "MODE_DEBUG"

    invoke-direct {v0, v1, v5}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_DEBUG:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    .line 51
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    const-string v1, "MODE_INFO"

    invoke-direct {v0, v1, v6}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_INFO:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    .line 53
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    const-string v1, "MODE_WARN"

    invoke-direct {v0, v1, v7}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_WARN:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    .line 55
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    const-string v1, "MODE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_ERROR:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    .line 57
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    const-string v1, "MODE_ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_VERBOSE:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_DEBUG:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_INFO:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    aput-object v1, v0, v6

    sget-object v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_WARN:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_ERROR:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->$VALUES:[Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    invoke-virtual {v0}, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbMoInfoMw/MmbMoInfoMwLog$MmbOutLogMode;

    return-object v0
.end method
