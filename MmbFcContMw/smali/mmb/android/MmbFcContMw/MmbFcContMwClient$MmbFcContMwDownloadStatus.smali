.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwDownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field public static final enum DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field public static final enum DOWNLOAD_STATUS_NO_DATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field public static final enum DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field public static final enum DOWNLOAD_STATUS_UNMANAGED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;


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

    .line 262
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    const-string v1, "DOWNLOAD_STATUS_COMPLETE"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 264
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    const-string v1, "DOWNLOAD_STATUS_PROGRESS"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 266
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    const-string v1, "DOWNLOAD_STATUS_NO_DATA"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_NO_DATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 268
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    const-string v1, "DOWNLOAD_STATUS_UNMANAGED"

    invoke-direct {v0, v1, v5, v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_UNMANAGED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 260
    const/4 v0, 0x4

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_NO_DATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_UNMANAGED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    aput-object v1, v0, v5

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

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
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 275
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->value:I

    .line 276
    return-void
.end method

.method public static maxLength()I
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0x20

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 260
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->value:I

    return v0
.end method
