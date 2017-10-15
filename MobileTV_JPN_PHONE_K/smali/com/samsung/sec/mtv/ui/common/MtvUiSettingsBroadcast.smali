.class public Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiSettingsBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$1;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;
    }
.end annotation


# static fields
.field private static final ID_DELETE_STATION:I = 0x7f070238

.field private static final ID_IMAGE_LOCATION:I = 0x7f07025e

.field private static final ID_LOCATION:I = 0x7f070269

.field private static final ID_MANUFACTURE_NUM:I = 0x7f070271

.field private static final ID_NOTIFY_CONNECTION:I = 0x7f070293

.field private static final ID_SET_RECORDING:I = 0x7f0702da

.field public static final TAG:Ljava/lang/String; = "MtvUiSettingsBroadcast"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 251
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f070207

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->setTitle(I)V

    .line 52
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->setContentView(I)V

    .line 54
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mPreference:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 56
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mListView:Landroid/widget/ListView;

    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.stop.app-in-app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->finish()V

    .line 76
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
