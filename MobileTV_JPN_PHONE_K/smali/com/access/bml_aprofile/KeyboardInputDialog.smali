.class Lcom/access/bml_aprofile/KeyboardInputDialog;
.super Ljava/lang/Object;
.source "KeyboardInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/access/bml_aprofile/KeyboardInputDialog$CType;,
        Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnDismissListener;,
        Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnShowListener;,
        Lcom/access/bml_aprofile/KeyboardInputDialog$DialogResult;,
        Lcom/access/bml_aprofile/KeyboardInputDialog$Type;
    }
.end annotation


# static fields
.field private static final FAIL:I = -0x1

.field private static final SUCCESS:I = 0x1

.field private static final WAITING:I = 0x0

.field private static final ZENKAKU_ALPHABET:Ljava/lang/String; = "\uff21-\uff3a\uff41-\uff5a"

.field private static final ZENKAKU_HIRAGANA:Ljava/lang/String; = "\u3041-\u308f\u3092\u3093"

.field private static final ZENKAKU_KATAKANA:Ljava/lang/String; = "\u30a1-\u30ef\u30f2\u30f3"

.field private static final ZENKAKU_NUMBER:Ljava/lang/String; = "\uff10-\uff19"

.field private static final ZENKAKU_SYMBOL:Ljava/lang/String; = "\u3000\u3001\u3002\u30fb\u30fc\u2015\u300c\u300d"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private inputEditText:Landroid/widget/EditText;

.field private keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

.field private status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/access/bml_aprofile/KeyboardInputStocker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardInputStocker"    # Lcom/access/bml_aprofile/KeyboardInputStocker;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    .line 50
    iput-object p2, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

    .line 51
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/access/bml_aprofile/KeyboardInputDialog;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    return-void
.end method

.method static synthetic access$1(Lcom/access/bml_aprofile/KeyboardInputDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/access/bml_aprofile/KeyboardInputDialog;)Lcom/access/bml_aprofile/KeyboardInputStocker;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->keyboardInputStocker:Lcom/access/bml_aprofile/KeyboardInputStocker;

    return-object v0
.end method

.method static synthetic access$3(Lcom/access/bml_aprofile/KeyboardInputDialog;ILcom/access/bml_aprofile/KeyboardInputStocker;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Lcom/access/bml_aprofile/KeyboardInputDialog;->setResult(ILcom/access/bml_aprofile/KeyboardInputStocker;)V

    return-void
.end method

.method private getAppResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strId"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    iget-object v3, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 402
    .local v0, "resId":I
    iget-object v1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setDialogButton(Landroid/app/AlertDialog$Builder;)Z
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    const-string v0, "Arguments are null."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    .line 363
    :cond_0
    const-string v0, "button_ok"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/KeyboardInputDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/access/bml_aprofile/KeyboardInputDialog$8;

    invoke-direct {v1, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$8;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    const-string v0, "button_cancel"

    invoke-direct {p0, v0}, Lcom/access/bml_aprofile/KeyboardInputDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/access/bml_aprofile/KeyboardInputDialog$9;

    invoke-direct {v1, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$9;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setLayout(IIILjava/lang/String;Landroid/app/AlertDialog$Builder;)Z
    .locals 10
    .param p1, "type"    # I
    .param p2, "ctype"    # I
    .param p3, "maxlen"    # I
    .param p4, "init"    # Ljava/lang/String;
    .param p5, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 152
    .local v2, "inputType":I
    if-nez p5, :cond_0

    .line 153
    const-string v6, "Arguments are null."

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 154
    const/4 v6, 0x0

    .line 354
    :goto_0
    return v6

    .line 158
    :cond_0
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 160
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "keyboard_input_dialog"

    const-string v8, "layout"

    iget-object v9, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 161
    .local v5, "resId":I
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "inputDialogView":Landroid/view/View;
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "inputEditText"

    const-string v8, "id"

    iget-object v9, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 164
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    .line 165
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    if-nez v6, :cond_1

    .line 166
    const-string v6, "inputEditText is null."

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 167
    const/4 v6, 0x0

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 179
    const-string v6, "Invalid arguments."

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 180
    const/4 v6, 0x0

    goto :goto_0

    .line 173
    :pswitch_0
    const/4 v2, 0x0

    .line 184
    :goto_1
    const/4 v6, 0x2

    new-array v0, v6, [Landroid/text/InputFilter;

    .line 187
    .local v0, "filters":[Landroid/text/InputFilter;
    const-string v6, "input_text"

    invoke-direct {p0, v6}, Lcom/access/bml_aprofile/KeyboardInputDialog;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_1

    .line 334
    const-string v6, "Invalid arguments."

    invoke-static {v6}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 335
    const/4 v6, 0x0

    goto :goto_0

    .line 176
    .end local v0    # "filters":[Landroid/text/InputFilter;
    .end local v4    # "message":Ljava/lang/String;
    :pswitch_1
    const/16 v2, 0x80

    .line 177
    goto :goto_1

    .line 190
    .restart local v0    # "filters":[Landroid/text/InputFilter;
    .restart local v4    # "message":Ljava/lang/String;
    :pswitch_2
    or-int/lit8 v2, v2, 0x1

    .line 193
    const/4 v6, 0x0

    new-instance v7, Lcom/access/bml_aprofile/KeyboardInputDialog$1;

    invoke-direct {v7, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$1;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    aput-object v7, v0, v6

    .line 338
    :goto_2
    and-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 339
    const/high16 v6, 0x40000

    or-int/2addr v2, v6

    .line 341
    :cond_2
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 343
    if-ltz p3, :cond_3

    .line 344
    const/4 v6, 0x1

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v0, v6

    .line 346
    :cond_3
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 348
    if-eqz p4, :cond_4

    .line 349
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v6, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 353
    :cond_4
    invoke-virtual {p5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 201
    :pswitch_3
    or-int/lit8 v2, v2, 0x2

    .line 204
    const/4 v6, 0x0

    new-instance v7, Lcom/access/bml_aprofile/KeyboardInputDialog$2;

    invoke-direct {v7, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$2;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    aput-object v7, v0, v6

    goto :goto_2

    .line 221
    :pswitch_4
    iget-object v6, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    const-string v7, "defaultInputmode=english;symbol=true"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 222
    or-int/lit8 v2, v2, 0x1

    .line 225
    const/4 v6, 0x0

    new-instance v7, Lcom/access/bml_aprofile/KeyboardInputDialog$3;

    invoke-direct {v7, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$3;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    aput-object v7, v0, v6

    goto :goto_2

    .line 242
    :pswitch_5
    or-int/lit8 v2, v2, 0x1

    .line 245
    const/4 v6, 0x0

    new-instance v7, Lcom/access/bml_aprofile/KeyboardInputDialog$4;

    invoke-direct {v7, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$4;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    aput-object v7, v0, v6

    goto :goto_2

    .line 262
    :pswitch_6
    or-int/lit8 v2, v2, 0x1

    .line 265
    const/4 v6, 0x0

    new-instance v7, Lcom/access/bml_aprofile/KeyboardInputDialog$5;

    invoke-direct {v7, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$5;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    aput-object v7, v0, v6

    goto :goto_2

    .line 282
    :pswitch_7
    or-int/lit8 v2, v2, 0x1

    .line 285
    const/4 v6, 0x0

    new-instance v7, Lcom/access/bml_aprofile/KeyboardInputDialog$6;

    invoke-direct {v7, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$6;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    aput-object v7, v0, v6

    goto :goto_2

    .line 314
    :pswitch_8
    or-int/lit8 v2, v2, 0x1

    .line 317
    const/4 v6, 0x0

    new-instance v7, Lcom/access/bml_aprofile/KeyboardInputDialog$7;

    invoke-direct {v7, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$7;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    aput-object v7, v0, v6

    goto :goto_2

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setResult(ILcom/access/bml_aprofile/KeyboardInputStocker;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "stocker"    # Lcom/access/bml_aprofile/KeyboardInputStocker;

    .prologue
    .line 385
    if-nez p2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    new-instance v0, Lcom/access/bml_aprofile/KeyboardInputResult;

    invoke-direct {v0}, Lcom/access/bml_aprofile/KeyboardInputResult;-><init>()V

    .line 389
    .local v0, "inputResult":Lcom/access/bml_aprofile/KeyboardInputResult;
    iget-object v1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->inputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/access/bml_aprofile/KeyboardInputResult;->inputText:Ljava/lang/String;

    .line 390
    iput p1, v0, Lcom/access/bml_aprofile/KeyboardInputResult;->result:I

    .line 392
    invoke-virtual {p2, v0}, Lcom/access/bml_aprofile/KeyboardInputStocker;->setResult(Lcom/access/bml_aprofile/KeyboardInputResult;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    const-string v1, "Dialog result is already stored."

    invoke-static {v1}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public declared-synchronized show(IIILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "ctype"    # I
    .param p3, "maxlen"    # I
    .param p4, "init"    # Ljava/lang/String;

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    .line 74
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "Context is null."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "Dialog is already shown."

    invoke-static {v0}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_1
    :try_start_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/access/bml_aprofile/KeyboardInputDialog;->setLayout(IIILjava/lang/String;Landroid/app/AlertDialog$Builder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    goto :goto_0

    .line 93
    :cond_2
    invoke-direct {p0, v5}, Lcom/access/bml_aprofile/KeyboardInputDialog;->setDialogButton(Landroid/app/AlertDialog$Builder;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 99
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnShowListener;

    invoke-direct {v1, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnShowListener;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 100
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnDismissListener;

    invoke-direct {v1, p0}, Lcom/access/bml_aprofile/KeyboardInputDialog$CustomOnDismissListener;-><init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 101
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 102
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public syncShowResult()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x32

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    if-eqz v3, :cond_1

    .line 121
    :cond_0
    iget v3, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    packed-switch v3, :pswitch_data_0

    .line 134
    iput v2, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    .line 135
    :goto_1
    return v2

    .line 114
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "InterruptedException occurred while waiting for dialog to be shown."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_0
    iput v2, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    .line 124
    const/4 v2, 0x1

    goto :goto_1

    .line 126
    :pswitch_1
    const-string v3, "Failed to open dialog."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 127
    iput v2, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    goto :goto_1

    .line 130
    :pswitch_2
    const-string v3, "Timed out while waiting for dialog to be shown."

    invoke-static {v3}, Lcom/access/bml_aprofile/DTVUtil;->logW(Ljava/lang/String;)V

    .line 131
    iput v2, p0, Lcom/access/bml_aprofile/KeyboardInputDialog;->status:I

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
