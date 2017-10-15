.class public Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiFilePlayerImgFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiFilePlayerImgFrag"


# instance fields
.field private isLocked:Z

.field private mIsPopupMenuShowing:Z

.field private mLayoutView:Landroid/view/View;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private nextButton:Landroid/widget/ImageButton;

.field private nextFile:Ljava/lang/String;

.field private prevButton:Landroid/widget/ImageButton;

.field private previousFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->isLocked:Z

    .line 35
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 36
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mIsPopupMenuShowing:Z

    .line 37
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mMenuButton:Landroid/widget/ImageButton;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->previousFile:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextFile:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "isLocked"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;-><init>()V

    .line 52
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->isLocked:Z

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    .line 56
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    .line 58
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private initilizePopupForHoverEvents()V
    .locals 6

    .prologue
    const/16 v5, 0x3031

    const/16 v4, 0x12c

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, -0xa

    .line 66
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 68
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 70
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 76
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 77
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getNextFileInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextFile:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getPreFileInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->previousFile:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->previousFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    :cond_3
    return-void
.end method

.method private updateFragmentsBasedOnLockState(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 112
    :cond_2
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 151
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 153
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

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0x115

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0x114

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0091
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 169
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v0, 0x7f03001a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mLayoutView:Landroid/view/View;

    .line 95
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->initializeUI()V

    .line 98
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->initilizePopupForHoverEvents()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mIsPopupMenuShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDetach()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 176
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->isLocked:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 177
    .local v0, "isEnabled":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->updateFragmentsBasedOnLockState(Z)V

    .line 178
    return-void

    .line 176
    .end local v0    # "isEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    const-string v0, "MtvUiFilePlayerImgFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate: what["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sparse-switch p1, :sswitch_data_0

    .line 144
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 145
    return-void

    .line 123
    :sswitch_0
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 125
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->isLocked:Z

    move-object v0, p2

    .line 126
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->updateFragmentsBasedOnLockState(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 125
    goto :goto_1

    .line 132
    :sswitch_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->nextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getNextFileInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->prevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerImgFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getPreFileInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 132
    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_0
        0xed -> :sswitch_1
    .end sparse-switch
.end method
