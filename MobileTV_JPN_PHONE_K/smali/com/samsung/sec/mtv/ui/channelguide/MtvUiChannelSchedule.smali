.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiChannelSchedule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;
    }
.end annotation


# static fields
.field private static final ICON_RESERVE_NONE:I = 0x0

.field private static final ICON_RESERVE_PLAY:I = 0x1

.field private static final ICON_RESERVE_RECORD:I = 0x2

.field private static final MENU_VIEW_FREE_MEMORY:I = 0x0

.field private static final RESERVE_NONE:I = 0x0

.field private static final RESERVE_PLAY:I = 0x1

.field private static final RESERVE_RECORD:I = 0x2

.field private static mActivity:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mChannelScheduleUiMsgHandler:Landroid/os/Handler;

.field private final mIcon:[Landroid/graphics/drawable/Drawable;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

.field mScheduleListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mScheduleListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mScheduleListLongListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mServiceID:I

.field private mSpinnerButton:Landroid/widget/Button;

.field public mtvPrograms:[Lcom/samsung/sec/mtv/provider/MtvProgram;

.field private nowOnAirPosition:I

.field private reserveContextMenuAlertDialog:Landroid/app/AlertDialog;

.field private showChannelListAlertDialog:Landroid/app/DialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mActivity:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    .line 70
    const-string v0, "MtvUiChannelSchedule"

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->TAG:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mServiceID:I

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mIcon:[Landroid/graphics/drawable/Drawable;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->nowOnAirPosition:I

    .line 96
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mChannelScheduleUiMsgHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 591
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListLongListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 610
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$4;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mActivity:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->setListViewItemByPCh(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mIcon:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->nowOnAirPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->nowOnAirPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/provider/MtvProgram;Landroid/view/View;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/provider/MtvProgram;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->processItemClick(Lcom/samsung/sec/mtv/provider/MtvProgram;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mChannelScheduleUiMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getSpinnerTitle(Lcom/samsung/sec/mtv/provider/MtvChannel;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "mtvChannel"    # Lcom/samsung/sec/mtv/provider/MtvChannel;

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/16 v4, 0x63

    .line 260
    const-string v1, "MtvUiChannelSchedule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MtvChannel  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MultiChannel No:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "channelName":Ljava/lang/String;
    iget-object v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    if-ne v1, v5, :cond_9

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-eqz v1, :cond_9

    .line 270
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    rem-int/lit8 v1, v1, 0xa

    if-ne v1, v5, :cond_5

    .line 271
    :cond_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v1, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :goto_2
    return-object v1

    .line 266
    :cond_1
    iget-object v0, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_2
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 274
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v1, v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 276
    :cond_5
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_7

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v1, v4, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 279
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ge v1, v4, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 284
    :cond_9
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_a

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 286
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method private mStartNewChannel(Lcom/samsung/sec/mtv/provider/MtvChannel;)V
    .locals 6
    .param p1, "channel"    # Lcom/samsung/sec/mtv/provider/MtvChannel;

    .prologue
    .line 322
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    .line 323
    .local v1, "mPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    .line 324
    .local v0, "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 325
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 326
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 327
    if-eqz p1, :cond_0

    .line 330
    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    iget v4, p1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v2

    .line 332
    .local v2, "mURI":Landroid/broadcast/helper/MtvURI;
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTvAfterScan  which URI ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v3, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 336
    .end local v2    # "mURI":Landroid/broadcast/helper/MtvURI;
    :cond_0
    return-void
.end method

.method private processItemClick(Lcom/samsung/sec/mtv/provider/MtvProgram;Landroid/view/View;I)Z
    .locals 12
    .param p1, "pgm"    # Lcom/samsung/sec/mtv/provider/MtvProgram;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "bIsNowOnAir":Z
    iget v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->nowOnAirPosition:I

    if-ne p3, v5, :cond_0

    .line 631
    const/4 v0, 0x1

    .line 632
    :cond_0
    const-string v5, "MtvUiChannelSchedule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pgm :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->isReservationAlreadyTime(Lcom/samsung/sec/mtv/provider/MtvProgram;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->showAlreadyReserveDlg()V

    move v5, v6

    .line 670
    :goto_0
    return v5

    .line 639
    :cond_1
    const v5, 0x7f0a0075

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 640
    .local v4, "title":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v5, 0x7f0a0076

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 642
    const/4 v1, 0x0

    .line 643
    .local v1, "clickIndex":I
    const/4 v2, 0x0

    .line 644
    .local v2, "mCurrentServiceID":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v5, :cond_2

    .line 645
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v2

    .line 647
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v8, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    new-array v10, v6, [Z

    invoke-static {v5, v8, v9, v10}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v3

    .line 648
    .local v3, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->nowOnAirPosition:I

    if-ne p3, v5, :cond_4

    .line 649
    const v1, 0x7f050012

    .line 664
    :cond_3
    :goto_1
    iget-wide v8, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gez v5, :cond_7

    iget-wide v8, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gez v5, :cond_7

    move v5, v6

    .line 665
    goto :goto_0

    .line 652
    :cond_4
    if-eqz v3, :cond_6

    iget-wide v8, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    iget-wide v8, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    iget-wide v10, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v5, v2, :cond_6

    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v5, :cond_6

    .line 653
    if-eqz v3, :cond_5

    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v5, :cond_5

    .line 654
    const v1, 0x7f050011

    goto :goto_1

    .line 656
    :cond_5
    if-eqz v3, :cond_3

    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-ne v5, v7, :cond_3

    .line 657
    const v1, 0x7f050010

    goto :goto_1

    .line 661
    :cond_6
    const v1, 0x7f05000f

    goto :goto_1

    .line 667
    :cond_7
    invoke-virtual {p0, v4, v1, p1, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuDialog(Ljava/lang/String;ILcom/samsung/sec/mtv/provider/MtvProgram;Z)V

    .line 668
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    move v5, v7

    .line 670
    goto/16 :goto_0
.end method

.method private setListViewItemByPCh(I)V
    .locals 6
    .param p1, "nPCh"    # I

    .prologue
    .line 389
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nPCh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->nowOnAirPosition:I

    .line 391
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->findProgramsByPChannel(Landroid/content/Context;I)[Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v2

    .line 393
    .local v2, "mtvPrograms":[Lcom/samsung/sec/mtv/provider/MtvProgram;
    if-eqz v2, :cond_0

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 395
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mtvPrograms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    iget-object v5, v5, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_0
    const v3, 0x7f0a0005

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 400
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-direct {v3, p0, p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Landroid/content/Context;[Lcom/samsung/sec/mtv/provider/MtvProgram;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    .line 401
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    const v3, 0x7f0a0006

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 404
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "view_program_details"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 407
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListLongListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 413
    :goto_1
    return-void

    .line 411
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method private setSpinnerButtonText(Ljava/lang/CharSequence;Lcom/samsung/sec/mtv/provider/MtvChannel;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "channel"    # Lcom/samsung/sec/mtv/provider/MtvChannel;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 418
    return-void
.end method

.method private showChannelList()V
    .locals 8

    .prologue
    .line 292
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getAllAvailableChannels(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v2

    .line 294
    .local v2, "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-nez v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v4, 0x0

    .line 298
    .local v4, "itemListIndex":I
    array-length v5, v2

    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 299
    .local v1, "channelNameList":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 300
    aget-object v5, v2, v3

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getSpinnerTitle(Lcom/samsung/sec/mtv/provider/MtvChannel;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v3

    .line 301
    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 302
    move v4, v3

    .line 299
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 305
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v0, "channelListBundle":Landroid/os/Bundle;
    const-string v5, "dialogType"

    const/16 v6, 0x12

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v5, "itemListIndex"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v5, "channelNameList"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 311
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->showChannelListAlertDialog:Landroid/app/DialogFragment;

    .line 312
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->showChannelListAlertDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "change_area_complete"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public CancelReservationDialog(J)V
    .locals 7
    .param p1, "StartTime"    # J

    .prologue
    .line 822
    move-wide v0, p1

    .line 823
    .local v0, "mStartTime":J
    const/4 v2, -0x1

    .line 824
    .local v2, "msg":I
    const v2, 0x7f0702ce

    .line 825
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07020c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070298

    new-instance v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;

    invoke-direct {v5, p0, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$6;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;J)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07020b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 837
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    .line 838
    return-void
.end method

.method public ReserveProgramStarted(Ljava/lang/String;Lcom/samsung/sec/mtv/provider/MtvProgram;)V
    .locals 13
    .param p1, "mProgTitle2"    # Ljava/lang/String;
    .param p2, "program"    # Lcom/samsung/sec/mtv/provider/MtvProgram;

    .prologue
    const/4 v12, 0x0

    .line 885
    invoke-virtual {p0, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->isReservationAlreadyTime(Lcom/samsung/sec/mtv/provider/MtvProgram;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->showAlreadyReserveDlg()V

    .line 910
    :goto_0
    return-void

    .line 895
    :cond_0
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvProgram;

    iget v1, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    iget v2, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    iget v3, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    iget-wide v6, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    iget-object v8, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;)V

    .line 896
    .local v0, "mprogramm":Lcom/samsung/sec/mtv/provider/MtvProgram;
    const/4 v10, 0x0

    .line 898
    .local v10, "mServiceID":I
    const-string v1, "MtvUiChannelSchedule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "program.mPch :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v10

    .line 902
    const-string v1, "MtvUiChannelSchedule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "program.mPch :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mServiceID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    new-instance v11, Lcom/samsung/sec/mtv/provider/MtvReservation;

    invoke-direct {v11, v0, v12, v12, v10}, Lcom/samsung/sec/mtv/provider/MtvReservation;-><init>(Lcom/samsung/sec/mtv/provider/MtvProgram;III)V

    .line 905
    .local v11, "reservation":Lcom/samsung/sec/mtv/provider/MtvReservation;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    .line 906
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, v11, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v12}, Lcom/samsung/sec/mtv/utility/MtvUtilSetReservationAlarm;->setReservationAlarm(Landroid/content/Context;JZZ)V

    goto :goto_0
.end method

.method public checkForReservationType(Lcom/samsung/sec/mtv/provider/MtvProgram;)I
    .locals 8
    .param p1, "program"    # Lcom/samsung/sec/mtv/provider/MtvProgram;

    .prologue
    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "ReservationType":I
    const/4 v1, 0x0

    .line 676
    .local v1, "mCurrentServiceID":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v2

    .line 677
    .local v2, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v3, :cond_0

    .line 678
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v1

    .line 679
    :cond_0
    if-eqz v2, :cond_3

    iget-wide v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    iget-wide v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    iget-wide v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-ne v3, v1, :cond_3

    .line 680
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    if-nez v3, :cond_2

    .line 681
    const/4 v0, 0x2

    .line 690
    :cond_1
    :goto_0
    return v0

    .line 683
    :cond_2
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 684
    const/4 v0, 0x1

    goto :goto_0

    .line 688
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mChannelScheduleUiMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReservationAlreadyTime(Lcom/samsung/sec/mtv/provider/MtvProgram;)Z
    .locals 10
    .param p1, "program"    # Lcom/samsung/sec/mtv/provider/MtvProgram;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 842
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->getAllReserves(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v2

    check-cast v2, [Lcom/samsung/sec/mtv/provider/MtvReservation;

    .line 843
    .local v2, "reserve":[Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v3

    .line 845
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 846
    const/4 v1, 0x0

    .line 847
    .local v1, "mCurrentServiceID":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v5, :cond_2

    .line 848
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v1

    .line 849
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_8

    .line 850
    aget-object v5, v2, v0

    iget-wide v6, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_7

    .line 851
    iget-wide v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    aget-object v5, v2, v0

    iget-wide v8, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    iget-wide v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    aget-object v5, v2, v0

    iget-wide v8, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 852
    if-eqz p1, :cond_3

    aget-object v5, v2, v0

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    if-eq v5, v1, :cond_3

    .line 853
    const-string v4, "MtvUiChannelSchedule"

    const-string v5, "Program is not null and urids are same:false"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_3
    const-string v3, "MtvUiChannelSchedule"

    const-string v5, "Program is null or urids are not same:true"

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 857
    goto :goto_0

    .line 859
    :cond_4
    iget-wide v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    aget-object v5, v2, v0

    iget-wide v8, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    if-eqz p1, :cond_5

    aget-object v5, v2, v0

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    iget v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    if-eq v5, v6, :cond_7

    .line 860
    :cond_5
    iget-wide v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    aget-object v5, v2, v0

    iget-wide v8, v5, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_6

    .line 861
    const-string v3, "MtvUiChannelSchedule"

    const-string v5, "list support back to back reservations: true"

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 862
    goto :goto_0

    .line 864
    :cond_6
    const-string v4, "MtvUiChannelSchedule"

    const-string v5, "list support back to back reservations: false"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v3, v4

    .line 870
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-static {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 251
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->showChannelList()V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x7f0a0002
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sput-object p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mActivity:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    .line 140
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 141
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 143
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 146
    :cond_0
    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->requestWindowFeature(I)Z

    .line 147
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->setContentView(I)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x480

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 157
    :goto_0
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 158
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v9

    .line 159
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02008a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v5, v6

    .line 161
    const-string v4, ""

    .line 164
    .local v4, "spinnerTitle":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CH "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v2

    .line 167
    .local v2, "mchannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 173
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getSpinnerTitle(Lcom/samsung/sec/mtv/provider/MtvChannel;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 179
    .end local v2    # "mchannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_1
    :goto_1
    const v5, 0x7f0a0002

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mSpinnerButton:Landroid/widget/Button;

    .line 180
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getAllAvailableChannels(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 181
    .local v0, "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_5

    array-length v5, v0

    if-ge v5, v9, :cond_5

    .line 182
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    :goto_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const v5, 0x7f0a0005

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 191
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->findProgramsByPChannel(Landroid/content/Context;I)[Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v3

    .line 193
    .local v3, "mtvPrograms":[Lcom/samsung/sec/mtv/provider/MtvProgram;
    new-instance v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Landroid/content/Context;[Lcom/samsung/sec/mtv/provider/MtvProgram;)V

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    .line 195
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    const v5, 0x7f0a0006

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "view_program_details"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListLongListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 206
    :goto_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget-boolean v5, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v5, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 217
    :cond_2
    return-void

    .line 155
    .end local v0    # "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v3    # "mtvPrograms":[Lcom/samsung/sec/mtv/provider/MtvProgram;
    .end local v4    # "spinnerTitle":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 177
    .restart local v4    # "spinnerTitle":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070309

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 184
    .restart local v0    # "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_5
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mSpinnerButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 204
    .restart local v1    # "listView":Landroid/widget/ListView;
    .restart local v3    # "mtvPrograms":[Lcom/samsung/sec/mtv/provider/MtvProgram;
    :cond_6
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mScheduleListClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 246
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1009
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFragEvent: event["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    packed-switch p1, :pswitch_data_0

    .line 1042
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1014
    .restart local p2    # "obj":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1015
    .local v2, "which":I
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showChannelList which"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getAllAvailableChannels(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v1

    .line 1018
    .local v1, "channels":[Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v1, :cond_0

    .line 1021
    aget-object v0, v1, v2

    .line 1022
    .local v0, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    const-string v3, "MtvUiChannelSchedule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1025
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1026
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1027
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 1028
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 1029
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mStartNewChannel(Lcom/samsung/sec/mtv/provider/MtvChannel;)V

    .line 1031
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getSpinnerTitle(Lcom/samsung/sec/mtv/provider/MtvChannel;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->setSpinnerButtonText(Ljava/lang/CharSequence;Lcom/samsung/sec/mtv/provider/MtvChannel;)V

    .line 1034
    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->setListViewItemByPCh(I)V

    goto :goto_0

    .line 1011
    :pswitch_data_0
    .packed-switch 0x10b
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 364
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MtvUiMemInfoFrag"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerNotification(III)V
    .locals 13
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 934
    const-string v1, "MtvUiChannelSchedule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayerNotification ...:command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    sparse-switch p1, :sswitch_data_0

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 937
    :sswitch_0
    const-string v1, "MtvUiChannelSchedule"

    const-string v3, "onPlayerNotification CMD_CLOSE"

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 940
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    goto :goto_0

    .line 948
    :sswitch_1
    const-string v1, "MtvUiChannelSchedule"

    const-string v3, "onPlayerNotification CMD_PLAY"

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    sparse-switch p2, :sswitch_data_1

    .line 976
    :goto_1
    :sswitch_2
    const-string v1, "MtvUiChannelSchedule"

    const-string v3, "onPlayerNotification CMD_OPEN"

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 990
    :pswitch_1
    const-string v1, "MtvUiChannelSchedule"

    const-string v3, "We\'ve given up trying to open the channel, but we won\'t give up!! We\'ll keep trying!"

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v2

    .line 992
    .local v2, "phyChannelNum":I
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v9

    .line 993
    .local v9, "serviceId":I
    new-instance v0, Lcom/samsung/sec/mtv/provider/MtvChannel;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;IIIIILjava/lang/String;)V

    .line 994
    .local v0, "newChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mStartNewChannel(Lcom/samsung/sec/mtv/provider/MtvChannel;)V

    goto :goto_0

    .line 954
    .end local v0    # "newChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v2    # "phyChannelNum":I
    .end local v9    # "serviceId":I
    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->updateCurrentAudioEffectAndMode()Z

    goto :goto_1

    .line 959
    :sswitch_4
    const-string v1, "MtvUiChannelSchedule"

    const-string v3, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!"

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 961
    const-string v1, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - "

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 965
    .local v12, "message":Landroid/widget/Toast;
    const/16 v1, 0x77

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 966
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 968
    .end local v12    # "message":Landroid/widget/Toast;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 935
    :sswitch_data_0
    .sparse-switch
        0x5002 -> :sswitch_2
        0x5004 -> :sswitch_1
        0x500e -> :sswitch_0
    .end sparse-switch

    .line 938
    :pswitch_data_0
    .packed-switch 0x6005
        :pswitch_0
    .end packed-switch

    .line 949
    :sswitch_data_1
    .sparse-switch
        0x6005 -> :sswitch_3
        0x6011 -> :sswitch_4
    .end sparse-switch

    .line 977
    :pswitch_data_1
    .packed-switch 0x6004
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 343
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 345
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 346
    .local v0, "proginfofrag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return v1

    .line 350
    :cond_0
    const v2, 0x7f070258

    invoke-interface {p1, v1, v1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 351
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onProgramAttributeReset(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 928
    return-void
.end method

.method public onProgramAttributeUpdated(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 914
    packed-switch p1, :pswitch_data_0

    .line 923
    :goto_0
    return-void

    .line 916
    :pswitch_0
    const-string v0, "MtvUiChannelSchedule"

    const-string v1, "ATTRIB_PROGRAM"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mChannelScheduleUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mChannelScheduleUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x13d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->nowOnAirPosition:I

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    .line 233
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->finish()V

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_2
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    goto :goto_0
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 932
    return-void
.end method

.method public reserveContextMenuDialog(Ljava/lang/String;ILcom/samsung/sec/mtv/provider/MtvProgram;Z)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "longClickIndex"    # I
    .param p3, "pgm"    # Lcom/samsung/sec/mtv/provider/MtvProgram;
    .param p4, "bIsNowOnAir"    # Z

    .prologue
    .line 695
    move-object v0, p3

    .line 698
    .local v0, "program":Lcom/samsung/sec/mtv/provider/MtvProgram;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;

    invoke-direct {v2, p0, v0, p4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$5;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;Lcom/samsung/sec/mtv/provider/MtvProgram;Z)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuAlertDialog:Landroid/app/AlertDialog;

    .line 816
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 817
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->reserveContextMenuAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 818
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mActivity:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;->mProgramAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule$ProgramAdapter;->notifyDataSetChanged()V

    .line 819
    return-void
.end method

.method public showAlreadyReserveDlg()V
    .locals 3

    .prologue
    .line 875
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070298

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 881
    return-void
.end method
