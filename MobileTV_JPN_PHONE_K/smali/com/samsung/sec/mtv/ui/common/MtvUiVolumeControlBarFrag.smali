.class public Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiVolumeControlBarFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeFrag"


# instance fields
.field private mGenericPlayerActivity:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mVolumeControlBar:Landroid/view/View;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;

.field private mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mVolumeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeControlBar:Landroid/view/View;

    .line 56
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    .line 57
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeTextView:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 61
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mGenericPlayerActivity:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 92
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 123
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mGenericPlayerActivity:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object v0
.end method

.method private initializeUI(Landroid/view/View;)V
    .locals 4
    .param p1, "mViewControlBar"    # Landroid/view/View;

    .prologue
    .line 112
    const v2, 0x7f0a00fe

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 113
    .local v0, "mVolumeSeekBarParent":Landroid/widget/LinearLayout;
    const v2, 0x7f0a00ff

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    .line 114
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMode(I)V

    .line 116
    const v2, 0x7f0a00fc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 117
    .local v1, "mVolumeTextParent":Landroid/widget/RelativeLayout;
    const v2, 0x7f0a00fd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeTextView:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 119
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->updateVolumePopupBar()V

    .line 121
    return-void
.end method

.method private updateVolumePopupBar()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v0

    .line 167
    .local v0, "progress":I
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 169
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 224
    const-string v2, "VolumeFrag"

    const-string v3, "onAttach"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 228
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IMtvFragEventListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "VolumeFrag"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->setRetainInstance(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 73
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v0, "VolumeFrag"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const v0, 0x7f03002e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeControlBar:Landroid/view/View;

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mGenericPlayerActivity:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeControlBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->initializeUI(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeControlBar:Landroid/view/View;

    return-object v0

    .line 82
    :cond_1
    const v0, 0x7f03002d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeControlBar:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "VolumeFrag"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroyView()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeControlBar:Landroid/view/View;

    .line 213
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "VolumeFrag"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 220
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDetach()V

    .line 221
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 103
    const-string v0, "VolumeFrag"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 105
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 186
    const-string v0, "VolumeFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate : what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 191
    :pswitch_0
    const/16 v0, 0x6a

    if-ne p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeUp()V

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 196
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->updateVolumePopupBar()V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeDown()V

    goto :goto_1

    .line 200
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiVolumeControlBarFrag;->updateVolumePopupBar()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
