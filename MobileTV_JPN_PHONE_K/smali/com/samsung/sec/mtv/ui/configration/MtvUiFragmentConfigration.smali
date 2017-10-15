.class public Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;
.super Landroid/app/Fragment;
.source "MtvUiFragmentConfigration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtvUiFragmentConfigration"


# instance fields
.field private mCheckBoxDebugAppBase:Landroid/widget/CheckBox;

.field private mCheckBoxDebugBML:Landroid/widget/CheckBox;

.field private mCheckBoxDebugChnGuide:Landroid/widget/CheckBox;

.field private mCheckBoxDebugCommon:Landroid/widget/CheckBox;

.field private mCheckBoxDebugError:Landroid/widget/CheckBox;

.field private mCheckBoxDebugFW:Landroid/widget/CheckBox;

.field private mCheckBoxDebugFWUtility:Landroid/widget/CheckBox;

.field private mCheckBoxDebugFragments:Landroid/widget/CheckBox;

.field private mCheckBoxDebugHelper:Landroid/widget/CheckBox;

.field private mCheckBoxDebugHigh:Landroid/widget/CheckBox;

.field private mCheckBoxDebugLive:Landroid/widget/CheckBox;

.field private mCheckBoxDebugLocal:Landroid/widget/CheckBox;

.field private mCheckBoxDebugLow:Landroid/widget/CheckBox;

.field private mCheckBoxDebugMid:Landroid/widget/CheckBox;

.field private mCheckBoxDebugPBCtx:Landroid/widget/CheckBox;

.field private mCheckBoxDebugPlayer:Landroid/widget/CheckBox;

.field private mCheckBoxDebugReservation:Landroid/widget/CheckBox;

.field private mCheckBoxDebugTestMode:Landroid/widget/CheckBox;

.field private mCheckBoxDebugTvLink:Landroid/widget/CheckBox;

.field private mCheckBoxDebugUtility:Landroid/widget/CheckBox;

.field private mCheckBoxFileSimulation:Landroid/widget/CheckBox;

.field private mCheckBoxTSCapture:Landroid/widget/CheckBox;

.field private mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

.field private mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

.field private mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initializeUI(Landroid/view/View;)V
    .locals 6
    .param p1, "frag_view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 92
    const v0, 0x7f0a0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxTSCapture:Landroid/widget/CheckBox;

    .line 93
    const v0, 0x7f0a0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxFileSimulation:Landroid/widget/CheckBox;

    .line 94
    const v0, 0x7f0a0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugError:Landroid/widget/CheckBox;

    .line 95
    const v0, 0x7f0a0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHigh:Landroid/widget/CheckBox;

    .line 96
    const v0, 0x7f0a0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugMid:Landroid/widget/CheckBox;

    .line 97
    const v0, 0x7f0a0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLow:Landroid/widget/CheckBox;

    .line 98
    const v0, 0x7f0a0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugBML:Landroid/widget/CheckBox;

    .line 99
    const v0, 0x7f0a0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLive:Landroid/widget/CheckBox;

    .line 100
    const v0, 0x7f0a0109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLocal:Landroid/widget/CheckBox;

    .line 101
    const v0, 0x7f0a010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugChnGuide:Landroid/widget/CheckBox;

    .line 102
    const v0, 0x7f0a010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugTvLink:Landroid/widget/CheckBox;

    .line 103
    const v0, 0x7f0a010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugTestMode:Landroid/widget/CheckBox;

    .line 104
    const v0, 0x7f0a010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFragments:Landroid/widget/CheckBox;

    .line 105
    const v0, 0x7f0a010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugCommon:Landroid/widget/CheckBox;

    .line 106
    const v0, 0x7f0a010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugUtility:Landroid/widget/CheckBox;

    .line 107
    const v0, 0x7f0a0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugReservation:Landroid/widget/CheckBox;

    .line 108
    const v0, 0x7f0a0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHelper:Landroid/widget/CheckBox;

    .line 109
    const v0, 0x7f0a0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugPBCtx:Landroid/widget/CheckBox;

    .line 110
    const v0, 0x7f0a0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugAppBase:Landroid/widget/CheckBox;

    .line 111
    const v0, 0x7f0a0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugPlayer:Landroid/widget/CheckBox;

    .line 112
    const v0, 0x7f0a0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFW:Landroid/widget/CheckBox;

    .line 113
    const v0, 0x7f0a0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFWUtility:Landroid/widget/CheckBox;

    .line 115
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    .line 116
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->getConfigFromFile()Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    .line 117
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxFileSimulation:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-boolean v1, v1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxTSCapture:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-boolean v1, v1, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsCapture:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxFileSimulation:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxTSCapture:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebugSetting;->getInstance()Landroid/broadcast/helper/MtvUtilDebugSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    .line 128
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugError:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v5}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHigh:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugMid:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v3}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLow:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugError:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHigh:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugMid:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLow:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugBML:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLive:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v3}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLocal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugChnGuide:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v5}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugTvLink:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugTestMode:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFragments:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugCommon:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugUtility:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugReservation:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHelper:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugPBCtx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugAppBase:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugPlayer:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFW:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFWUtility:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugBML:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLive:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLocal:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugMid:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugChnGuide:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugTvLink:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugTestMode:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFragments:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugCommon:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugUtility:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugReservation:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHelper:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugPBCtx:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugAppBase:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugPlayer:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFW:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugFWUtility:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 193
    const-string v0, "TAG"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 468
    :pswitch_0
    const-string v1, "MtvUiFragmentConfigration"

    const-string v2, "Selected default checkbox"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_0
    return-void

    .line 227
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-boolean v4, v4, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsCapture:Z

    if-nez v4, :cond_0

    :goto_1
    iput-boolean v1, v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsCapture:Z

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 231
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-boolean v4, v4, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    if-nez v4, :cond_1

    :goto_2
    iput-boolean v1, v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 238
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v0

    .line 239
    .local v0, "bRet":Z
    if-eqz v0, :cond_2

    .line 241
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v4, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 251
    :goto_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 253
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHigh:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 254
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugMid:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLow:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v4, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    goto :goto_3

    .line 262
    .end local v0    # "bRet":Z
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v6}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v0

    .line 263
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_3

    .line 265
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 266
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugMid:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLow:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 273
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugError:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 281
    .end local v0    # "bRet":Z
    :pswitch_5
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v5}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v0

    .line 282
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_4

    .line 284
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 285
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugLow:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 291
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugError:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHigh:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 302
    .end local v0    # "bRet":Z
    :pswitch_6
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedDebugLevel(I)Z

    move-result v0

    .line 303
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_5

    .line 304
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    goto/16 :goto_0

    .line 307
    :cond_5
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesForLevel(II)V

    .line 309
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugError:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugHigh:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mCheckBoxDebugMid:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 320
    .end local v0    # "bRet":Z
    :pswitch_7
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 321
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_6

    .line 322
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v1, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 324
    :cond_6
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v2, v1, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 330
    .end local v0    # "bRet":Z
    :pswitch_8
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v5}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 331
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_7

    .line 332
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v5, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 334
    :cond_7
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v2, v5, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 340
    .end local v0    # "bRet":Z
    :pswitch_9
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v6}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 341
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_8

    .line 342
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v6, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 344
    :cond_8
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v2, v6, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 349
    .end local v0    # "bRet":Z
    :pswitch_a
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 350
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_9

    .line 351
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v1, v4, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 353
    :cond_9
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    invoke-virtual {v2, v4, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 358
    .end local v0    # "bRet":Z
    :pswitch_b
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 359
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_a

    .line 360
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 362
    :cond_a
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 367
    .end local v0    # "bRet":Z
    :pswitch_c
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 368
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_b

    .line 369
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 371
    :cond_b
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 376
    .end local v0    # "bRet":Z
    :pswitch_d
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 377
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_c

    .line 378
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x40

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 380
    :cond_c
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 385
    .end local v0    # "bRet":Z
    :pswitch_e
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 386
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_d

    .line 387
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 389
    :cond_d
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x80

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 394
    .end local v0    # "bRet":Z
    :pswitch_f
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 395
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_e

    .line 396
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 398
    :cond_e
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x100

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 403
    .end local v0    # "bRet":Z
    :pswitch_10
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 404
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_f

    .line 405
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x200

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 407
    :cond_f
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 412
    .end local v0    # "bRet":Z
    :pswitch_11
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 413
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_10

    .line 414
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x400

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 416
    :cond_10
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 421
    .end local v0    # "bRet":Z
    :pswitch_12
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 422
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_11

    .line 423
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x800

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 425
    :cond_11
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x800

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 430
    .end local v0    # "bRet":Z
    :pswitch_13
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 431
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_12

    .line 432
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x1000

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 434
    :cond_12
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 440
    .end local v0    # "bRet":Z
    :pswitch_14
    const-string v3, "MtvUiFragmentConfigration"

    const-string v4, "Selected CheckBox_Debug_Player"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 442
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_13

    .line 443
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x2000

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 445
    :cond_13
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x2000

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 451
    .end local v0    # "bRet":Z
    :pswitch_15
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 452
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_14

    .line 453
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x4000

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 455
    :cond_14
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const/16 v3, 0x4000

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 460
    .end local v0    # "bRet":Z
    :pswitch_16
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/broadcast/helper/MtvUtilDebugSetting;->isAllowedModuleForDebug(I)Z

    move-result v0

    .line 461
    .restart local v0    # "bRet":Z
    if-eqz v0, :cond_15

    .line 462
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const v3, 0x8000

    invoke-virtual {v1, v3, v2}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 464
    :cond_15
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebugSetting;

    const v3, 0x8000

    invoke-virtual {v2, v3, v1}, Landroid/broadcast/helper/MtvUtilDebugSetting;->setDebugValuesOfModule(II)V

    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x7f0a0101
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_7
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "MtvUiFragmentConfigration"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->setHasOptionsMenu(Z)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->setRetainInstance(Z)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const-string v1, "MtvUiFragmentConfigration"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const v1, 0x7f03002f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "frag_view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->initializeUI(Landroid/view/View;)V

    .line 80
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "MtvUiFragmentConfigration"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 183
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "MtvUiFragmentConfigration"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 190
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->setConfigToFile(Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Save Failed !!!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 208
    :goto_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugInstance()Landroid/broadcast/helper/MtvUtilDebug;

    move-result-object v0

    .line 209
    .local v0, "mDebugSetting":Landroid/broadcast/helper/MtvUtilDebug;
    invoke-virtual {v0}, Landroid/broadcast/helper/MtvUtilDebug;->saveDbgInfoToFile()V

    goto :goto_0

    .line 205
    .end local v0    # "mDebugSetting":Landroid/broadcast/helper/MtvUtilDebug;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/configration/MtvUiFragmentConfigration;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Save Sucess !!!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x1

    const-string v1, "Save"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 221
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 222
    return-void
.end method
