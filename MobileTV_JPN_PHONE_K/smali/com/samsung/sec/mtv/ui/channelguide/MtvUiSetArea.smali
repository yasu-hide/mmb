.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;
.source "MtvUiSetArea.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MtvUiSetArea"

.field private static sArrayRsrc:I


# instance fields
.field private areaOptionsDialog:Landroid/app/AlertDialog;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->sArrayRsrc:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->initialize()V

    return-void
.end method

.method private createDialog(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 132
    const v0, 0x7f05000e

    sput v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->sArrayRsrc:I

    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0701ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->sArrayRsrc:I

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->areaOptionsDialog:Landroid/app/AlertDialog;

    .line 157
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->areaOptionsDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 158
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->areaOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 50
    const-string v5, "MtvUiSetArea"

    const-string v6, "initialize"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getAllAreas(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v0

    .line 53
    .local v0, "area":[Lcom/samsung/sec/mtv/provider/MtvArea;
    array-length v5, v0

    new-array v1, v5, [Ljava/lang/String;

    .line 55
    .local v1, "areaslotNameList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 56
    aget-object v5, v0, v2

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0701e9

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "mAreaNameByResource":Ljava/lang/String;
    :goto_1
    aput-object v4, v1, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "mAreaNameByResource":Ljava/lang/String;
    :cond_0
    aget-object v5, v0, v2

    iget-object v5, v5, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->getStringByResourceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mAreaNameByResource":Ljava/lang/String;
    goto :goto_1

    .line 63
    .end local v4    # "mAreaNameByResource":Ljava/lang/String;
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v5, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 65
    .local v3, "listView":Landroid/widget/ListView;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 66
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 81
    if-ne p2, v0, :cond_1

    .line 83
    invoke-virtual {p0, v0, p3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->finish()V

    .line 90
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    return-void

    .line 86
    :cond_1
    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 36
    const-string v0, "MtvUiSetArea"

    const-string v1, "onCreate MtvUiSetArea"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->initialize()V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    .line 42
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 43
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->createDialog(I)V

    .line 45
    :cond_0
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 47
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "MtvUiSetArea"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onDestroy()V

    .line 125
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 71
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "MtvUiSetArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick arg0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slotId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 95
    const-string v1, "MtvUiSetArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLongClick arg0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    .line 97
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getAllAreas(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v0

    .line 99
    .local v0, "area":[Lcom/samsung/sec/mtv/provider/MtvArea;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    aget-object v1, v0, v1

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    if-ne v1, v4, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v5

    .line 102
    :cond_1
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    aget-object v1, v0, v1

    iget v1, v1, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    if-eq v1, v4, :cond_0

    .line 104
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->createDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onResume()V

    .line 114
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->finish()V

    .line 121
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const-string v0, "position"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method
