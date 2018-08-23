.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MmbFcBrowMwViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "multiPopupListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isEnabled:[Z

.field private isLabel:[Z

.field private items:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private selectionIndex:[Z

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

.field private userData:I


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/content/Context;[Ljava/lang/String;[Z[Z[ZI)V
    .locals 1
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aItems"    # [Ljava/lang/String;
    .param p4, "aIsLabel"    # [Z
    .param p5, "aIsEnabled"    # [Z
    .param p6, "aSelectionIndex"    # [Z
    .param p7, "aUserData"    # I

    .prologue
    .line 611
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 612
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 613
    iput-object p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->items:[Ljava/lang/String;

    .line 614
    iput-object p4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->isLabel:[Z

    .line 615
    iput-object p5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->isEnabled:[Z

    .line 616
    iput-object p6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->selectionIndex:[Z

    .line 617
    iput p7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->userData:I

    .line 618
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->notifyDataSetChanged()V

    .line 619
    return-void
.end method

.method static synthetic access$1200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;)[Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;

    .prologue
    .line 603
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->selectionIndex:[Z

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->items:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->items:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    .line 626
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "aPosition"    # I
    .param p2, "aConvertView"    # Landroid/view/View;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const v6, 0x1020014

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 631
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->isLabel:[Z

    aget-boolean v1, v1, p1

    if-ne v3, v1, :cond_0

    .line 632
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090011

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 633
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 634
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;)V

    .line 635
    .local v0, "holder":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 636
    iget-object v1, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->items:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    :goto_0
    return-object p2

    .line 638
    .end local v0    # "holder":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090013

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 639
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 640
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;)V

    .line 641
    .restart local v0    # "holder":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    .line 642
    iget-object v1, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->items:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->isEnabled:[Z

    aget-boolean v1, v1, p1

    if-ne v3, v1, :cond_2

    .line 644
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;->selectionIndex:[Z

    aget-boolean v1, v1, p1

    if-ne v3, v1, :cond_1

    .line 645
    iget-object v1, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 649
    :goto_1
    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;ILmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 647
    :cond_1
    iget-object v1, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 662
    :cond_2
    iget-object v1, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_0
.end method
