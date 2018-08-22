.class public final enum Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;
.super Ljava/lang/Enum;
.source "MmbFcIndivdMwNoticeCancel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcIndivdMwCancelValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

.field public static final enum CANCELVALUE_COMPLETE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

.field public static final enum CANCELVALUE_OTHER:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    const-string v1, "CANCELVALUE_COMPLETE"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->CANCELVALUE_COMPLETE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    .line 29
    new-instance v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    const-string v1, "CANCELVALUE_OTHER"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->CANCELVALUE_OTHER:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    sget-object v1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->CANCELVALUE_COMPLETE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->CANCELVALUE_OTHER:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    aput-object v1, v0, v3

    sput-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->$VALUES:[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

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
    iput p3, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->value:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->$VALUES:[Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    invoke-virtual {v0}, [Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeCancel$MmbFcIndivdMwCancelValue;->value:I

    return v0
.end method
