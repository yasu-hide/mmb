.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;
.super Landroid/view/animation/Animation;
.source "MtvUiBmlAnimation.java"

# interfaces
.implements Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiBmlAnimation"

.field private static animText:Ljava/lang/String;

.field private static bmlAnimLayout:Landroid/widget/RelativeLayout;

.field private static mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

.field private static mContext:Landroid/content/Context;

.field private static mbmlAnimTextView:Landroid/widget/TextView;

.field private static mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;


# instance fields
.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    .line 53
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 54
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlAnimTextView:Landroid/widget/TextView;

    .line 55
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    .line 56
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 57
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->animText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "bmlApp"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 63
    sput-object p1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-direct {v0, p1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->init()V

    .line 66
    sput-object p3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 67
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 71
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .local v0, "mImageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 76
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlAnimTextView:Landroid/widget/TextView;

    .line 77
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    .line 83
    .end local v0    # "mImageView":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v1, "MtvUiBmlAnimation"

    const-string v2, "mContext is not an Activity or mContext is null..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    const-string v0, "MtvUiBmlAnimation"

    const-string v1, "isRunning:  BML animation is running "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlAnimationListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlAnimationListener;)V

    .line 130
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getCurrentUIEvt()Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_START_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    if-ne v0, v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->startBmlAnimation()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getCurrentUIEvt()Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;->MTV_APP_BML_UI_EVT_STOP_ANIMATION:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlUIEvents;

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->stopBmlAnimation()V

    goto :goto_0
.end method

.method public setBmlAnimationText(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;)V
    .locals 3
    .param p1, "animMsg"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;

    .prologue
    .line 90
    const v0, 0x7f070205

    .line 92
    .local v0, "rsrID":I
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation$1;->$SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$BmlAppAnimMessages:[I

    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlAppAnimMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->animText:Ljava/lang/String;

    .line 119
    :cond_0
    return-void

    .line 98
    :pswitch_0
    const v0, 0x7f070205

    .line 100
    goto :goto_0

    .line 104
    :pswitch_1
    const v0, 0x7f070206

    .line 106
    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBmlAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 179
    const-string v0, "MtvUiBmlAnimation"

    const-string v1, "startBmlAnimation: landscape mode return "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->stopBmlAnimation()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlAnimTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlAnimTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->animText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlAnimTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 194
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x64

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 205
    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4

    .line 207
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 208
    const-string v0, "MtvUiBmlAnimation"

    const-string v1, "startBmlAnimation:  starting BML animation 1 "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 210
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->invalidateSelf()V

    .line 218
    :cond_4
    :goto_2
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_5
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 201
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_1

    .line 212
    :cond_6
    const-string v0, "MtvUiBmlAnimation"

    const-string v1, "startBmlAnimation:  starting BML animation 2 "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 214
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2
.end method

.method public stopBmlAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 157
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "MtvUiBmlAnimation"

    const-string v1, "stopBmlAnimation: stopping BML animation "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlanimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 163
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->bmlAnimLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlAnimTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 170
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->mbmlAnimTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_2
    return-void
.end method
