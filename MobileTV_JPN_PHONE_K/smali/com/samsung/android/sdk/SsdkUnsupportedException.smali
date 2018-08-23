.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SsdkUnsupportedException.java"


# static fields
.field public static final DEVICE_NOT_SUPPORTED:I = 0x1

.field public static final SDK_VERSION_MISMATCH:I = 0x2

.field public static final VENDOR_NOT_SUPPORTED:I


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    .line 30
    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    .line 30
    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    .line 65
    iput-object p3, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    .line 67
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mVersionCode:I

    return v0
.end method
