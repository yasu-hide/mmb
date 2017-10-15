.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;
.super Ljava/lang/Object;
.source "MtvUiSettingsDialogFrag.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->populateSettingsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position_onItemClick"    # I
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
    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->adapter:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 109
    .local v17, "selectedItem":Ljava/lang/String;
    const-string v20, "MtvUiSettingsDialogFrag"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onItemClick position = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Item = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07020f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 111
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 112
    .local v9, "buildItems_caption":[I
    new-instance v13, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v13, v0, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;-><init>(I[I)V

    .line 113
    .local v13, "captionDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "SettingsPopUpDialogFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 173
    .end local v9    # "buildItems_caption":[I
    .end local v13    # "captionDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->dismiss()V

    .line 174
    :cond_0
    return-void

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070256

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 116
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v10, v0, [I

    fill-array-data v10, :array_1

    .line 117
    .local v10, "buildItems_frame_interpolation":[I
    new-instance v14, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v14, v0, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;-><init>(I[I)V

    .line 118
    .local v14, "frameinterpolationDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "SettingsPopUpDialogFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v10    # "buildItems_frame_interpolation":[I
    .end local v14    # "frameinterpolationDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0702e8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v20

    if-nez v20, :cond_3

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f07030f

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 127
    :cond_3
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v7, v0, [I

    fill-array-data v7, :array_2

    .line 129
    .local v7, "buildItems_audioEffects":[I
    new-instance v4, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v4, v0, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;-><init>(I[I)V

    .line 130
    .local v4, "audioEffectsDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "SettingsPopUpDialogFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v4    # "audioEffectsDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    .end local v7    # "buildItems_audioEffects":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0701ed

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 134
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v8, v0, [I

    fill-array-data v8, :array_3

    .line 135
    .local v8, "buildItems_audioLanguage":[I
    new-instance v5, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    const/16 v20, 0x3

    move/from16 v0, v20

    invoke-direct {v5, v0, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;-><init>(I[I)V

    .line 136
    .local v5, "audioLanguageDialogFaag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "SettingsPopUpDialogFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v5    # "audioLanguageDialogFaag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    .end local v8    # "buildItems_audioLanguage":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0702e2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v20

    const/16 v21, 0x5007

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v20

    sget-object v21, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 147
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v12, v0, [I

    fill-array-data v12, :array_4

    .line 148
    .local v12, "buildItems_save_to":[I
    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-direct {v3, v0, v12}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;-><init>(I[I)V

    .line 149
    .local v3, "SaveToDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "SettingsPopUpDialogFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v3    # "SaveToDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    .end local v12    # "buildItems_save_to":[I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0702e1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 152
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [I

    fill-array-data v11, :array_5

    .line 153
    .local v11, "buildItems_launch_antennae":[I
    new-instance v15, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-direct {v15, v0, v11}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;-><init>(I[I)V

    .line 154
    .local v15, "launchAntennaDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "SettingsPopUpDialogFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .end local v11    # "buildItems_launch_antennae":[I
    .end local v15    # "launchAntennaDialogFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$SettingsPopUpDialogFragment;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0702de

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 157
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v18, "selectionBundle":Landroid/os/Bundle;
    const-string v20, "expire"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    new-instance v16, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 160
    .local v16, "mPreferences":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    const-string v20, "remainTime"

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    invoke-static/range {v18 .. v18}, Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiSleepTimerDialogFrag;

    move-result-object v19

    .line 162
    .local v19, "selectionFragment":Landroid/app/DialogFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v20

    const-string v21, "dialog"

    invoke-virtual/range {v19 .. v21}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v16    # "mPreferences":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .end local v18    # "selectionBundle":Landroid/os/Bundle;
    .end local v19    # "selectionFragment":Landroid/app/DialogFragment;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0702df

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 165
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v6, "broadcastSettings":Landroid/content/Intent;
    new-instance v20, Landroid/content/ComponentName;

    const-string v21, "com.samsung.sec.mtv"

    const-string v22, "com.samsung.sec.mtv.ui.common.MtvUiSettingsBroadcast"

    invoke-direct/range {v20 .. v22}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$1;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 170
    .end local v6    # "broadcastSettings":Landroid/content/Intent;
    :cond_9
    const-string v20, "MtvUiSettingsDialogFrag"

    const-string v21, "Wrong item selected, ideally should not come here !"

    invoke-static/range {v20 .. v21}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    nop

    :array_0
    .array-data 4
        0x7f0701d8
        0x7f0701d7
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x7f0701d8
        0x7f0701d7
    .end array-data

    .line 127
    :array_2
    .array-data 4
        0x7f0702c1
        0x7f070311
        0x7f070281
        0x7f0702f0
    .end array-data

    .line 134
    :array_3
    .array-data 4
        0x7f07026f
        0x7f0702ef
        0x7f070270
    .end array-data

    .line 147
    :array_4
    .array-data 4
        0x7f0702a1
        0x7f070275
    .end array-data

    .line 152
    :array_5
    .array-data 4
        0x7f0701d8
        0x7f0701d7
    .end array-data
.end method
