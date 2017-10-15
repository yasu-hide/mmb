.class public Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiBmlNumKeyPadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final RSRC_NUMERIC_BUTTON_KEY:[I

.field private static final TAG:Ljava/lang/String; = "MtvUiBmlNumKeyPadFragment"

.field private static mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

.field private static mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;


# instance fields
.field private mCntrlFragView:Landroid/view/View;

.field private final mKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 60
    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->RSRC_NUMERIC_BUTTON_KEY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a00af
        0x7f0a00a5
        0x7f0a00a6
        0x7f0a00a7
        0x7f0a00a8
        0x7f0a00a9
        0x7f0a00aa
        0x7f0a00ab
        0x7f0a00ac
        0x7f0a00ad
        0x7f0a00ae
        0x7f0a00b0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mCntrlFragView:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mKeyMap:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 326
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLNUMIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 330
    :cond_0
    return-void
.end method

.method public static setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 0
    .param p0, "bmlApp"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .param p1, "fragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    .line 77
    sput-object p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 78
    sput-object p1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 79
    return-void
.end method

.method public static show()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 318
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLNUMIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 301
    const-string v1, "MtvUiBmlNumKeyPadFragment"

    const-string v2, "init: "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->RSRC_NUMERIC_BUTTON_KEY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mKeyMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->RSRC_NUMERIC_BUTTON_KEY:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->RSRC_NUMERIC_BUTTON_KEY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mCntrlFragView:Landroid/view/View;

    sget-object v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->RSRC_NUMERIC_BUTTON_KEY:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->RSRC_NUMERIC_BUTTON_KEY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mCntrlFragView:Landroid/view/View;

    sget-object v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->RSRC_NUMERIC_BUTTON_KEY:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 314
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 94
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
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
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->setRetainInstance(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->setHasOptionsMenu(Z)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mCntrlFragView:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->init()V

    .line 107
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mCntrlFragView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 132
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 112
    const-string v1, "MtvUiBmlNumKeyPadFragment"

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

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "cmd":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/16 v0, 0xd3

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 119
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 115
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const/16 v0, 0xd4

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    const/16 v0, 0xd5

    goto :goto_0

    .line 117
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string v1, "MtvUiBmlNumKeyPadFragment"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    const-string v1, "MtvUiBmlNumKeyPadFragment"

    const-string v2, "onCreateOptionsMenu portrait"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;

    .line 144
    .local v0, "activity":Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;
    invoke-interface {v0}, Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;->isBmlFullView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->getActivityType()I

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "MtvUiBmlNumKeyPadFragment"

    const-string v2, "onCreateOptionsMenu: isBmlFullView TRUE "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 148
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->getActivity()Landroid/app/Activity;

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

    .line 149
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->getActivity()Landroid/app/Activity;

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

    .line 150
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->getActivity()Landroid/app/Activity;

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

    .line 154
    .end local v0    # "activity":Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 155
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isPhoneLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string v1, "MtvUiBmlNumKeyPadFragment"

    const-string v2, "onTouch: Phone is locked return "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return v5

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 173
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 177
    :pswitch_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 195
    :pswitch_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 204
    :pswitch_3
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 213
    :pswitch_4
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 215
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 222
    :pswitch_5
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 231
    :pswitch_6
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 240
    :pswitch_7
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 242
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 249
    :pswitch_8
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 258
    :pswitch_9
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 260
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 267
    :pswitch_a
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 276
    :pswitch_b
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v1, :cond_0

    .line 278
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00a5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method
