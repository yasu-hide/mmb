.class public Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiStationData.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiStationData"


# instance fields
.field private mAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

.field private mDeleteStationData:[Ljava/lang/String;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mStationDataListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

    .line 35
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mDeleteStationData:[Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mStationDataListView:Landroid/widget/ListView;

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v3, 0x7f03000f

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->setContentView(I)V

    .line 45
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 46
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v3, Landroid/view/ViewConfiguration;

    const-string v4, "sHasPermanentMenuKey"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 47
    .local v2, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 56
    const v3, 0x7f0a005b

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mStationDataListView:Landroid/widget/ListView;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mDeleteStationData:[Ljava/lang/String;

    .line 59
    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

    const v4, 0x7f030010

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mDeleteStationData:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

    .line 60
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mStationDataListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mStationDataListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    sget-boolean v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v3, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 65
    :cond_1
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 141
    const v0, 0x7f0702be

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 142
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "MtvUiStationData"

    const-string v1, "onDestroy call..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->finishActivity(I)V

    .line 107
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 133
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "MtvUiStationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Remove_List_Type"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v1, "delete_station_data_index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 152
    :pswitch_0
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->deleteAllAffililiationAreas(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 154
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    const-string v0, "MtvUiStationData"

    const-string v1, "onResume call.."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->finish()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_2

    .line 124
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f070238

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mStationDataListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mStationDataListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;->mAdapter:Lcom/samsung/sec/mtv/ui/common/MtvUiStationData$StationDataAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
