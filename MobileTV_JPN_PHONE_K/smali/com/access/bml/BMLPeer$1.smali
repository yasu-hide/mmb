.class Lcom/access/bml/BMLPeer$1;
.super Ljava/lang/Object;
.source "BMLPeer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLPeer;->appExIMEStartPeer(Lcom/access/bml/BMLDtvType$APPExIMEParam;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLPeer;

.field private final synthetic val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLPeer;Lcom/access/bml/BMLDtvType$APPExIMEParam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    iput-object p2, p0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/access/bml/BMLPeer$1;)Lcom/access/bml/BMLPeer;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 185
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    .local v9, "layout":Landroid/widget/LinearLayout;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    .local v15, "tvMsg":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    new-instance v17, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static/range {v16 .. v17}, Lcom/access/bml/BMLPeer;->access$0(Lcom/access/bml/BMLPeer;Landroid/widget/EditText;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getInputType()I

    move-result v8

    .line 190
    .local v8, "inputType":I
    const/4 v13, 0x0

    .line 191
    .local v13, "pattern":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fMaxLength:I

    .line 194
    .local v10, "maxInputLength":I
    const/high16 v16, 0x80000

    or-int v8, v8, v16

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fTextBoxCompoType:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 198
    const/high16 v16, 0x20000

    or-int v8, v8, v16

    .line 200
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fTextBoxCompoType:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x2

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 201
    const v16, -0x20001

    and-int v8, v8, v16

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fTextBoxCompoType:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    new-instance v17, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v17 .. v17}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 208
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fTextBoxCompoUsage:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 223
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    .line 227
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fFormat:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 230
    const/4 v10, 0x0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fFormat:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 235
    .local v6, "format":[B
    const/4 v7, 0x0

    .line 236
    .local v7, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v3, "conv":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    aget-byte v16, v6, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(I)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 239
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 240
    .local v14, "sb":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fFormat:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v7, v0, :cond_8

    .line 247
    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, "maxLength":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 249
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    aget-byte v17, v6, v7

    invoke-static/range {v16 .. v17}, Lcom/access/bml/BMLPeer;->access$2(Lcom/access/bml/BMLPeer;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "{0,"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "}"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .end local v11    # "maxLength":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fMaxLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v10, v0, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fMaxLength:I

    .line 286
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "^"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "$"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 291
    const/16 v16, 0x0

    aget-byte v5, v6, v16

    .line 292
    .local v5, "firstCh":I
    invoke-static {v5}, Ljava/lang/Character;->isDigit(I)Z

    move-result v16

    if-nez v16, :cond_6

    const/16 v16, 0x2a

    move/from16 v0, v16

    if-ne v5, v0, :cond_7

    .line 293
    :cond_6
    const/16 v16, 0x1

    aget-byte v5, v6, v16

    .line 295
    :cond_7
    sparse-switch v5, :sswitch_data_0

    .line 326
    .end local v3    # "conv":Ljava/lang/StringBuilder;
    .end local v5    # "firstCh":I
    .end local v6    # "format":[B
    .end local v7    # "index":I
    :goto_3
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 329
    if-eqz v13, :cond_e

    .line 331
    move-object v4, v13

    .line 333
    .local v4, "filterPattern":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 334
    new-instance v19, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    .line 335
    new-instance v19, Lcom/access/bml/BMLPeer$1$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/access/bml/BMLPeer$1$1;-><init>(Lcom/access/bml/BMLPeer$1;)V

    aput-object v19, v17, v18

    .line 333
    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    new-instance v17, Lcom/access/bml/BMLPeer$1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/access/bml/BMLPeer$1$2;-><init>(Lcom/access/bml/BMLPeer$1;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 384
    .end local v4    # "filterPattern":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    invoke-direct/range {v17 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fTemplate:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/access/bml/BMLPeer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 394
    const-string v18, "OK"

    new-instance v19, Lcom/access/bml/BMLPeer$1$3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/access/bml/BMLPeer$1$3;-><init>(Lcom/access/bml/BMLPeer$1;Lcom/access/bml/BMLDtvType$APPExIMEParam;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 413
    const-string v18, "Cancel"

    new-instance v19, Lcom/access/bml/BMLPeer$1$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/access/bml/BMLPeer$1$4;-><init>(Lcom/access/bml/BMLPeer$1;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 421
    new-instance v18, Lcom/access/bml/BMLPeer$1$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/access/bml/BMLPeer$1$5;-><init>(Lcom/access/bml/BMLPeer$1;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 429
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v17

    .line 392
    invoke-static/range {v16 .. v17}, Lcom/access/bml/BMLPeer;->access$4(Lcom/access/bml/BMLPeer;Landroid/app/AlertDialog;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->requestFocus()Z

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$3(Lcom/access/bml/BMLPeer;)Landroid/app/AlertDialog;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x5

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 435
    return-void

    .line 213
    :pswitch_1
    or-int/lit8 v8, v8, 0x2

    .line 214
    goto/16 :goto_0

    .line 216
    :pswitch_2
    or-int/lit8 v8, v8, 0x1

    .line 217
    goto/16 :goto_0

    .line 241
    .restart local v3    # "conv":Ljava/lang/StringBuilder;
    .restart local v6    # "format":[B
    .restart local v7    # "index":I
    .restart local v14    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fFormat:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fFormat:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 240
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 256
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    aget-byte v16, v6, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(I)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 257
    aget-byte v16, v6, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v12

    .line 258
    .local v12, "nCount":I
    add-int/lit8 v7, v7, 0x1

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    aget-byte v17, v6, v7

    invoke-static/range {v16 .. v17}, Lcom/access/bml/BMLPeer;->access$2(Lcom/access/bml/BMLPeer;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "{0,"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "}"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 v7, v7, 0x1

    .line 263
    add-int/2addr v10, v12

    .line 255
    .end local v12    # "nCount":I
    :cond_a
    :goto_5
    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v7, v0, :cond_9

    goto/16 :goto_2

    .line 265
    :cond_b
    aget-byte v16, v6, v7

    const/16 v17, 0x2a

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 266
    add-int/lit8 v7, v7, 0x1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    aget-byte v17, v6, v7

    invoke-static/range {v16 .. v17}, Lcom/access/bml/BMLPeer;->access$2(Lcom/access/bml/BMLPeer;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v16, "*"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v7, v7, 0x1

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fMaxLength:I

    .line 273
    goto :goto_5

    .line 275
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    aget-byte v17, v6, v7

    invoke-static/range {v16 .. v17}, Lcom/access/bml/BMLPeer;->access$2(Lcom/access/bml/BMLPeer;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v7, v7, 0x1

    .line 278
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 297
    .restart local v5    # "firstCh":I
    :sswitch_1
    or-int/lit16 v8, v8, 0x1000

    .line 298
    goto/16 :goto_3

    .line 302
    :sswitch_2
    or-int/lit8 v8, v8, 0x2

    .line 303
    goto/16 :goto_3

    .line 307
    :sswitch_3
    or-int/lit16 v8, v8, 0x1000

    .line 308
    goto/16 :goto_3

    .line 312
    :sswitch_4
    or-int/lit16 v8, v8, 0x4000

    .line 313
    goto/16 :goto_3

    .line 322
    .end local v3    # "conv":Ljava/lang/StringBuilder;
    .end local v5    # "firstCh":I
    .end local v6    # "format":[B
    .end local v7    # "index":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->val$param:Lcom/access/bml/BMLDtvType$APPExIMEParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/access/bml/BMLDtvType$APPExIMEParam;->fMaxLength:I

    goto/16 :goto_3

    .line 380
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/access/bml/BMLPeer$1;->this$0:Lcom/access/bml/BMLPeer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/access/bml/BMLPeer;->access$1(Lcom/access/bml/BMLPeer;)Landroid/widget/EditText;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v19, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_4

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x4d -> :sswitch_4
        0x4e -> :sswitch_2
        0x58 -> :sswitch_3
        0x61 -> :sswitch_0
        0x6d -> :sswitch_0
        0x6e -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch
.end method
