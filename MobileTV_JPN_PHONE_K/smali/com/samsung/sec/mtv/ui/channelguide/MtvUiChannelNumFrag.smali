.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiChannelNumFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHANNEL_INPUT_TEXT_EMPTY_ERROR:I = 0x1

.field private static final CHANNEL_INPUT_TEXT_NOT_IN_RANGE:I = 0x2

.field private static final CHANNEL_INPUT_TEXT_UNREGISTERED:I = 0x3

.field private static final CHANNEL_INPUT_TEXT_VALID:I = 0x0

.field public static final CHANNEL_MAX_LENGTH:I = 0x3

.field private static final RSRC_BUTTON:[I

.field private static final RSRC_BUTTON_KEY:[I

.field private static final TAG:Ljava/lang/String; = "MtvUiChannelNumFrag"


# instance fields
.field private mInputEditText:Landroid/widget/EditText;

.field private final mKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutView:Landroid/view/View;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON_KEY:[I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON:[I

    return-void

    .line 43
    :array_0
    .array-data 4
        0x7f0a008d
        0x7f0a0083
        0x7f0a0084
        0x7f0a0085
        0x7f0a0086
        0x7f0a0087
        0x7f0a0088
        0x7f0a0089
        0x7f0a008a
        0x7f0a008b
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x7f0a008c
        0x7f0a008e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mKeyMap:Ljava/util/HashMap;

    return-void
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON_KEY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mKeyMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON_KEY:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mLayoutView:Landroid/view/View;

    const v2, 0x7f0a0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    .line 76
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 77
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 79
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON_KEY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mLayoutView:Landroid/view/View;

    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON_KEY:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mLayoutView:Landroid/view/View;

    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->RSRC_BUTTON:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    :cond_2
    return-void
.end method

.method private isValidChannel(Ljava/lang/CharSequence;)I
    .locals 4
    .param p1, "ch"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x18

    .line 151
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    const/4 v2, 0x1

    .line 166
    :goto_0
    return v2

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "input":I
    if-eqz v0, :cond_2

    if-le v0, v3, :cond_3

    .line 157
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 159
    :cond_3
    if-lez v0, :cond_4

    if-gt v0, v3, :cond_4

    .line 160
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v1

    .line 161
    .local v1, "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v1, :cond_4

    iget v2, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-gez v2, :cond_4

    .line 162
    const-string v2, "MtvUiChannelNumFrag"

    const-string v3, "isValidChannel: not registered channel..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x3

    goto :goto_0

    .line 166
    .end local v1    # "mChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 111
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IMtvFragEventListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v8, 0x2

    .line 170
    move-object v3, p1

    .line 172
    .local v3, "v":Landroid/view/View;
    const-string v5, "MtvUiChannelNumFrag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnClick id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 186
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mKeyMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 187
    .local v4, "value":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v5, v8, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 188
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-ge v5, v8, :cond_0

    .line 190
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 198
    .end local v4    # "value":Ljava/lang/Integer;
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->isValidChannel(Ljava/lang/CharSequence;)I

    move-result v1

    .line 200
    .local v1, "result":I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 202
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "channelNum":I
    if-nez v0, :cond_1

    .line 204
    const/16 v0, 0xa

    .line 208
    :cond_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0xe4

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "channelNum":I
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0702a3

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 219
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0702f4

    invoke-static {v5, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 229
    .end local v1    # "result":I
    :pswitch_5
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 230
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 235
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 236
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0083
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->setRetainInstance(Z)V

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v0, 0x7f030019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mLayoutView:Landroid/view/View;

    .line 93
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->initializeUI()V

    .line 94
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mLayoutView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPause()V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelNumFrag;->mInputEditText:Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 136
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStart()V

    .line 142
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStop()V

    .line 148
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 102
    const-string v0, "MtvUiChannelNumFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: what["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 104
    return-void
.end method

.method public redraw()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->redraw()V

    .line 67
    return-void
.end method
