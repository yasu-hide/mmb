.class public final enum Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
.super Ljava/lang/Enum;
.source "MmbFcContMwClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcContMw/MmbFcContMwClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MmbFcContMwResumeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

.field public static final enum RESUME_BOTH:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

.field public static final enum RESUME_BROWSE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

.field public static final enum RESUME_MP4:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

.field public static final enum RESUME_NODATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;


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

    .line 115
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    const-string v1, "RESUME_NODATA"

    invoke-direct {v0, v1, v2, v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_NODATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    .line 117
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    const-string v1, "RESUME_MP4"

    invoke-direct {v0, v1, v3, v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_MP4:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    .line 119
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    const-string v1, "RESUME_BROWSE"

    invoke-direct {v0, v1, v4, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_BROWSE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    .line 121
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    const-string v1, "RESUME_BOTH"

    invoke-direct {v0, v1, v5, v5}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_BOTH:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_NODATA:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    aput-object v1, v0, v2

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_MP4:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    aput-object v1, v0, v3

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_BROWSE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    aput-object v1, v0, v4

    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->RESUME_BOTH:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    aput-object v1, v0, v5

    sput-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->value:I

    .line 130
    return-void
.end method

.method public static maxLength()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x10

    return v0
.end method

.method public static valueOf(I)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    .locals 5
    .param p0, "anIntValue"    # I

    .prologue
    .line 150
    invoke-static {}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    move-result-object v0

    .local v0, "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 151
    .local v1, "d":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->getInt()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 155
    .end local v1    # "d":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    :goto_1
    return-object v1

    .line 150
    .restart local v1    # "d":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "d":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    return-object v0
.end method

.method public static values()[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->$VALUES:[Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    invoke-virtual {v0}, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwResumeType;->value:I

    return v0
.end method
