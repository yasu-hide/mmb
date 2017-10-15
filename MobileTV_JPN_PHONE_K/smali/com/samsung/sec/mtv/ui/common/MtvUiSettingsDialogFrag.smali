.class public Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
.super Landroid/app/DialogFragment;
.source "MtvUiSettingsDialogFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MemCardErrFragment;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MtvUiSettingsDialogFrag"


# instance fields
.field adapter:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

.field dialog:Landroid/app/AlertDialog;

.field listItemLayout:Landroid/view/View;

.field private listLayout:Landroid/widget/RelativeLayout;

.field private mListView:Landroid/widget/ListView;

.field mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mSettingsItem:Landroid/widget/TextView;

.field private mSettingsList:[Ljava/lang/String;

.field private mSettingsState:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->dialog:Landroid/app/AlertDialog;

    .line 45
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->adapter:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

    .line 49
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    .line 612
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsItem:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsItem:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsState:Landroid/widget/TextView;

    return-object p1
.end method

.method private createDialogByType()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 181
    const-string v0, "MtvUiSettingsDialogFrag"

    const-string v1, "createDialogByType"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->listItemLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07020b

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$2;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->dialog:Landroid/app/AlertDialog;

    .line 191
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 53
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;-><init>()V

    .line 54
    .local v0, "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method

.method private populateSettingsList()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    const-string v1, "MtvUiSettingsDialogFrag"

    const-string v2, "populateSettingsList"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0131

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->listLayout:Landroid/widget/RelativeLayout;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030036

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->listLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->listItemLayout:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->listItemLayout:Landroid/view/View;

    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mListView:Landroid/widget/ListView;

    .line 83
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isAutoAntennaEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07020f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f070256

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0702e8

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0701ed

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0702e2

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const v3, 0x7f0702e1

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f0702de

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f0702df

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030029

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->adapter:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->adapter:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    :cond_2
    return-void

    .line 86
    :cond_3
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSoundAliveSupported()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSDCardSupported()Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07020f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f070256

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0701ed

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0702de

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0702df

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSoundAliveSupported()Z

    move-result v1

    if-nez v1, :cond_5

    .line 91
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07020f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f070256

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0701ed

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0702e2

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0702de

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const v3, 0x7f0702df

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 94
    :cond_5
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSDCardSupported()Z

    move-result v1

    if-nez v1, :cond_6

    .line 95
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07020f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f070256

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0702e8

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0701ed

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0702de

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const v3, 0x7f0702df

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 99
    :cond_6
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f07020f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f070256

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0702e8

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0701ed

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0702e2

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const v3, 0x7f0702de

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f0702df

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mSettingsList:[Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 611
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string v2, "MtvUiSettingsDialogFrag"

    const-string v3, "Inside OncreateDialog, MtvUiSettingsDialogFrag"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 65
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->populateSettingsList()V

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->createDialogByType()Landroid/app/AlertDialog;

    move-result-object v1

    .line 69
    :cond_0
    return-object v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->adapter:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->notifyDataSetInvalidated()V

    .line 75
    return-void
.end method
