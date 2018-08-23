.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebkitPopupList"
.end annotation


# instance fields
.field private mIsEnabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLabelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMulti:Z

.field private mItemCount:I

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelections:[Z

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V
    .locals 1

    .prologue
    .line 688
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsMulti:Z

    .line 690
    const/4 v0, 0x1

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemCount:I

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mSelections:[Z

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsLabelList:Ljava/util/ArrayList;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsEnabledList:Ljava/util/ArrayList;

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemList:Ljava/util/ArrayList;

    .line 695
    return-void
.end method


# virtual methods
.method public getIsEnabledList()[Z
    .locals 4

    .prologue
    .line 718
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 719
    .local v1, "itemcnt":I
    new-array v2, v1, [Z

    .line 720
    .local v2, "items":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 721
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_0
    return-object v2
.end method

.method public getIsLabelList()[Z
    .locals 4

    .prologue
    .line 710
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsLabelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 711
    .local v1, "itemcnt":I
    new-array v2, v1, [Z

    .line 712
    .local v2, "items":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 713
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsLabelList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    :cond_0
    return-object v2
.end method

.method public getItemList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 702
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 703
    .local v1, "itemcnt":I
    new-array v2, v1, [Ljava/lang/String;

    .line 704
    .local v2, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 705
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_0
    return-object v2
.end method

.method public getItemSelections()[Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mSelections:[Z

    return-object v0
.end method

.method public isMultiSelect()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsMulti:Z

    return v0
.end method

.method public setItemSelection(IZ)V
    .locals 1
    .param p1, "aIndex"    # I
    .param p2, "aSelect"    # Z

    .prologue
    .line 730
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mSelections:[Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemCount:I

    if-lt p1, v0, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mSelections:[Z

    aput-boolean p2, v0, p1

    goto :goto_0
.end method

.method webkitAddItem(ILjava/lang/String;ZZZ)V
    .locals 4
    .param p1, "aIndex"    # I
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aSelect"    # Z
    .param p4, "aIsLabel"    # Z
    .param p5, "aIsEnabled"    # Z

    .prologue
    .line 744
    if-nez p2, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsMulti:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemCount:I

    if-ge p1, v1, :cond_0

    .line 749
    :cond_2
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsLabelList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsEnabledList:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsMulti:Z

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mSelections:[Z

    aput-boolean p3, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method webkitSetMultiple(ZI)V
    .locals 1
    .param p1, "aMulti"    # Z
    .param p2, "aItemCount"    # I

    .prologue
    .line 737
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mIsMulti:Z

    .line 738
    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mItemCount:I

    .line 739
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-lez p2, :cond_0

    .line 740
    new-array v0, p2, [Z

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->mSelections:[Z

    .line 741
    :cond_0
    return-void
.end method
