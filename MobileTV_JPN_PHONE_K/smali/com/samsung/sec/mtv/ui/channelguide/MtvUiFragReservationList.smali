.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiFragReservationList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final MENU_CHANNEL_SCHEDULE:I = 0x1

.field private static final MENU_DELETE_ITEM:I = 0x4

.field private static final MENU_MANUAL_RESERVE:I = 0x2

.field private static final MENU_VIEW_FREE_MEMORY:I = 0x3

.field private static final RESERVATION_LOADER:I = 0x2

.field public static final START_TIME_5SEC:I = 0x1388

.field private static TAG:Ljava/lang/String; = null

.field public static final UPDATE_RESERVE_DETAIL:I = 0x2

.field public static final UPDATE_SHOW_DELETE_ALERT_DIALOG:I = 0x1

.field private static final myHandler:Landroid/os/Handler;

.field private static reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLayoutView:Landroid/view/View;

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "MtvUiFragReservationList"

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->myHandler:Landroid/os/Handler;

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 579
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private reenablListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 546
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->myHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v1, "onCreate called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->setHasOptionsMenu(Z)V

    .line 112
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 558
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 174
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 176
    const/4 v0, 0x1

    const v1, 0x7f07021a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 177
    const/4 v0, 0x2

    const v1, 0x7f0702ca

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    const/4 v0, 0x3

    const v1, 0x7f070258

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    const/4 v0, 0x4

    const v1, 0x7f070237

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v3, "onCreateView called :"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mLayoutView:Landroid/view/View;

    .line 122
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    .line 126
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 127
    .local v1, "temp_image":Landroid/widget/ImageView;
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 128
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    .local v0, "mEmplyLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 133
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mLayoutView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView called :"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroyView()V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 149
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 518
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->reenablListeners()V

    .line 519
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 520
    .local v3, "tag":Ljava/lang/Object;
    instance-of v4, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;

    if-nez v4, :cond_0

    .line 521
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v5, "onItemClick invalid tag"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :goto_0
    return-void

    :cond_0
    move-object v2, v3

    .line 524
    check-cast v2, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 526
    .local v2, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-wide v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v4, :cond_1

    .line 529
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "MtvReservation"

    iget-wide v6, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 535
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    invoke-direct {v0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;-><init>(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    .line 536
    .local v0, "detailsFrag":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ReservationDetail"

    invoke-virtual {v0, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 24
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 424
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v18, p2

    .line 425
    .local v18, "view":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 426
    .local v16, "tag":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 427
    .local v15, "strDate":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->reenablListeners()V

    .line 428
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 429
    sget-object v19, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v20, "onItemLongClick invalid tag"

    invoke-static/range {v19 .. v20}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/16 v19, 0x0

    .line 511
    :goto_0
    return v19

    :cond_0
    move-object/from16 v11, v16

    .line 432
    check-cast v11, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 433
    .local v11, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    const-string v20, "en"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 436
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "M/d H:mm"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 437
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "H:mm"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 491
    :goto_1
    const-string v5, ""

    .line 492
    .local v5, "channelName":Ljava/lang/String;
    const-string v17, ""

    .line 493
    .local v17, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    iget v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    move/from16 v20, v0

    iget v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v4

    .line 494
    .local v4, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v4, :cond_f

    iget-object v0, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 495
    iget-object v5, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 496
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 503
    :goto_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 505
    .local v9, "longClickBundle":Landroid/os/Bundle;
    sget-object v19, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v20, "onItemLongClick"

    invoke-static/range {v19 .. v20}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v19, "dialogType"

    const/16 v20, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v19, "db_id"

    iget v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v10

    .line 510
    .local v10, "longClickFragment":Landroid/app/DialogFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v19

    const-string v20, "dialog"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 511
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 439
    .end local v4    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v5    # "channelName":Ljava/lang/String;
    .end local v9    # "longClickBundle":Landroid/os/Bundle;
    .end local v10    # "longClickFragment":Landroid/app/DialogFragment;
    .end local v17    # "title":Ljava/lang/String;
    :cond_1
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "M/d h:mm a"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 440
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "h:mm a"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 445
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 447
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "M/d H:mm"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 448
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "H:mm"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 453
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ja"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 455
    new-instance v12, Ljava/util/GregorianCalendar;

    sget-object v19, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 456
    .local v12, "start":Ljava/util/Calendar;
    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 457
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v13

    .line 458
    .local v13, "startHrs":I
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 460
    .local v14, "startMins":I
    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v19, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 461
    .local v6, "end":Ljava/util/Calendar;
    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 462
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getHours()I

    move-result v7

    .line 464
    .local v7, "endHrs":I
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 466
    .local v8, "endMins":I
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    .line 467
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "M/d "

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v13, :cond_4

    const-string v19, "0"

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ge v14, v0, :cond_5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 472
    :goto_5
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ge v7, v0, :cond_b

    .line 474
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v7, :cond_9

    const-string v19, "0"

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ge v8, v0, :cond_a

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_7
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 467
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto/16 :goto_3

    :cond_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_4

    .line 469
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "M/d "

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v13, v0, :cond_7

    const-string v19, "0"

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ge v14, v0, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v19, v13, -0xc

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_8

    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_9

    .line 474
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto/16 :goto_6

    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto/16 :goto_7

    .line 478
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v7, v0, :cond_c

    const-string v19, "0"

    :goto_a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ge v8, v0, :cond_d

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_b
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v19, v7, -0xc

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_a

    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_b

    .line 484
    .end local v6    # "end":Ljava/util/Calendar;
    .end local v7    # "endHrs":I
    .end local v8    # "endMins":I
    .end local v12    # "start":Ljava/util/Calendar;
    .end local v13    # "startHrs":I
    .end local v14    # "startMins":I
    :cond_e
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "M/d a h:mm"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 485
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "a h:mm"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    iget-wide v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 499
    .restart local v4    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v5    # "channelName":Ljava/lang/String;
    .restart local v17    # "title":Ljava/lang/String;
    :cond_f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationAdapter;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListAdapter:Landroid/widget/ListAdapter;

    .line 565
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 567
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 568
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a00be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 569
    .local v0, "temp_image":Landroid/widget/ImageView;
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 570
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 571
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 577
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 214
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 191
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v0, "ChScintent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    .end local v0    # "ChScintent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/samsung/sec/mtv/ui/common/MtvUiManualReservation;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 201
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->addMemInfoFrag()V

    goto :goto_0

    .line 205
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v2, "remListInt":Landroid/content/Intent;
    const-string v3, "Remove_List_Type"

    const/16 v4, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 222
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v4, "onPrepareOptionsMenu"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "isOnlyScheduleTabEnabled":Z
    const/4 v0, 0x1

    .line 227
    .local v0, "isDeleteToBeEnabled":Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 233
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    .line 234
    .local v2, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v3, v4, :cond_0

    .line 236
    const/4 v1, 0x1

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 250
    :cond_1
    const/4 v3, 0x1

    const v4, 0x7f07021a

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200b0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 251
    const/4 v3, 0x2

    const v4, 0x7f0702ca

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200b5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 252
    const/4 v3, 0x3

    const v4, 0x7f070258

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200b2

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 253
    if-eqz v0, :cond_2

    .line 254
    const/4 v3, 0x4

    const v4, 0x7f070237

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200b1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 255
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 256
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 139
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->TAG:Ljava/lang/String;

    const-string v1, "on resume called.."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 141
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 280
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 281
    return-void

    .line 262
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "deleteBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 264
    .local v1, "deleteFragment":Landroid/app/DialogFragment;
    const/4 v3, -0x1

    .line 265
    .local v3, "rserve_id":I
    if-eqz p2, :cond_0

    move-object v4, p2

    .line 266
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 267
    :cond_0
    const-string v4, "dialogType"

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v4, "db_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    .line 270
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v1, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0    # "deleteBundle":Landroid/os/Bundle;
    .end local v1    # "deleteFragment":Landroid/app/DialogFragment;
    .end local v3    # "rserve_id":I
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    iget-wide v6, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v5, 0x0

    new-array v5, v5, [Z

    invoke-static {v4, v6, v7, v5}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v4

    sput-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 274
    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;

    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->reserve:Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-direct {v2, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList$ReservationDetail;-><init>(Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    .line 275
    .local v2, "detailsFrag":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ReservationDetail"

    invoke-virtual {v2, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
