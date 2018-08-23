.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv$1;
.super Ljava/lang/Object;
.source "MmbFwMetaListCridSv.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 916
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [I

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv$1;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 5
    .param p1, "aValue1"    # [I
    .param p2, "aValue2"    # [I

    .prologue
    .line 933
    array-length v3, p1

    array-length v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 934
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 935
    aget v3, p1, v1

    aget v4, p2, v1

    sub-int v0, v3, v4

    .line 936
    .local v0, "diff":I
    if-eqz v0, :cond_1

    .line 967
    .end local v0    # "diff":I
    :cond_0
    :goto_1
    return v0

    .line 934
    .restart local v0    # "diff":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    .end local v0    # "diff":I
    :cond_2
    array-length v3, p1

    array-length v4, p2

    if-le v3, v4, :cond_3

    .line 944
    move v1, v2

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 945
    aget v3, p1, v1

    add-int/lit8 v0, v3, 0x0

    .line 946
    .restart local v0    # "diff":I
    if-nez v0, :cond_0

    .line 944
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 953
    .end local v0    # "diff":I
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    .line 954
    move v1, v2

    :goto_3
    array-length v3, p2

    if-ge v1, v3, :cond_4

    .line 955
    aget v3, p2, v1

    rsub-int/lit8 v0, v3, 0x0

    .line 956
    .restart local v0    # "diff":I
    if-nez v0, :cond_0

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 967
    .end local v0    # "diff":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
