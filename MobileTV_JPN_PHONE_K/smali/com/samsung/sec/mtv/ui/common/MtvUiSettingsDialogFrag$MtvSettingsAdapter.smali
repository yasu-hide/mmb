.class Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiSettingsDialogFrag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtvSettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mSettingsList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rsrcID"    # I

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    .line 199
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 195
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mSettingsList:[Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rsrcID"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    .line 202
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 195
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mSettingsList:[Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 203
    iput-object p4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mSettingsList:[Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 211
    const-string v7, "MtvUiSettingsDialogFrag"

    const-string v8, "getView called"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    move-object v5, p2

    .line 213
    .local v5, "settingsView":Landroid/view/View;
    if-nez v5, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 215
    .local v6, "vi":Landroid/view/LayoutInflater;
    const v7, 0x7f030029

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 217
    .end local v6    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v7, 0x7f0a00e0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v8, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 218
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v7, 0x7f0a00e1

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v8, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$102(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 219
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mSettingsList:[Ljava/lang/String;

    aget-object v4, v7, p1

    .line 220
    .local v4, "setting_item_name":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 221
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "#2fa6c9"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_1
    const-string v7, "MtvUiSettingsDialogFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "position ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    iget-object v7, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->adapter:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 227
    .local v1, "item":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07020f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 228
    const-string v7, "MtvUiSettingsDialogFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreferences.isCaptionEnabled()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 230
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0701d8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 350
    :cond_2
    :goto_0
    return-object v5

    .line 232
    :cond_3
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0701d7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070256

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 235
    const-string v7, "MtvUiSettingsDialogFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreferences.isisframeIPEnabled()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isframeIPEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isframeIPEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 237
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0701d8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 239
    :cond_5
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0701d7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 241
    :cond_6
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702e8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 242
    const-string v7, "MtvUiSettingsDialogFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreferences.getAudioEffect()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioEffect()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioEffect()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 245
    :pswitch_0
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0702c1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 248
    :pswitch_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f070311

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 251
    :pswitch_2
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f070281

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 254
    :pswitch_3
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0702f0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 260
    :cond_7
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0701ed

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 261
    const-string v7, "MtvUiSettingsDialogFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreferences.getAudiogetAudioLanguage()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioLanguage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioLanguage()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 264
    :pswitch_4
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f07026f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 267
    :pswitch_5
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0702ef

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 270
    :pswitch_6
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f070270

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 283
    :cond_8
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 284
    const-string v7, "MtvUiSettingsDialogFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreferences.getSaveToStorage()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSaveToStorage()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    .line 295
    :goto_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    iget-object v7, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    const/16 v8, 0x5007

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    iget-object v7, v7, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v7

    sget-object v8, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v7, v8, :cond_2

    .line 296
    :cond_9
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 287
    :pswitch_7
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f070275

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 290
    :pswitch_8
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0702a1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 300
    :cond_a
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702e1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 301
    const-string v7, "MtvUiSettingsDialogFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launch Antenna "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAntennaOnOff()I

    move-result v7

    packed-switch v7, :pswitch_data_3

    goto/16 :goto_0

    .line 304
    :pswitch_9
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0701d7

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 307
    :pswitch_a
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const v8, 0x7f0701d8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 313
    :cond_b
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702de

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "hrVal":I
    const/4 v2, 0x0

    .line 316
    .local v2, "minVal":I
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v7, :cond_c

    .line 317
    new-instance v7, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 318
    :cond_c
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v3

    .line 319
    .local v3, "preVal":I
    sparse-switch v3, :sswitch_data_0

    .line 330
    div-int/lit8 v0, v3, 0x3c

    .line 331
    rem-int/lit8 v2, v3, 0x3c

    .line 332
    if-eqz v0, :cond_d

    if-nez v2, :cond_d

    .line 333
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v9, 0x7f0701dc

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_d
    if-eqz v2, :cond_e

    if-nez v0, :cond_e

    .line 335
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v9, 0x7f0701de

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_e
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 337
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v10, 0x7f0701dd

    invoke-virtual {v9, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v10, 0x7f0701df

    invoke-virtual {v9, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 321
    :sswitch_0
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v9, 0x7f070291

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 324
    :sswitch_1
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v9, 0x7f0701da

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 327
    :sswitch_2
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    const v9, 0x7f0701db

    invoke-virtual {v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 342
    .end local v0    # "hrVal":I
    .end local v2    # "minVal":I
    .end local v3    # "preVal":I
    :cond_f
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0702df

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 343
    const-string v7, "MtvUiSettingsDialogFrag"

    const-string v8, "broadcast data"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag$MtvSettingsAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 347
    :cond_10
    const-string v7, "MtvUiSettingsDialogFrag"

    const-string v8, "Wrong item, ideally should not come here !"

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 262
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 285
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 302
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3c -> :sswitch_1
        0x78 -> :sswitch_2
    .end sparse-switch
.end method
