.class public Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiBmlKeyPadControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiBmlKeyPadControlFragment"

.field private static mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

.field private static mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mBtnCntrKeyPad:Landroid/widget/ImageButton;

.field private mBtnCntrlBack:Landroid/widget/Button;

.field private mBtnCntrlDown:Landroid/widget/ImageButton;

.field private mBtnCntrlSelect:Landroid/widget/Button;

.field private mBtnCntrlUp:Landroid/widget/ImageButton;

.field private mCntrlFragView:Landroid/view/View;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mRunnableBMLCtrlDown:Ljava/lang/Runnable;

.field private mRunnableBMLCtrlUp:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mHandler:Landroid/os/Handler;

    .line 68
    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 69
    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrKeyPad:Landroid/widget/ImageButton;

    .line 63
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlUp:Landroid/widget/ImageButton;

    .line 64
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlDown:Landroid/widget/ImageButton;

    .line 65
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlSelect:Landroid/widget/Button;

    .line 66
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlBack:Landroid/widget/Button;

    .line 67
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    .line 70
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 171
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlUp:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment$2;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlDown:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method static synthetic access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlUp:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlDown:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 376
    :cond_0
    return-void
.end method

.method public static setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 0
    .param p0, "bmlApp"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .param p1, "fragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    .line 79
    sput-object p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 80
    sput-object p1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 81
    return-void
.end method

.method public static show()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 364
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLKEYPAD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelBMLLongClick()V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    const-string v0, "MtvUiBmlKeyPadControlFragment"

    const-string v1, "ACTION_UP. removeCallbacks Left"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlDown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 314
    .local v0, "bmlControlLayout":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlUp:Landroid/widget/ImageButton;

    .line 323
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlUp:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlUp:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlUp:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    const v2, 0x7f0a009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlDown:Landroid/widget/ImageButton;

    .line 331
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlDown:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlDown:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlDown:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlSelect:Landroid/widget/Button;

    .line 339
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlSelect:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlSelect:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlBack:Landroid/widget/Button;

    .line 347
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlBack:Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 349
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrlBack:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrKeyPad:Landroid/widget/ImageButton;

    .line 355
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrKeyPad:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    .line 357
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrKeyPad:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBtnCntrKeyPad:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    :cond_5
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 99
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
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
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isPhoneLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const-string v1, "MtvUiBmlKeyPadControlFragment"

    const-string v2, "onClick: Phone is locked return "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 290
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLNUMIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->hide()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->show()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x7f0a00a3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->setRetainInstance(Z)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->setHasOptionsMenu(Z)V

    .line 153
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->init()V

    .line 90
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mCntrlFragView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 146
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    const-string v0, "MtvUiBmlKeyPadControlFragment"

    const-string v1, "onLongClick. "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const v0, 0x7f0a009d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 267
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    const-string v0, "MtvUiBmlKeyPadControlFragment"

    const-string v1, "mRunnableBMLCtrlUp RUN. "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 270
    :cond_1
    const v0, 0x7f0a009f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 272
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mRunnableBMLCtrlDown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    const-string v0, "MtvUiBmlKeyPadControlFragment"

    const-string v1, "mRunnableBMLCtrlDown RUN. "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 127
    const-string v1, "MtvUiBmlKeyPadControlFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelected item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "cmd":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/16 v0, 0xd3

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 134
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 130
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const/16 v0, 0xd4

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    const/16 v0, 0xd5

    goto :goto_0

    .line 132
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 109
    const-string v1, "MtvUiBmlKeyPadControlFragment"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string v1, "MtvUiBmlKeyPadControlFragment"

    const-string v2, "onCreateOptionsMenu portrait"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;

    .line 114
    .local v0, "activity":Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;
    invoke-interface {v0}, Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;->isBmlFullView()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->getActivityType()I

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "MtvUiBmlKeyPadControlFragment"

    const-string v2, "onCreateOptionsMenu: isBmlFullView TRUE "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 117
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070305

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200ad

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 118
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070248

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 119
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 122
    .end local v0    # "activity":Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 123
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 204
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isPhoneLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "MtvUiBmlKeyPadControlFragment"

    const-string v3, "onTouchEvent: Phone is locked return "

    invoke-static {v1, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 260
    :goto_0
    return v1

    .line 211
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 214
    :cond_1
    const v1, 0x7f0a009d

    if-eq v1, v0, :cond_2

    const v1, 0x7f0a009f

    if-ne v1, v0, :cond_3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->cancelBMLLongClick()V

    .line 219
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 223
    :pswitch_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_4

    .line 225
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 232
    :pswitch_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_4

    .line 234
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 241
    :pswitch_3
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_4

    .line 243
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 250
    :pswitch_4
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_4

    .line 252
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x17

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x7f0a009d
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
