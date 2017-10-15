.class public Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiRemoveList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;
    }
.end annotation


# static fields
.field private static final FINISH_PROGRESS:I = 0x1

.field private static INTENT_FILTER:Landroid/content/IntentFilter; = null

.field private static final SHOW_PROGRESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtvUiRemoveList"

.field public static final TV_CHANNEL_LIST:I = 0x65

.field public static final TV_FILES_LIST:I = 0x67

.field public static final TV_LINKS_LIST:I = 0x68

.field public static final TV_SCHEDULE_LIST:I = 0x66

.field public static final TV_STATION_DATA_LIST:I = 0x64

.field static sIsDeleting:Z


# instance fields
.field actionBarView:Landroid/view/View;

.field cancelLayout:Landroid/view/MenuItem;

.field doneLayout:Landroid/view/MenuItem;

.field private mAffiliation_id:I

.field private mAllCheck:Landroid/widget/CheckBox;

.field private mDeleteStationData:[Ljava/lang/String;

.field private mDeleteStationDataListUp:[Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mItemsCheckedState:[Z

.field private mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

.field protected mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field private mListView:Landroid/widget/ListView;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

.field private mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field private mPlayImageView:Landroid/widget/ImageView;

.field private mPreImageView:Landroid/widget/ImageView;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemoveListType:I

.field private mRemove_Channel:[Ljava/lang/String;

.field private mRemove_Reserve:[Ljava/lang/Long;

.field private mReserveAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;

.field private mReserveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAllText:Landroid/widget/TextView;

.field private mStationDataAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

.field private mTVFilesCount:I

.field private mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 138
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveList:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 101
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 105
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    .line 106
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    .line 109
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 121
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 123
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mStationDataAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    .line 125
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationDataListUp:[Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    .line 129
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 130
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->cancelLayout:Landroid/view/MenuItem;

    .line 131
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    .line 132
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->actionBarView:Landroid/view/View;

    .line 141
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mUiHandler:Landroid/os/Handler;

    .line 1616
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$8;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    return v0
.end method

.method static synthetic access$1210(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->clearDeleteFileDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mSelectAllText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getItemCheckedState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->removeChannel()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setItemCheckedState(IZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPlayImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setFileInfo(Lcom/samsung/sec/mtv/provider/MtvFile;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->requestSystemKeyEvent(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->removeFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->removeReserve()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->removeLink()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->removeDeleteStationData()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mStationDataAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    return-object v0
.end method

.method private checkRemoveItemType()V
    .locals 1

    .prologue
    .line 1554
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    packed-switch v0, :pswitch_data_0

    .line 1595
    :cond_0
    :goto_0
    return-void

    .line 1556
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Channel:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    goto :goto_0

    .line 1559
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    goto :goto_0

    .line 1563
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-nez v0, :cond_1

    .line 1564
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 1566
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v0, v0

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    if-nez v0, :cond_2

    .line 1567
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    goto :goto_0

    .line 1570
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    goto :goto_0

    .line 1574
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-nez v0, :cond_3

    .line 1575
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfoAll()[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 1577
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v0, v0

    if-lez v0, :cond_4

    sget-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    if-nez v0, :cond_4

    .line 1578
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    goto :goto_0

    .line 1581
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    goto :goto_0

    .line 1585
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    sget-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    if-nez v0, :cond_5

    .line 1586
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    goto :goto_0

    .line 1589
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    goto :goto_0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private clearDeleteFileDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 753
    const-string v0, "MtvUiRemoveList"

    const-string v1, "clearDeleteFileDialog  called.."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 755
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->requestSystemKeyEvent(IZ)Z

    .line 756
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->requestSystemKeyEvent(IZ)Z

    .line 758
    return-void
.end method

.method private createTabList(I)V
    .locals 10
    .param p1, "tab"    # I

    .prologue
    const v5, 0x7f030038

    const v9, 0x7f030013

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 480
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 333
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    if-nez v4, :cond_1

    .line 334
    invoke-static {v8}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 337
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v4, v4

    if-eqz v4, :cond_3

    .line 338
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 341
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    if-nez v4, :cond_2

    .line 342
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    .line 344
    :cond_2
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    invoke-direct {v4, p0, p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    .line 346
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$3;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 352
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v4, v4

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    goto :goto_0

    .line 354
    :cond_3
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    invoke-direct {v4, p0, p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    .line 355
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 359
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-nez v4, :cond_4

    .line 366
    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfoAll()[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .line 369
    :cond_4
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v4, v4

    if-eqz v4, :cond_6

    .line 370
    const-string v4, "MtvUiRemoveList"

    const-string v5, "mLinks is not null"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 374
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    if-nez v4, :cond_5

    .line 375
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v4, v4

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    .line 377
    :cond_5
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-direct {v4, p0, p0, v9, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    .line 378
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$4;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 385
    :cond_6
    const-string v4, "MtvUiRemoveList"

    const-string v5, "mLinks is null"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    invoke-direct {v4, p0, p0, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    .line 387
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 388
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 389
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 396
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "delete_station_data_index"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAffiliation_id:I

    .line 397
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 398
    const/4 v1, 0x1

    .line 399
    .local v1, "isEmpty":Z
    const/4 v2, 0x1

    .line 400
    .local v2, "isFull":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_8

    .line 401
    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAffiliation_id:I

    invoke-static {v4, v0}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->deleteStationData_GetNetworkName(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 403
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    iget v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAffiliation_id:I

    invoke-static {v5, v0}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->deleteStationData_GetNetworkName(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 404
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 405
    const/4 v1, 0x0

    .line 400
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_7
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    const v5, 0x7f070241

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 410
    const/4 v2, 0x0

    goto :goto_2

    .line 414
    :cond_8
    if-eqz v2, :cond_9

    .line 415
    const v4, 0x7f0a0034

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 418
    :cond_9
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    if-nez v4, :cond_a

    .line 419
    new-array v4, v7, [Z

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    .line 421
    :cond_a
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    const v5, 0x7f030010

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    invoke-direct {v4, p0, p0, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mStationDataAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    .line 422
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mStationDataAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 424
    if-nez v1, :cond_b

    .line 425
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$5;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 440
    :cond_b
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 442
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    .line 443
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 446
    .end local v0    # "i":I
    .end local v1    # "isEmpty":Z
    .end local v2    # "isFull":Z
    :pswitch_4
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getAllReserves(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 447
    .local v3, "reserves":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 449
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/Long;

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    .line 452
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 454
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 455
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveList:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    iget-wide v6, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    aget-object v5, v3, v0

    iget-wide v6, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 458
    :cond_c
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_d

    .line 459
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 461
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    if-eqz v4, :cond_d

    .line 462
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 466
    :cond_d
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    if-nez v4, :cond_e

    .line 467
    array-length v4, v3

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    .line 469
    :cond_e
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;

    const v5, 0x7f030034

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveList:Ljava/util/ArrayList;

    invoke-direct {v4, p0, p0, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;

    .line 470
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$6;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$6;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 1057
    const/4 v2, 0x0

    .line 1058
    .local v2, "filestream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1060
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .local v3, "filestream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1068
    if-eqz v3, :cond_0

    .line 1069
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 1076
    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v0

    .line 1071
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .restart local v3    # "filestream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 1074
    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1063
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1068
    if-eqz v2, :cond_1

    .line 1069
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1071
    :catch_2
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1067
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1068
    :goto_2
    if-eqz v2, :cond_2

    .line 1069
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1073
    :cond_2
    :goto_3
    throw v4

    .line 1071
    :catch_3
    move-exception v1

    .line 1072
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1067
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .restart local v3    # "filestream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1063
    .end local v2    # "filestream":Ljava/io/FileInputStream;
    .restart local v3    # "filestream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "filestream":Ljava/io/FileInputStream;
    .restart local v2    # "filestream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getCheckedItemCount()I
    .locals 3

    .prologue
    .line 1211
    const/4 v0, 0x0

    .line 1212
    .local v0, "count":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1213
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1215
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 1216
    add-int/lit8 v0, v0, 0x1

    .line 1213
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "position":I
    :cond_1
    return v0
.end method

.method private getItemCheckedState(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aget-boolean v0, v0, p1

    .line 1206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreviewThumbnailPath(Lcom/samsung/sec/mtv/provider/MtvFile;)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    const/4 v9, 0x0

    .line 1034
    const/4 v3, 0x0

    .line 1035
    .local v3, "indexPathEnd":I
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "orgPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v5

    if-nez v5, :cond_0

    .line 1038
    const-string v5, "record"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thumbnails/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".thm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    const-string v5, "MtvUiRemoveList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewThumbnailPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1043
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_0
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1044
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhMem"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1045
    :cond_1
    const-string v2, "sdcard/video/MyTvFiles/thumbnails/"

    .line 1048
    .restart local v2    # "filePath":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1049
    .local v1, "fileNumber":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%03X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".thm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto/16 :goto_0

    .line 1047
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "fileNumber":I
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_2
    const-string v2, "/mnt/extSdCard/video/MyTvFiles/thumbnails/"

    .restart local v2    # "filePath":Ljava/lang/String;
    goto :goto_1
.end method

.method private removeChannel()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method private removeDeleteStationData()V
    .locals 5

    .prologue
    .line 813
    const/4 v1, -0x1

    .line 814
    .local v1, "originalNetId":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 815
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 818
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 819
    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAffiliation_id:I

    invoke-static {v2, v0}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getOriginalNetworkId(II)I

    move-result v1

    .line 820
    const-string v2, "MtvUiRemoveList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMtvPlayer.deleteStationData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") call.. with affilication id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAffiliation_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OriginalNetID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 824
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    iget v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAffiliation_id:I

    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->deleteBroadCasterArea(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;II)Z

    .line 817
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    .line 830
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private removeFile()V
    .locals 2

    .prologue
    .line 693
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$7;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 739
    return-void
.end method

.method private removeLink()V
    .locals 5

    .prologue
    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "bDelTvLink":Z
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v2, :cond_1

    .line 783
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    .line 786
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getCheckedItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v3, v3

    if-ne v2, v3, :cond_2

    .line 787
    const-string v2, "MtvUiRemoveList"

    const-string v3, "MtvBMLManager.deleteCProBMInfoAll(All) call.."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->BMLDeleteLinkAll()Z

    move-result v0

    .line 790
    if-nez v0, :cond_0

    .line 791
    const-string v2, "MtvUiRemoveList"

    const-string v3, "faliled to delete all TV links"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    .line 810
    :cond_1
    return-void

    .line 796
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 798
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    .line 799
    const-string v2, "MtvUiRemoveList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MtvBMLManager.deleteCProBMInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") call.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->BMLDeleteLink(I)Z

    move-result v0

    .line 803
    if-nez v0, :cond_3

    .line 804
    const-string v2, "MtvUiRemoveList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faliled to delete  TV link with index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeReserve()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 677
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    aget-object v2, v3, v0

    .line 678
    .local v2, "temp":Ljava/lang/Long;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 679
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-array v3, v6, [Z

    invoke-static {p0, v4, v5, v3}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v1

    .line 680
    .local v1, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v1, :cond_0

    .line 681
    iget-wide v4, v1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v3, 0x1

    invoke-static {p0, v4, v5, v6, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    .line 676
    .end local v1    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v2    # "temp":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    .line 686
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "request"    # Z

    .prologue
    .line 1606
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1609
    .local v1, "windowmanager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1613
    :goto_0
    return v2

    .line 1610
    :catch_0
    move-exception v0

    .line 1611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1613
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFileInfo(Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 14
    .param p1, "file"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1080
    if-nez p1, :cond_1

    .line 1081
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1086
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPlayImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1088
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1089
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 1133
    :pswitch_0
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getPreviewThumbnailPath(Lcom/samsung/sec/mtv/provider/MtvFile;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1134
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1092
    :pswitch_1
    const/4 v7, 0x0

    .line 1093
    .local v7, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1096
    .local v4, "inputData":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1097
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;

    const/4 v10, 0x2

    invoke-direct {v0, v10}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;-><init>(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    .local v0, "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    const/4 v6, 0x0

    .line 1101
    .local v6, "outSize":I
    const/4 v5, -0x1

    .line 1102
    .local v5, "numberOfBytes":I
    const/4 v10, 0x2

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v0, v10, v11}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->getOutputSize(II)I

    move-result v6

    .line 1103
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1104
    .local v1, "decBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1105
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 1106
    const-string v10, "MtvUiRemoveList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " numberOfBytes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0, v4, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->decryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1108
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1122
    .end local v1    # "decBuf":Ljava/nio/ByteBuffer;
    :goto_1
    if-eqz v8, :cond_2

    .line 1123
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    move-object v7, v8

    .line 1127
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1110
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 1111
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1117
    .end local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "numberOfBytes":I
    .end local v6    # "outSize":I
    :catch_1
    move-exception v2

    move-object v7, v8

    .line 1118
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1122
    if-eqz v7, :cond_0

    .line 1123
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1125
    :catch_2
    move-exception v2

    .line 1126
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1113
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v5    # "numberOfBytes":I
    .restart local v6    # "outSize":I
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 1114
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1121
    .end local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "numberOfBytes":I
    .end local v6    # "outSize":I
    :catchall_0
    move-exception v10

    move-object v7, v8

    .line 1122
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v7, :cond_3

    .line 1123
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1127
    :cond_3
    :goto_4
    throw v10

    .line 1125
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v5    # "numberOfBytes":I
    .restart local v6    # "outSize":I
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    .line 1126
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 1128
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1125
    .end local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "numberOfBytes":I
    .end local v6    # "outSize":I
    :catch_5
    move-exception v2

    .line 1126
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1139
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "inputData":Ljava/nio/ByteBuffer;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :pswitch_2
    const/4 v7, 0x0

    .line 1141
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1142
    .restart local v4    # "inputData":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 1144
    .local v9, "thumbnailPath":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getPreviewThumbnailPath(Lcom/samsung/sec/mtv/provider/MtvFile;)Ljava/lang/String;

    move-result-object v9

    .line 1145
    if-nez v9, :cond_4

    .line 1146
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1147
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1151
    :cond_4
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPlayImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1152
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1154
    :try_start_9
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1155
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :try_start_a
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;

    const/4 v10, 0x2

    invoke-direct {v0, v10}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;-><init>(I)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1156
    .restart local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    const/4 v6, 0x0

    .line 1159
    .restart local v6    # "outSize":I
    const/4 v5, -0x1

    .line 1160
    .restart local v5    # "numberOfBytes":I
    const/4 v10, 0x2

    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v0, v10, v11}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->getOutputSize(II)I

    move-result v6

    .line 1161
    if-lez v6, :cond_5

    .line 1162
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1163
    .restart local v1    # "decBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1164
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 1165
    const-string v10, "MtvUiRemoveList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " numberOfBytes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0, v4, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->decryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 1167
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1178
    .end local v1    # "decBuf":Ljava/nio/ByteBuffer;
    :cond_5
    :goto_5
    if-eqz v8, :cond_6

    .line 1179
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_6
    move-object v7, v8

    .line 1183
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1169
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    .line 1170
    .local v3, "e1":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5

    .line 1173
    .end local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v5    # "numberOfBytes":I
    .end local v6    # "outSize":I
    :catch_7
    move-exception v2

    move-object v7, v8

    .line 1174
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_6
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1178
    if-eqz v7, :cond_0

    .line 1179
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    .line 1180
    :catch_8
    move-exception v2

    .line 1182
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1180
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v5    # "numberOfBytes":I
    .restart local v6    # "outSize":I
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    .line 1182
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 1184
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 1177
    .end local v0    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "numberOfBytes":I
    .end local v6    # "outSize":I
    :catchall_1
    move-exception v10

    .line 1178
    :goto_7
    if-eqz v7, :cond_7

    .line 1179
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 1183
    :cond_7
    :goto_8
    throw v10

    .line 1180
    :catch_a
    move-exception v2

    .line 1182
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1177
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1173
    :catch_b
    move-exception v2

    goto :goto_6

    .line 1121
    .end local v9    # "thumbnailPath":Ljava/lang/String;
    :catchall_3
    move-exception v10

    goto/16 :goto_3

    .line 1117
    :catch_c
    move-exception v2

    goto/16 :goto_2

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setItemCheckedState(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aput-boolean p2, v0, p1

    .line 1198
    :cond_0
    return-void
.end method

.method private setSaveButtonEnabled(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1484
    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1496
    :cond_1
    :goto_0
    return-void

    .line 1493
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private startDeleteFileDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 744
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 745
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->requestSystemKeyEvent(IZ)Z

    .line 746
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->requestSystemKeyEvent(IZ)Z

    .line 749
    return-void
.end method


# virtual methods
.method public BMLDeleteLink(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "bDelTvLink":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v1, :cond_0

    .line 774
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 775
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v1, v2, p1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->deleteTvLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z

    move-result v0

    .line 778
    :cond_0
    return v0
.end method

.method public BMLDeleteLinkAll()Z
    .locals 3

    .prologue
    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, "bDelAllTvlink":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v1, :cond_0

    .line 764
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 765
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v1, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->deleteAllTvLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    move-result v0

    .line 767
    :cond_0
    return v0
.end method

.method public checkItemCount(I)V
    .locals 5
    .param p1, "listItemLength"    # I

    .prologue
    const/4 v4, 0x1

    .line 1499
    const/4 v0, 0x0

    .line 1500
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 1501
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aget-boolean v2, v2, v1

    if-ne v2, v4, :cond_0

    .line 1502
    add-int/lit8 v0, v0, 0x1

    .line 1503
    :cond_0
    if-ne p1, v0, :cond_1

    .line 1504
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1500
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1506
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1508
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setSaveButtonEnabled(I)V

    .line 1509
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 606
    :goto_0
    :pswitch_0
    return-void

    .line 486
    :pswitch_1
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    const/16 v4, 0x64

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 490
    :cond_1
    :pswitch_2
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    packed-switch v1, :pswitch_data_1

    .line 558
    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setSaveButtonEnabled(I)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 487
    goto :goto_1

    .line 492
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 493
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Channel:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 497
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Channel:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 502
    .end local v0    # "i":I
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 504
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->setChecked(IZ)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 509
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTvFileAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->setChecked(IZ)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 516
    .end local v0    # "i":I
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-eqz v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 518
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->setChecked(IZ)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 523
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinks:[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 525
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mLinkAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$TvLinkAdapter;->setChecked(IZ)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 530
    .end local v0    # "i":I
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 531
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 532
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 534
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mStationDataAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->setChecked(IZ)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 537
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationData:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mStationDataAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$StationDataAdapter;->setChecked(IZ)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 544
    .end local v0    # "i":I
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 545
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 547
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->setChecked(IZ)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 550
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemove_Reserve:[Ljava/lang/Long;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mReserveAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;

    invoke-virtual {v1, v0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->setChecked(IZ)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0034
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 490
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0a0034

    const/4 v3, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getActionBar()Landroid/app/ActionBar;

    .line 174
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setContentView(I)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 178
    const-string v1, "Remove_List_Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    .line 183
    const-string v1, "mItemsCheckedState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    .line 186
    :cond_1
    const v1, 0x7f0a0039

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    .line 187
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    const v2, 0x7f0a003a

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 188
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 191
    const v1, 0x7f0a0037

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    .line 192
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v1, 0x7f0a0036

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mSelectAllText:Landroid/widget/TextView;

    .line 194
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const/16 v1, 0x64

    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    if-ne v1, v2, :cond_2

    .line 197
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mSelectAllText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    :cond_2
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 204
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    sget-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v1, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 207
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 215
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 216
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 217
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f090000

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 218
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    .line 219
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->cancelLayout:Landroid/view/MenuItem;

    .line 220
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 221
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkRemoveItemType()V

    .line 224
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)V

    .line 297
    .local v1, "menuListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->cancelLayout:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 298
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->doneLayout:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 299
    return v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "MtvUiRemoveList"

    const-string v1, "onDestroy call..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sIsDeleting:Z

    .line 307
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 309
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 610
    packed-switch p1, :pswitch_data_0

    .line 642
    :goto_0
    return-void

    .line 613
    :pswitch_0
    const-string v1, "MtvUiRemoveList"

    const-string v2, "onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_TV_FILES_DELETE_OK_CANCEL..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 616
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setRequestedOrientation(I)V

    .line 621
    :goto_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->startDeleteFileDialog()V

    .line 622
    iput v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvFiles:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 625
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 629
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    .line 624
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 617
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getRotation(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 618
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setRequestedOrientation(I)V

    goto :goto_1

    .line 620
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->setRequestedOrientation(I)V

    goto :goto_1

    .line 633
    .restart local v0    # "i":I
    :cond_3
    const-string v1, "MtvUiRemoveList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_TV_FILES_DELETE_OK_CANCEL:TV filecount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mTVFilesCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->removeFile()V

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x104
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    .prologue
    const v4, 0x7f070237

    .line 1512
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 1514
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.stop.app-in-app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->sendBroadcast(Landroid/content/Intent;)V

    .line 1516
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_0

    .line 1518
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1520
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1522
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->finish()V

    .line 1550
    :goto_0
    return-void

    .line 1525
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 1528
    const-string v1, "MtvUiRemoveList"

    const-string v2, "onResume call.."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->createTabList(I)V

    .line 1531
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_2

    .line 1532
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1540
    :cond_2
    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mRemoveListType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 1541
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "delete_station_data_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1544
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationDataListUp:[Ljava/lang/String;

    .line 1545
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mDeleteStationDataListUp:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1549
    .end local v0    # "index":I
    :goto_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkRemoveItemType()V

    goto :goto_0

    .line 1547
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1600
    const-string v0, "mItemsCheckedState"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->mItemsCheckedState:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 1601
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1602
    return-void
.end method
