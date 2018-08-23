.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$5;
.super Ljava/lang/Object;
.source "MmbSiMetadataCallbackSv.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;->sortItemArray([Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)I
    .locals 8
    .param p1, "aSrc1"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;
    .param p2, "aSrc2"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .prologue
    .line 746
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->startTime:J

    iget-wide v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->startTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 747
    const/4 v2, 0x1

    .line 766
    .local v2, "ret":I
    :goto_0
    return v2

    .line 748
    .end local v2    # "ret":I
    :cond_0
    iget-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->startTime:J

    iget-wide v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->startTime:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 749
    const/4 v2, -0x1

    .restart local v2    # "ret":I
    goto :goto_0

    .line 751
    .end local v2    # "ret":I
    :cond_1
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->crid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 752
    .local v0, "emp1":Z
    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->crid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 753
    .local v1, "emp2":Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 754
    const/4 v2, 0x0

    .restart local v2    # "ret":I
    goto :goto_0

    .line 755
    .end local v2    # "ret":I
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 756
    const/4 v2, 0x1

    .restart local v2    # "ret":I
    goto :goto_0

    .line 757
    .end local v2    # "ret":I
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 758
    const/4 v2, -0x1

    .restart local v2    # "ret":I
    goto :goto_0

    .line 760
    .end local v2    # "ret":I
    :cond_4
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->crid:Ljava/lang/String;

    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;->crid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 736
    check-cast p1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackImpl$5;->compare(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv$MmbSiMetadataCallbackItem;)I

    move-result v0

    return v0
.end method
