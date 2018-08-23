.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MmbFcBrowMwViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinglePopupListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private currentIndex:I

.field private isEnabled:[Z

.field private isLabel:[Z

.field private items:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

.field private userData:I


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/content/Context;[Ljava/lang/String;[Z[ZII)V
    .locals 1
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aItems"    # [Ljava/lang/String;
    .param p4, "aIsLabel"    # [Z
    .param p5, "aIsEnabled"    # [Z
    .param p6, "aCurrentIndex"    # I
    .param p7, "aUserData"    # I

    .prologue
    .line 484
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 485
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 486
    iput-object p3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->items:[Ljava/lang/String;

    .line 487
    iput-object p4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->isLabel:[Z

    .line 488
    iput-object p5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->isEnabled:[Z

    .line 489
    iput p6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->currentIndex:I

    .line 490
    iput p7, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->userData:I

    .line 491
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->notifyDataSetChanged()V

    .line 492
    return-void
.end method

.method static synthetic access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;

    .prologue
    .line 476
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->userData:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->items:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "aPosition"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->items:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "aPosition"    # I

    .prologue
    .line 499
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "aPosition"    # I
    .param p2, "aConvertView"    # Landroid/view/View;
    .param p3, "aParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    const v10, 0x1020014

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 504
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->isLabel:[Z

    aget-boolean v5, v5, p1

    if-ne v7, v5, :cond_0

    .line 505
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090011

    invoke-virtual {v5, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 506
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 507
    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;)V

    .line 508
    .local v3, "holder":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 509
    iget-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->items:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :goto_0
    return-object p2

    .line 511
    .end local v3    # "holder":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090012

    invoke-virtual {v5, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 512
    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 513
    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;)V

    .line 514
    .restart local v3    # "holder":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    .line 515
    iget-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->items:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->isEnabled:[Z

    aget-boolean v5, v5, p1

    if-ne v7, v5, :cond_2

    .line 517
    iget v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;->currentIndex:I

    if-ne v5, p1, :cond_1

    .line 518
    iget-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 522
    :goto_1
    new-instance v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;

    invoke-direct {v5, p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 530
    :cond_2
    iget-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v9}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 531
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v1

    .line 532
    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 533
    .local v4, "statedrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 534
    .local v0, "containerstate":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 535
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    iget-object v5, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter$ViewHolder;->checkedTitle:Landroid/widget/CheckedTextView;

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
