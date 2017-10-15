.class public Lcom/samsung/sec/mtv/ui/configration/MtvUiConfigration;
.super Landroid/app/Activity;
.source "MtvUiConfigration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/configration/MtvUiConfigration;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/configration/MtvUiConfigration;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/configration/MtvUiConfigration;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 45
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 46
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0a0011

    new-instance v3, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;

    invoke-direct {v3}, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    sget-boolean v2, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/configration/MtvUiConfigration;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
