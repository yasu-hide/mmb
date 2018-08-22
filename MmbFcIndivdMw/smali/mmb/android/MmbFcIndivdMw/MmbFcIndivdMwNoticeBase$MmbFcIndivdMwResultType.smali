.class public final enum Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;
.super Ljava/lang/Enum;
.source "MmbFcIndivdMwNoticeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcIndivdMwResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

.field public static final enum RESULTTYPE_CANCEL:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

.field public static final enum RESULTTYPE_EXPORT:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

.field public static final enum RESULTTYPE_PROGRESS:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    const-string v1, "RESULTTYPE_CANCEL"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->RESULTTYPE_CANCEL:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    .line 27
    new-instance v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    const-string v1, "RESULTTYPE_EXPORT"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->RESULTTYPE_EXPORT:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    .line 28
    new-instance v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    const-string v1, "RESULTTYPE_PROGRESS"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->RESULTTYPE_PROGRESS:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    sget-object v1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->RESULTTYPE_CANCEL:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->RESULTTYPE_EXPORT:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->RESULTTYPE_PROGRESS:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    aput-object v1, v0, v4

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->$VALUES:[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->value:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->$VALUES:[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    invoke-virtual {v0}, [Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeBase$MmbFcIndivdMwResultType;->value:I

    return v0
.end method
