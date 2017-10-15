.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiFragTVLinkList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;
    }
.end annotation


# static fields
.field private static final DIALOG_TV_LINK_DELETE_OK:I = 0x3

.field private static final MENU_DELETE_ITEM:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final TVLINK_CLICK:I = 0x2

.field private static final TVLINK_LONG_CLICK:I = 0x1

.field private static mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private static mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLayoutView:Landroid/view/View;

.field protected mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field private mLinkAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;

.field protected mLinkIndex:I

.field private mLinkSelectedIndex:I

.field protected mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field private mListView:Landroid/widget/ListView;

.field protected mPreImageView:Landroid/widget/ImageView;

.field protected mTvLinkDetail:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field protected mUriString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "MtvUiFragTVLinkList"

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->TAG:Ljava/lang/String;

    .line 75
    sput-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 87
    sput-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 71
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    .line 77
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mUriString:Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkIndex:I

    .line 79
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mTvLinkDetail:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 91
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkSelectedIndex:I

    .line 570
    return-void
.end method

.method static synthetic access$300()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 67
    sput-object p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object p0
.end method

.method static synthetic access$400()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    return-object v0
.end method

.method private populateTVLinkList()V
    .locals 4

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->TAG:Ljava/lang/String;

    const-string v1, "populateTVLinkList"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->bringToFront()V

    .line 101
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfoAll()[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 103
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030013

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;-><init>(Landroid/content/Context;I[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkAdapter;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->populateTVLinkList()V

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 124
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->TAG:Ljava/lang/String;

    const-string v1, "onCreate called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mActivity:Landroid/app/Activity;

    .line 127
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->setHasOptionsMenu(Z)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->setRetainInstance(Z)V

    .line 129
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 184
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->TAG:Ljava/lang/String;

    const-string v3, "onCreateView called :"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLayoutView:Landroid/view/View;

    .line 145
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    .line 146
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 147
    .local v1, "temp_image":Landroid/widget/ImageView;
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 148
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 149
    .local v0, "mEmplyLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->populateTVLinkList()V

    .line 152
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLayoutView:Landroid/view/View;

    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "clickedView"    # Landroid/view/View;
    .param p3, "postion"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 514
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mTvLinkDetail:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 515
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 516
    iput v8, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkIndex:I

    .line 518
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getValidDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getValidDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getID()I

    move-result v1

    invoke-static {v6, v8, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->newInstance(III)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TvLinkDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getCproBMType()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 528
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getDstURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mUriString:Ljava/lang/String;

    .line 529
    iput v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkIndex:I

    .line 537
    :cond_2
    :goto_1
    iput p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkSelectedIndex:I

    .line 539
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getCproBMType()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 552
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MtvSelectLink"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkSelectedIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 530
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getCproBMType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getCproBMType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 533
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getDstURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mUriString:Ljava/lang/String;

    .line 534
    iput v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkIndex:I

    goto :goto_1

    .line 558
    :cond_5
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkIndex:I

    if-ne v1, v6, :cond_6

    .line 560
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkIndex:I

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getID()I

    move-result v2

    invoke-static {v6, v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->newInstance(III)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TvLinkDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getCproBMType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/sec/mtv/ui/tvlink/MtvUiTvLinks;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "MtvSelectLink"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinkSelectedIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 502
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mTvLinkDetail:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 504
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mTvLinkDetail:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-nez v0, :cond_0

    .line 505
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->TAG:Ljava/lang/String;

    const-string v1, "TabLink :onItemLongClick invalid tag"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mTvLinkDetail:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getID()I

    move-result v0

    invoke-static {v1, p3, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->newInstance(III)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TvLinkDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 509
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 213
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 205
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "remListInt":Landroid/content/Intent;
    const-string v1, "Remove_List_Type"

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 188
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareOptionsMenu called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 190
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 192
    const v0, 0x7f070237

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 194
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 195
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 167
    packed-switch p1, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;->populateTVLinkList()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
    .end packed-switch
.end method
