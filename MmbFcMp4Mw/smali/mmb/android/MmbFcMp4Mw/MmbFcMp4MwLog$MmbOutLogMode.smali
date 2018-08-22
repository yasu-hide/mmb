.class public final enum Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;
.super Ljava/lang/Enum;
.source "MmbFcMp4MwLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbOutLogMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field public static final enum MODE_ALL:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field public static final enum MODE_DEBUG:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field public static final enum MODE_ERROR:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field public static final enum MODE_INFO:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field public static final enum MODE_RELEASE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field public static final enum MODE_VERBOSE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

.field public static final enum MODE_WARN:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    const-string v1, "MODE_RELEASE"

    invoke-direct {v0, v1, v3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .line 63
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    const-string v1, "MODE_VERBOSE"

    invoke-direct {v0, v1, v4}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_VERBOSE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .line 66
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    const-string v1, "MODE_DEBUG"

    invoke-direct {v0, v1, v5}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_DEBUG:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .line 69
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    const-string v1, "MODE_INFO"

    invoke-direct {v0, v1, v6}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_INFO:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .line 72
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    const-string v1, "MODE_WARN"

    invoke-direct {v0, v1, v7}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_WARN:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .line 75
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    const-string v1, "MODE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_ERROR:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .line 78
    new-instance v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    const-string v1, "MODE_ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    sget-object v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_RELEASE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_VERBOSE:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_DEBUG:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_INFO:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    aput-object v1, v0, v6

    sget-object v1, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_WARN:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_ERROR:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->$VALUES:[Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->$VALUES:[Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    invoke-virtual {v0}, [Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwLog$MmbOutLogMode;

    return-object v0
.end method
