.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;
.source "MtvUiChangeArea.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MtvUiChangeArea"


# instance fields
.field private final CHANGE_LOCAL_AREA:I

.field private final CHANGE_PROVINCES:I

.field private final CHANGE_REGIONS:I

.field private mArrayId:[Ljava/lang/String;

.field private mArrayName:[Ljava/lang/String;

.field private mCurrentPhase:I

.field private mSelected:[I

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;-><init>()V

    .line 23
    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->CHANGE_REGIONS:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->CHANGE_PROVINCES:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->CHANGE_LOCAL_AREA:I

    .line 27
    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSlotId:I

    .line 28
    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    .line 30
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayId:[Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayName:[Ljava/lang/String;

    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    packed-switch v2, :pswitch_data_0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayId:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayName:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayId:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p0, v3}, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->getStringByResourceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 66
    const-string v2, "MtvUiChangeArea"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mArrayName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "i":I
    :pswitch_0
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_REGION:[Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayId:[Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_1
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_PROVINCES:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    aget v3, v3, v5

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayId:[Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL:[[[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    aget v3, v3, v5

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    aget v3, v3, v6

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayId:[Ljava/lang/String;

    goto :goto_0

    .line 68
    .restart local v0    # "i":I
    :cond_0
    const-string v2, "MtvUiChangeArea"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phase = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x109000f

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mArrayName:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 71
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 72
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 73
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-void

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 83
    if-ne p2, v0, :cond_0

    .line 84
    invoke-virtual {p0, v0, p3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->setResult(ILandroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->finish()V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->setResult(I)V

    .line 79
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onBackPressed()V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slotId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSlotId:I

    .line 38
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    .line 39
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phase"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    .line 41
    const-string v0, "MtvUiChangeArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->initialize()V

    .line 43
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 45
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 91
    const-string v1, "MtvUiChangeArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick arg0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

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

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    aput p3, v1, v2

    .line 94
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slotId"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v1, "selected"

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 98
    const-string v1, "phase"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    :goto_0
    return-void

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "MtvUiChangeArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick localId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL_ID:[[[I

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    aget v4, v4, v6

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aget-object v3, v3, v4

    aget v3, v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "slotId"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "setarea"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v1, "localId"

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mSelected:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 108
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseListActivity;->onResume()V

    .line 116
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->finish()V

    .line 137
    :goto_0
    return-void

    .line 123
    :cond_0
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->mCurrentPhase:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0702d4

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0702d3

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0702d2

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
