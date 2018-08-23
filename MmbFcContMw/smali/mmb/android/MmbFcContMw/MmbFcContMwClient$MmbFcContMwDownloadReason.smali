.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwDownloadReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_FAILED_BROADCAST_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_FAILED_FILE_CHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_FAILED_INTERRUPTION:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_FAILED_OUTOF_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_FAILED_SCAN:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

.field public static final enum DOWNLOAD_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;


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

    .line 211
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 213
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_FAILED_BROADCAST_END"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_BROADCAST_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 215
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_FAILED_DECODE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 217
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_FAILED_FILE_CHECK"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_FILE_CHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 219
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_FAILED_WRITE"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 221
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_FAILED_OUTOF_BROADCAST"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_OUTOF_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 223
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_FAILED_INTERRUPTION"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_INTERRUPTION:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 225
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_FAILED_SCAN"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_SCAN:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 227
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    const-string v1, "DOWNLOAD_CANCELED"

    const/16 v2, 0x8

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    .line 209
    const/16 v0, 0x9

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_BROADCAST_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v1, v0, v5

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v1, v0, v6

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_FILE_CHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v1, v0, v7

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_OUTOF_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_INTERRUPTION:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_SCAN:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

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
    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->value:I

    .line 235
    return-void
.end method

.method public static maxLength()I
    .locals 1

    .prologue
    .line 250
    const/16 v0, 0x20

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->value:I

    return v0
.end method
