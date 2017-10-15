.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MtvUiSettingsBroadcast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadCastSettingsAdapter"
.end annotation


# instance fields
.field private listItems:[Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSDCardSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    array-length v0, v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 124
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 131
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_7

    .line 132
    const v5, 0x7f030035

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 136
    .local v4, "myView":Landroid/view/View;
    :goto_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSDCardSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSDCardSupported()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    .line 139
    :cond_1
    const v5, 0x7f0a0130

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 140
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 141
    const v5, 0x7f070271

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataManufactureMode()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v2, 0x1

    .line 144
    .local v2, "isManufactureModeOn":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 147
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "isManufactureModeOn":Z
    :cond_2
    const v5, 0x7f0a012f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 148
    .local v3, "myTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    const v7, 0x7f0702da

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 151
    const v5, 0x7f0702da

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :cond_3
    :goto_2
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x7f0702da

    if-eq v5, v6, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x7f07025e

    if-ne v5, v6, :cond_6

    .line 165
    :cond_4
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$202(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 166
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    const/16 v6, 0x5007

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v5, v6, :cond_6

    .line 167
    :cond_5
    const v5, -0x777778

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    :cond_6
    return-object v4

    .line 134
    .end local v3    # "myTextView":Landroid/widget/TextView;
    .end local v4    # "myView":Landroid/view/View;
    :cond_7
    move-object v4, p2

    .restart local v4    # "myView":Landroid/view/View;
    goto/16 :goto_0

    .line 143
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 152
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v3    # "myTextView":Landroid/widget/TextView;
    :cond_9
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    const v7, 0x7f07025e

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 153
    const v5, 0x7f07025e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 154
    :cond_a
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    const v7, 0x7f070293

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 155
    const v5, 0x7f070293

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 156
    :cond_b
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    const v7, 0x7f070269

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 157
    const v5, 0x7f070269

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 158
    :cond_c
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    const v7, 0x7f070271

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 159
    const v5, 0x7f070271

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 160
    :cond_d
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->listItems:[Ljava/lang/String;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    const v7, 0x7f070238

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    const v5, 0x7f070238

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 178
    .local v4, "vewTag":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 183
    :sswitch_0
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;-><init>(I)V

    .line 184
    .local v1, "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "OptionsDialogFragment"

    invoke-virtual {v1, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v1    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    :sswitch_1
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;-><init>(I)V

    .line 192
    .restart local v1    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "OptionsDialogFragment"

    invoke-virtual {v1, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v1    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    :sswitch_2
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;-><init>(I)V

    .line 201
    .restart local v1    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "OptionsDialogFragment"

    invoke-virtual {v1, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v1    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    :sswitch_3
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;-><init>(I)V

    .line 209
    .restart local v1    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "OptionsDialogFragment"

    invoke-virtual {v1, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v1    # "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$OptionsDialogFragment;
    :sswitch_4
    instance-of v5, p1, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 219
    const v5, 0x7f0a0130

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 220
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    .end local v0    # "check":Landroid/widget/CheckBox;
    :cond_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    if-nez v5, :cond_1

    .line 224
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    new-instance v8, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$102(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 226
    :cond_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBroadcastDataManufactureMode()I

    move-result v2

    .line 227
    .local v2, "prevValue":I
    if-nez v2, :cond_3

    .line 228
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setBroadcastDataManufactureMode(I)V

    goto/16 :goto_0

    .end local v2    # "prevValue":I
    .restart local v0    # "check":Landroid/widget/CheckBox;
    :cond_2
    move v5, v7

    .line 220
    goto :goto_1

    .line 230
    .end local v0    # "check":Landroid/widget/CheckBox;
    .restart local v2    # "prevValue":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setBroadcastDataManufactureMode(I)V

    goto/16 :goto_0

    .line 238
    .end local v2    # "prevValue":I
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    const-class v6, Lcom/samsung/sec/mtv/ui/common/MtvUiStationData;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v3, "remListInt":Landroid/content/Intent;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast$BroadCastSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;

    invoke-virtual {v5, v3, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsBroadcast;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070238 -> :sswitch_5
        0x7f07025e -> :sswitch_1
        0x7f070269 -> :sswitch_3
        0x7f070271 -> :sswitch_4
        0x7f070293 -> :sswitch_2
        0x7f0702da -> :sswitch_0
    .end sparse-switch
.end method
