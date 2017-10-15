.class Lcom/access/bml/BMLBookmarkEntry$1;
.super Ljava/lang/Object;
.source "BMLBookmarkEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLBookmarkEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/access/bml/BMLBookmarkEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/access/bml/BMLBookmarkEntry;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 126
    new-instance v0, Lcom/access/bml/BMLBookmarkEntry;

    invoke-direct {v0, p1}, Lcom/access/bml/BMLBookmarkEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLBookmarkEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/access/bml/BMLBookmarkEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/access/bml/BMLBookmarkEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 131
    new-array v0, p1, [Lcom/access/bml/BMLBookmarkEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLBookmarkEntry$1;->newArray(I)[Lcom/access/bml/BMLBookmarkEntry;

    move-result-object v0

    return-object v0
.end method
