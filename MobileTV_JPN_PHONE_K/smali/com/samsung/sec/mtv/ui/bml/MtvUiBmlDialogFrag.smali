.class public Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiBmlDialogFrag.java"

# interfaces
.implements Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;
.implements Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$9;,
        Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;
    }
.end annotation


# static fields
.field private static final BML_DIALOG_POPUP:Ljava/lang/String; = "bml_dialog_popup"

.field private static BmlDialogFrag:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag; = null

.field private static final TAG:Ljava/lang/String; = "MtvUiBmlDialog"

.field private static cmd:I

.field private static mAvoidDialog:Z

.field private static mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

.field public static mDialogShowing:Z

.field public static mEditDialogShowing:Z

.field private static mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

.field private static savedDialogState:Landroid/os/Bundle;


# instance fields
.field private adb:Landroid/app/AlertDialog$Builder;

.field private byteCopy:[B

.field private edit:Landroid/widget/EditText;

.field private editText:Ljava/lang/String;

.field private isBMLDialogParameterSet:Z

.field private isMultiLineCopy:Z

.field private isPasswordCopy:Z

.field private mBMLdiag:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private maxlengthCopy:I

.field private mbtnNum:I

.field private mdialogMessege:Ljava/lang/String;

.field private modeCopy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    sput v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->cmd:I

    .line 70
    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 75
    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->BmlDialogFrag:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 76
    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 78
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    .line 79
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    .line 81
    sput-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    .line 87
    sput-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mAvoidDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 68
    iput v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mbtnNum:I

    .line 69
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mdialogMessege:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    .line 72
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    .line 73
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isBMLDialogParameterSet:Z

    .line 74
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 77
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    .line 82
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    .line 83
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isPasswordCopy:Z

    .line 84
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isMultiLineCopy:Z

    .line 85
    iput v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->modeCopy:I

    .line 86
    iput v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->maxlengthCopy:I

    .line 88
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->editText:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isBMLDialogParameterSet:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$402(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 64
    sput-object p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$500()Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;
    .param p1, "x1"    # [B

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    return-object p1
.end method

.method public static getInstance()Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->BmlDialogFrag:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->BmlDialogFrag:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 102
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->BmlDialogFrag:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    return-object v0
.end method


# virtual methods
.method public IMEStartPeer([BZZII)V
    .locals 14
    .param p1, "text"    # [B
    .param p2, "isPassword"    # Z
    .param p3, "isMultiLine"    # Z
    .param p4, "mode"    # I
    .param p5, "maxlength"    # I

    .prologue
    .line 887
    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->maxlengthCopy:I

    .line 888
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    .line 889
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isPasswordCopy:Z

    .line 890
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isMultiLineCopy:Z

    .line 892
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 893
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 894
    .local v13, "textView":Landroid/view/View;
    invoke-static {p1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v12

    .line 896
    .local v12, "textString":Ljava/lang/String;
    const v2, 0x7f0a0067

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    .line 897
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->editText:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 898
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->editText:Ljava/lang/String;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 902
    :goto_0
    const-string v2, "MtvUiBmlDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BML_CB_appExIMEStartPeer [mode] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [textString] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 905
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 908
    const/4 v2, 0x5

    move/from16 v0, p4

    if-lt v0, v2, :cond_0

    const/16 v2, 0xc

    move/from16 v0, p4

    if-gt v0, v2, :cond_0

    .line 910
    const/4 v2, 0x1

    new-array v8, v2, [Landroid/text/InputFilter;

    .line 911
    .local v8, "FilterArray":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    move/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v8, v2

    .line 912
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 916
    .end local v8    # "FilterArray":[Landroid/text/InputFilter;
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 1045
    :goto_1
    :pswitch_0
    if-nez p3, :cond_1

    .line 1046
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 1048
    :cond_1
    if-eqz p2, :cond_2

    .line 1049
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1051
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1053
    sget-object v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v2, :cond_3

    .line 1055
    sget-object v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 1058
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    .line 1059
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1060
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1061
    new-instance v11, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-direct {v11, p0, v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;Landroid/widget/EditText;)V

    .line 1062
    .local v11, "listener":Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f070298

    invoke-virtual {v2, v3, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1063
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f07020b

    invoke-virtual {v2, v3, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1064
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    .line 1065
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1067
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1069
    :cond_4
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    .line 1070
    return-void

    .line 900
    .end local v11    # "listener":Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$InputDialogListener;
    :cond_5
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v12, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    .line 926
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 928
    new-instance v10, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$4;

    invoke-direct {v10, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$4;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)V

    .line 939
    .local v10, "keyListener":Landroid/text/method/NumberKeyListener;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 945
    .end local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 947
    new-instance v10, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$5;

    invoke-direct {v10, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$5;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)V

    .line 959
    .restart local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 965
    .end local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 967
    new-instance v10, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$6;

    invoke-direct {v10, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$6;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)V

    .line 979
    .restart local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 985
    .end local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 991
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/16 v3, 0x7001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 993
    new-instance v10, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$7;

    invoke-direct {v10, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$7;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)V

    .line 1005
    .restart local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 1011
    .end local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1013
    new-instance v10, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$8;

    invoke-direct {v10, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$8;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;)V

    .line 1025
    .restart local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 1031
    .end local v10    # "keyListener":Landroid/text/method/NumberKeyListener;
    :pswitch_7
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/16 v3, 0x6001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 1037
    :pswitch_8
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 916
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public destroyBMLDialog()V
    .locals 2

    .prologue
    .line 869
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "destroyBMLDialog"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 880
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    .line 881
    return-void
.end method

.method public getBtnNum()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mbtnNum:I

    return v0
.end method

.method public getCmd()I
    .locals 1

    .prologue
    .line 262
    sget v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->cmd:I

    return v0
.end method

.method public getDialogMessege()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mdialogMessege:Ljava/lang/String;

    return-object v0
.end method

.method public halt()V
    .locals 0

    .prologue
    .line 1104
    return-void
.end method

.method public isDialogSet()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isBMLDialogParameterSet:Z

    return v0
.end method

.method public onChannelChanged()V
    .locals 0

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->resetDailogValues()V

    .line 1133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 236
    invoke-static {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->registerChannelChangedListener(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;)V

    .line 237
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "onCreateView : Entered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p3, :cond_0

    .line 128
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "onCreateView :  not null savedInstanceState"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sput-object p3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    .line 141
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->editText:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    .line 242
    invoke-static {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->unregisterChannelChangedListener(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;)V

    .line 243
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 244
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 219
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getInstance()Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlDialogListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "onSaveInstanceState : Entered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState [isDialogShowing] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[isPasswordCopy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isPasswordCopy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [maxlengthCopy ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->maxlengthCopy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  [modeCopy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->modeCopy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [byteCopy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [EDIT TEXT ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[mEditDialogShowing] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState [BML_CMD] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "bml_dialog_popup"

    sget-boolean v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v0, "isPasswordCopy"

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isPasswordCopy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string v0, "isMultiLineCopy"

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isMultiLineCopy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v0, "maxlengthCopy"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->maxlengthCopy:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v0, "modeCopy"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->modeCopy:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v0, "byteCopy"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 163
    const-string v0, "mEditDialogShowing"

    sget-boolean v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v0, "BML_CMD"

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "editText"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getInstance()Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlDialogListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;)V

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStop()V

    .line 255
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 109
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: [what] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 119
    return-void

    .line 112
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->resetDailogValues()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0xe4
        :pswitch_0
    .end packed-switch
.end method

.method public resetDailogValues()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1107
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "resetDailogValues()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 1111
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending reply NO to BML Engine : [CMD] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_NO:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->sendDialogReply(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;I)V

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1116
    :cond_1
    sput-boolean v3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    .line 1117
    sput-boolean v3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    .line 1118
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isBMLDialogParameterSet:Z

    .line 1119
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    .line 1120
    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mdialogMessege:Ljava/lang/String;

    .line 1121
    sput-object v4, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    .line 1122
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->setBtnNum(I)V

    .line 1123
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->setCmd(I)V

    .line 1124
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_2

    .line 1126
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1127
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1129
    :cond_2
    return-void
.end method

.method public setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;Landroid/content/Context;)V
    .locals 6
    .param p1, "bmlApp"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .param p2, "fragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .param p3, "mActContext"    # Landroid/content/Context;

    .prologue
    .line 179
    sput-object p1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 180
    sput-object p2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 181
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    .line 182
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "setAppcomponents"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getInstance()Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlDialogListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlDialogListener;)V

    .line 188
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 190
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "setAppcomponents : Need to show dialog"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "bml_dialog_popup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    .line 192
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "isPasswordCopy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isPasswordCopy:Z

    .line 193
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "isMultiLineCopy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isMultiLineCopy:Z

    .line 194
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "maxlengthCopy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->maxlengthCopy:I

    .line 195
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "modeCopy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->modeCopy:I

    .line 196
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "BML_CMD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->setCmd(I)V

    .line 197
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "byteCopy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    .line 198
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->savedDialogState:Landroid/os/Bundle;

    const-string v1, "editText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->editText:Ljava/lang/String;

    .line 200
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppcomponents [isDialogShowing] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[isPasswordCopy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isPasswordCopy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [maxlengthCopy ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->maxlengthCopy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  [modeCopy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->modeCopy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [byteCopy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [EDIT TEXT ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[mEditDialogShowing] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [BML_CMD] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_1
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppcomponents [BML_CMD] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    if-eqz v0, :cond_3

    .line 208
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->byteCopy:[B

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isPasswordCopy:Z

    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isMultiLineCopy:Z

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->modeCopy:I

    iget v5, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->maxlengthCopy:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->IMEStartPeer([BZZII)V

    .line 214
    :cond_2
    :goto_0
    return-void

    .line 210
    :cond_3
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->showBMLDialog(I)Z

    goto :goto_0
.end method

.method public setBtnNum(I)V
    .locals 0
    .param p1, "btnNum"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mbtnNum:I

    .line 267
    return-void
.end method

.method public setCmd(I)V
    .locals 0
    .param p1, "in_cmd"    # I

    .prologue
    .line 258
    sput p1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->cmd:I

    .line 259
    return-void
.end method

.method public setDialogBtnNum(I)V
    .locals 3
    .param p1, "BtnNum"    # I

    .prologue
    .line 228
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogBtnNum [BtnNum] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->setBtnNum(I)V

    .line 230
    return-void
.end method

.method public setDialogMessege(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;)V
    .locals 5
    .param p1, "dialogMessege"    # Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    const/4 v0, -0x1

    .line 275
    .local v0, "stringResId":I
    sput-boolean v3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mAvoidDialog:Z

    .line 276
    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$9;->$SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$AppBmlDialogMessages:[I

    invoke-virtual {p1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$AppBmlDialogMessages;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 682
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mdialogMessege:Ljava/lang/String;

    .line 685
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isBMLDialogParameterSet:Z

    .line 691
    :goto_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mdialogMessege:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 692
    const-string v1, "MtvUiBmlDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog Message set as : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mdialogMessege:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_0
    return-void

    .line 280
    :pswitch_0
    const v0, 0x7f07003f

    .line 282
    goto :goto_0

    .line 286
    :pswitch_1
    const v0, 0x7f070040

    .line 288
    goto :goto_0

    .line 292
    :pswitch_2
    const v0, 0x7f070041

    .line 294
    goto :goto_0

    .line 298
    :pswitch_3
    const v0, 0x7f07003d

    .line 300
    goto :goto_0

    .line 304
    :pswitch_4
    const v0, 0x7f07003e

    .line 306
    goto :goto_0

    .line 310
    :pswitch_5
    const v0, 0x7f070026

    .line 312
    goto :goto_0

    .line 316
    :pswitch_6
    const v0, 0x7f070025

    .line 318
    goto :goto_0

    .line 322
    :pswitch_7
    const v0, 0x7f070024

    .line 324
    goto :goto_0

    .line 328
    :pswitch_8
    const v0, 0x7f070023

    .line 330
    goto :goto_0

    .line 335
    :pswitch_9
    const v0, 0x7f070027

    .line 337
    goto :goto_0

    .line 341
    :pswitch_a
    const v0, 0x7f070038

    .line 343
    goto :goto_0

    .line 348
    :pswitch_b
    const v0, 0x7f070035

    .line 350
    goto :goto_0

    .line 354
    :pswitch_c
    const v0, 0x7f070036

    .line 356
    goto :goto_0

    .line 360
    :pswitch_d
    const v0, 0x7f070034

    .line 362
    goto :goto_0

    .line 366
    :pswitch_e
    const v0, 0x7f070033

    .line 368
    goto :goto_0

    .line 372
    :pswitch_f
    const v0, 0x7f070031

    .line 374
    goto :goto_0

    .line 378
    :pswitch_10
    const v0, 0x7f07002d

    .line 380
    goto :goto_0

    .line 384
    :pswitch_11
    const v0, 0x7f07002f

    .line 386
    goto :goto_0

    .line 390
    :pswitch_12
    const v0, 0x7f07002e

    .line 392
    goto :goto_0

    .line 396
    :pswitch_13
    const v0, 0x7f070032

    .line 398
    goto/16 :goto_0

    .line 402
    :pswitch_14
    const v0, 0x7f070030

    .line 404
    goto/16 :goto_0

    .line 408
    :pswitch_15
    const v0, 0x7f07002a

    .line 410
    goto/16 :goto_0

    .line 414
    :pswitch_16
    const v0, 0x7f07002b

    .line 416
    goto/16 :goto_0

    .line 421
    :pswitch_17
    const v0, 0x7f07002c

    .line 423
    goto/16 :goto_0

    .line 427
    :pswitch_18
    sput-boolean v4, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mAvoidDialog:Z

    .line 428
    const v0, 0x7f070039

    .line 430
    goto/16 :goto_0

    .line 434
    :pswitch_19
    const v0, 0x7f07003b

    .line 436
    goto/16 :goto_0

    .line 440
    :pswitch_1a
    const v0, 0x7f07003c

    .line 442
    goto/16 :goto_0

    .line 446
    :pswitch_1b
    const v0, 0x7f070022

    .line 448
    goto/16 :goto_0

    .line 452
    :pswitch_1c
    const v0, 0x7f070020

    .line 454
    goto/16 :goto_0

    .line 458
    :pswitch_1d
    const v0, 0x7f070021

    .line 460
    goto/16 :goto_0

    .line 464
    :pswitch_1e
    const v0, 0x7f07001f

    .line 466
    goto/16 :goto_0

    .line 470
    :pswitch_1f
    const v0, 0x7f07001e

    .line 472
    goto/16 :goto_0

    .line 476
    :pswitch_20
    const/high16 v0, 0x7f070000

    .line 478
    goto/16 :goto_0

    .line 482
    :pswitch_21
    const v0, 0x7f070001

    .line 484
    goto/16 :goto_0

    .line 488
    :pswitch_22
    const v0, 0x7f070002

    .line 490
    goto/16 :goto_0

    .line 494
    :pswitch_23
    const v0, 0x7f070003

    .line 496
    goto/16 :goto_0

    .line 500
    :pswitch_24
    const v0, 0x7f070004

    .line 502
    goto/16 :goto_0

    .line 506
    :pswitch_25
    const v0, 0x7f070005

    .line 508
    goto/16 :goto_0

    .line 512
    :pswitch_26
    const v0, 0x7f070006

    .line 514
    goto/16 :goto_0

    .line 518
    :pswitch_27
    const v0, 0x7f070007

    .line 520
    goto/16 :goto_0

    .line 524
    :pswitch_28
    const v0, 0x7f070008

    .line 526
    goto/16 :goto_0

    .line 530
    :pswitch_29
    const v0, 0x7f070009

    .line 532
    goto/16 :goto_0

    .line 537
    :pswitch_2a
    const v0, 0x7f07000a

    .line 539
    goto/16 :goto_0

    .line 543
    :pswitch_2b
    const v0, 0x7f07000b

    .line 545
    goto/16 :goto_0

    .line 549
    :pswitch_2c
    const v0, 0x7f07000c

    .line 551
    goto/16 :goto_0

    .line 555
    :pswitch_2d
    const v0, 0x7f07000d

    .line 557
    goto/16 :goto_0

    .line 561
    :pswitch_2e
    const v0, 0x7f07000e

    .line 563
    goto/16 :goto_0

    .line 567
    :pswitch_2f
    const v0, 0x7f07000f

    .line 569
    goto/16 :goto_0

    .line 573
    :pswitch_30
    const v0, 0x7f070010

    .line 575
    goto/16 :goto_0

    .line 579
    :pswitch_31
    const v0, 0x7f070011

    .line 581
    goto/16 :goto_0

    .line 585
    :pswitch_32
    const v0, 0x7f070012

    .line 587
    goto/16 :goto_0

    .line 591
    :pswitch_33
    const v0, 0x7f070013

    .line 593
    goto/16 :goto_0

    .line 597
    :pswitch_34
    const v0, 0x7f070014

    .line 599
    goto/16 :goto_0

    .line 603
    :pswitch_35
    const v0, 0x7f070016

    .line 605
    goto/16 :goto_0

    .line 609
    :pswitch_36
    const v0, 0x7f070017

    .line 611
    goto/16 :goto_0

    .line 615
    :pswitch_37
    const v0, 0x7f070015

    .line 617
    goto/16 :goto_0

    .line 621
    :pswitch_38
    const v0, 0x7f070018

    .line 623
    goto/16 :goto_0

    .line 627
    :pswitch_39
    const v0, 0x7f070019

    .line 629
    goto/16 :goto_0

    .line 633
    :pswitch_3a
    const v0, 0x7f07001a

    .line 635
    goto/16 :goto_0

    .line 639
    :pswitch_3b
    const v0, 0x7f07001c

    .line 641
    goto/16 :goto_0

    .line 645
    :pswitch_3c
    const v0, 0x7f07001b

    .line 647
    goto/16 :goto_0

    .line 651
    :pswitch_3d
    const v0, 0x7f070028

    .line 653
    goto/16 :goto_0

    .line 657
    :pswitch_3e
    const v0, 0x7f070029

    .line 659
    goto/16 :goto_0

    .line 663
    :pswitch_3f
    const v0, 0x7f07001d

    .line 665
    goto/16 :goto_0

    .line 669
    :pswitch_40
    const v0, 0x7f070037

    .line 671
    goto/16 :goto_0

    .line 675
    :pswitch_41
    const v0, 0x7f07003a

    .line 677
    goto/16 :goto_0

    .line 689
    :cond_1
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isBMLDialogParameterSet:Z

    goto/16 :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
    .end packed-switch
.end method

.method public setIsDialogSet(Z)V
    .locals 0
    .param p1, "bFlag"    # Z

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isBMLDialogParameterSet:Z

    .line 705
    return-void
.end method

.method public showBMLDialog(I)Z
    .locals 12
    .param p1, "cmd"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 709
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialogForBML : Entered [cmd] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->setCmd(I)V

    .line 713
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v4

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v11, :cond_2

    .line 720
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "showDialogForBML: Landscapemode no need to make dialog"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_2
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    .line 726
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BML_DIALOGUE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 729
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->isDialogSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    .line 735
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 736
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getDialogMessege()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 738
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 740
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 741
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 742
    .local v8, "layout":Landroid/view/View;
    const-string v0, "MtvUiBmlDialog"

    const-string v1, "SLIM_BRCOMMAND_QUERY_AUTH_DIALOG"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 745
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->isPrevUserNameNedded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 748
    const-string v9, ""

    .line 749
    .local v9, "prevUserName":Ljava/lang/String;
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getPrevUserName()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 750
    new-instance v9, Ljava/lang/String;

    .end local v9    # "prevUserName":Ljava/lang/String;
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getPrevUserName()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 752
    .restart local v9    # "prevUserName":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 755
    .end local v9    # "prevUserName":Ljava/lang/String;
    :cond_5
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->isPrevUserPasswdNedded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 757
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getPrevUserPassWd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 762
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f070298

    new-instance v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getBtnNum()I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 802
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f07020b

    new-instance v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 827
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag$3;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 846
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    .line 848
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mAvoidDialog:Z

    if-eqz v0, :cond_8

    .line 850
    const-string v0, "MtvUiBmlDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog Avoided [cmd] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    sput-boolean v4, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mAvoidDialog:Z

    .line 862
    :goto_1
    sput-boolean v4, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mEditDialogShowing:Z

    move v4, v10

    .line 863
    goto/16 :goto_0

    .line 855
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mBMLdiag:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_2
    sput-boolean v10, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->mDialogShowing:Z

    goto :goto_1

    .line 856
    :catch_0
    move-exception v6

    .line 857
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
