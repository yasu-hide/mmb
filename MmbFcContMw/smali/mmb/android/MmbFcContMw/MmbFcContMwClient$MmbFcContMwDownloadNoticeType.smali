.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwDownloadNoticeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

.field public static final enum DOWNLOAD_NOTICE_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

.field public static final enum DOWNLOAD_NOTICE_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

.field public static final enum DOWNLOAD_NOTICE_START:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    const-string v1, "DOWNLOAD_NOTICE_START"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_START:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    .line 174
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    const-string v1, "DOWNLOAD_NOTICE_PROGRESS"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    .line 176
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    const-string v1, "DOWNLOAD_NOTICE_END"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_START:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    aput-object v1, v0, v4

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->value:I

    .line 184
    return-void
.end method

.method public static maxLength()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x20

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->value:I

    return v0
.end method
