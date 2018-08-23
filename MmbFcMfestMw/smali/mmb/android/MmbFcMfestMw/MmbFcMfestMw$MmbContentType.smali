.class public final enum Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;
.super Ljava/lang/Enum;
.source "MmbFcMfestMw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum BRW:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum ERR:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum LC_COUNT_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum LC_IN_USE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum LC_NOT_FOUND:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum LC_PERIOD_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum LC_PERIOD_UNDER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum LC_SPAN_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum MP4:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

.field public static final enum OTH:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "BRW"

    invoke-direct {v0, v1, v3}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->BRW:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 37
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "MP4"

    invoke-direct {v0, v1, v4}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->MP4:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 39
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "OTH"

    invoke-direct {v0, v1, v5}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->OTH:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 41
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "ERR"

    invoke-direct {v0, v1, v6}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ERR:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 43
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "LC_NOT_FOUND"

    invoke-direct {v0, v1, v7}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_NOT_FOUND:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 45
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "LC_IN_USE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_IN_USE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 47
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "LC_PERIOD_UNDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_UNDER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 49
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "LC_PERIOD_OVER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 51
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "LC_SPAN_OVER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_SPAN_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 53
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    const-string v1, "LC_COUNT_OVER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_COUNT_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->BRW:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->MP4:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->OTH:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ERR:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v1, v0, v6

    sget-object v1, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_NOT_FOUND:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_IN_USE:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_UNDER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_PERIOD_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_SPAN_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->LC_COUNT_OVER:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->$VALUES:[Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->$VALUES:[Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    invoke-virtual {v0}, [Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    return-object v0
.end method
