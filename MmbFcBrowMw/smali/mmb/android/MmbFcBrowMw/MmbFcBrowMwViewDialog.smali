.class final Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
.super Ljava/lang/Object;
.source "MmbFcBrowMwViewDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;
    }
.end annotation


# static fields
.field private static final LLPARAMS_FILL_PARENT:I = 0x0

.field private static final LLPARAMS_H_FILL_V_WRAP:I = 0x2

.field private static final LLPARAMS_H_WRAP_V_FILL:I = 0x3

.field private static final LLPARAMS_WRAP_CONTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MmbFcBrowMwViewDialog"

.field private static final WEBKIT_DIALOG_AUTH:I = 0x64

.field private static final WEBKIT_DIALOG_DESTROY:I = 0x6e

.field private static final WEBKIT_DIALOG_FORM_RESUBMISSION:I = 0x6a

.field private static final WEBKIT_DIALOG_JS_ALERT:I = 0x65

.field private static final WEBKIT_DIALOG_JS_CONFIRM:I = 0x66

.field private static final WEBKIT_DIALOG_JS_PROMPT:I = 0x67

.field private static final WEBKIT_DIALOG_LIST_MULTI:I = 0x68

.field private static final WEBKIT_DIALOG_LIST_SINGLE:I = 0x69

.field static alertDlg:Landroid/app/AlertDialog;

.field static authDlg:Landroid/app/AlertDialog;

.field static confirmDlg:Landroid/app/AlertDialog;

.field static mContext:Landroid/content/Context;

.field private static mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field static promptDlg:Landroid/app/AlertDialog;

.field private static res:Landroid/content/res/Resources;

.field static resubmissionDlg:Landroid/app/AlertDialog;


# instance fields
.field private mFormReResult:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

.field private mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

.field private mWebkitPopupHandler:Landroid/os/Handler;

.field webkitMultiPopupListDialog:Landroid/app/AlertDialog;

.field webkitSinglePopupListDialog:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sput-object p1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, "mPackageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.nttdocomo.mmb.android.MmbFcBrowMw.res"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitPopupHandler()V

    .line 101
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->nativePopupInit()V

    .line 102
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitAuthDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitAlertDialog(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;III[Z)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->nativePopupListCBFunc(III[Z)V

    return-void
.end method

.method static synthetic access$1300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    .prologue
    .line 57
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mFormReResult:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

    return-object v0
.end method

.method static synthetic access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitConfirmDialog(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitPromptDialog(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    .prologue
    .line 57
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    return-object v0
.end method

.method static synthetic access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;I)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitMultiPopupList(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;I)V

    return-void
.end method

.method static synthetic access$600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;[Ljava/lang/String;[Z[ZII)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Z
    .param p3, "x3"    # [Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitSinglePopupList([Ljava/lang/String;[Z[ZII)V

    return-void
.end method

.method static synthetic access$700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->createWebkitFormResubmission(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;)V

    return-void
.end method

.method static synthetic access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->nativePopupAuthCBFunc(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->nativePopupDialogCBFunc(IILjava/lang/String;)V

    return-void
.end method

.method private createWebkitAlertDialog(ILjava/lang/String;I)V
    .locals 6
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;
    .param p3, "aCbFunc"    # I

    .prologue
    const/4 v5, 0x0

    .line 335
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->alertDlg:Landroid/app/AlertDialog;

    .line 336
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->alertDlg:Landroid/app/AlertDialog;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const/high16 v2, 0x7f040000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->alertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->alertDlg:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v3, 0x7f040006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$6;

    invoke-direct {v3, p0, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$6;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 343
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->alertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 344
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->alertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 345
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->alertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 346
    return-void
.end method

.method private createWebkitAuthDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 18
    .param p1, "aUsername"    # Ljava/lang/String;
    .param p2, "aPassword"    # Ljava/lang/String;
    .param p3, "aRealm"    # Ljava/lang/String;
    .param p4, "aAuthType"    # I
    .param p5, "aCbFunc"    # I

    .prologue
    .line 266
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 267
    .local v4, "inflate":Landroid/view/LayoutInflater;
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const/high16 v13, 0x7f030000

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 268
    .local v9, "paser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-virtual {v4, v9, v12}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 269
    .local v2, "authlayout":Landroid/widget/LinearLayout;
    const/high16 v12, 0x7f050000

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 270
    .local v8, "inputusernamelabel":Landroid/widget/TextView;
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v13, 0x7f040002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const v12, 0x7f050001

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 272
    .local v7, "inputusername":Landroid/widget/EditText;
    if-eqz p1, :cond_0

    .line 273
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    const v12, 0x7f050002

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 275
    .local v6, "inputpasswordlabel":Landroid/widget/TextView;
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v13, 0x7f040003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const v12, 0x7f050003

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 277
    .local v5, "inputpassword":Landroid/widget/EditText;
    if-eqz p2, :cond_1

    .line 278
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_1
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v12}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getLoadUri()Ljava/lang/String;

    move-result-object v11

    .line 287
    .local v11, "uristr":Ljava/lang/String;
    const-string v3, ""

    .line 288
    .local v3, "host":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 289
    invoke-static {v11}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    .line 290
    .local v10, "uri":Ljava/net/URI;
    invoke-virtual {v10}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 292
    .end local v10    # "uri":Ljava/net/URI;
    :cond_2
    new-instance v12, Landroid/app/AlertDialog$Builder;

    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    sput-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    .line 293
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    const v13, 0x1080027

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 294
    if-eqz p3, :cond_3

    .line 295
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v14, 0x7f040001

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    const/16 v16, 0x1

    aput-object p3, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    :goto_0
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 300
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    const/4 v13, -0x1

    sget-object v14, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v15, 0x7f040004

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v15, v0, v7, v5, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$2;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 310
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    const/4 v13, -0x2

    sget-object v14, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v15, 0x7f040005

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$3;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v15, v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$3;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 316
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    new-instance v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$4;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v13, v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$4;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 321
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    new-instance v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$5;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/widget/EditText;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 330
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 331
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 332
    return-void

    .line 297
    :cond_3
    sget-object v12, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    sget-object v13, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v14, 0x7f040001

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    const/16 v16, 0x1

    const-string v17, ""

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createWebkitConfirmDialog(ILjava/lang/String;I)V
    .locals 6
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;
    .param p3, "aCbFunc"    # I

    .prologue
    const/4 v5, 0x0

    .line 349
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    .line 350
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const/high16 v2, 0x7f040000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 352
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v3, 0x7f040006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$7;

    invoke-direct {v3, p0, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$7;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 358
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$8;

    invoke-direct {v3, p0, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$8;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 364
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$9;

    invoke-direct {v1, p0, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$9;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 369
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 370
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->confirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 371
    return-void
.end method

.method private createWebkitFormResubmission(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;)V
    .locals 4
    .param p1, "aResult"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

    .prologue
    .line 761
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    .line 762
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 763
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 764
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mFormReResult:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

    .line 765
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v3, 0x7f040006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$19;

    invoke-direct {v3, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$19;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 772
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$20;

    invoke-direct {v3, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$20;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 779
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$21;

    invoke-direct {v1, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$21;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 785
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 786
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->resubmissionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 787
    return-void
.end method

.method private createWebkitMultiPopupList(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;I)V
    .locals 7
    .param p1, "aPopup"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;
    .param p2, "aUserData"    # I

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 593
    :goto_0
    return-void

    .line 556
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    .line 557
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getItemList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getIsLabelList()[Z

    move-result-object v2

    invoke-virtual {p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getIsEnabledList()[Z

    move-result-object v3

    invoke-virtual {p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getItemSelections()[Z

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->multiPopupView([Ljava/lang/String;[Z[Z[ZI)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 558
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v3, 0x7f040006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;

    invoke-direct {v3, p0, p2, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$15;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;ILmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 564
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$16;

    invoke-direct {v3, p0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$16;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 570
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$17;

    invoke-direct {v1, p0, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$17;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 575
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$18;

    invoke-direct {v1, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$18;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 591
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 592
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitMultiPopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private createWebkitPopupHandler()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method private createWebkitPromptDialog(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;
    .param p3, "aInitStr"    # Ljava/lang/String;
    .param p4, "aCbFunc"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 374
    new-instance v2, Landroid/widget/LinearLayout;

    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 375
    .local v2, "promptlayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 376
    invoke-direct {p0, v2, v8}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->setLinearLayoutParams(Landroid/view/View;I)V

    .line 378
    new-instance v1, Landroid/widget/TextView;

    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    .local v1, "label":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const v3, -0xbbbbbc

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    invoke-direct {p0, v1, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->setLinearLayoutParams(Landroid/view/View;I)V

    .line 383
    new-instance v0, Landroid/widget/EditText;

    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "input":Landroid/widget/EditText;
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 386
    invoke-direct {p0, v0, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->setLinearLayoutParams(Landroid/view/View;I)V

    .line 388
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    .line 391
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const/high16 v5, 0x7f040000

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 393
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v6, 0x7f040006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;

    invoke-direct {v6, p0, v0, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$10;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/widget/EditText;I)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 400
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v6, 0x7f040005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$11;

    invoke-direct {v6, p0, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$11;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 406
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    new-instance v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$12;

    invoke-direct {v4, p0, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$12;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 411
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 412
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->promptDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 413
    return-void
.end method

.method private createWebkitSinglePopupList([Ljava/lang/String;[Z[ZII)V
    .locals 2
    .param p1, "aItems"    # [Ljava/lang/String;
    .param p2, "aIsLabel"    # [Z
    .param p3, "aIsEnabled"    # [Z
    .param p4, "aCurrentIndex"    # I
    .param p5, "aUserData"    # I

    .prologue
    .line 439
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    .line 440
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->singlePopupView([Ljava/lang/String;[Z[ZII)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 441
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$13;

    invoke-direct {v1, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$13;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 458
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$14;

    invoke-direct {v1, p0, p5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$14;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 464
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 465
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->webkitSinglePopupListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 466
    return-void
.end method

.method static initMmbFcBrowMwViewDialog(Landroid/content/Context;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aView"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 113
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;-><init>(Landroid/content/Context;)V

    .line 114
    sput-object p1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 115
    return-void
.end method

.method private multiPopupView([Ljava/lang/String;[Z[Z[ZI)Landroid/view/View;
    .locals 9
    .param p1, "aItems"    # [Ljava/lang/String;
    .param p2, "aIsLabel"    # [Z
    .param p3, "aIsEnabled"    # [Z
    .param p4, "aSelectionIndex"    # [Z
    .param p5, "aUserData"    # I

    .prologue
    .line 596
    new-instance v8, Landroid/widget/ListView;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 597
    .local v8, "mainview":Landroid/widget/ListView;
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/content/Context;[Ljava/lang/String;[Z[Z[ZI)V

    .line 598
    .local v0, "listadapter":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$multiPopupListAdapter;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 599
    const/4 v1, -0x1

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 600
    return-object v8
.end method

.method private native nativePopupAuthCBFunc(ILjava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativePopupDialogCBFunc(IILjava/lang/String;)V
.end method

.method private native nativePopupInit()V
.end method

.method private native nativePopupListCBFunc(III[Z)V
.end method

.method static onConfigurationChanged()V
    .locals 22

    .prologue
    .line 212
    sget-object v20, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    if-nez v20, :cond_1

    .line 263
    .local v7, "decorview":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 214
    .end local v7    # "decorview":Landroid/view/ViewGroup;
    :cond_1
    sget-object v20, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->authDlg:Landroid/app/AlertDialog;

    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 215
    .restart local v7    # "decorview":Landroid/view/ViewGroup;
    if-eqz v7, :cond_0

    .line 216
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 217
    .local v3, "childvg1":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 218
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 219
    .local v4, "childvg2":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 220
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 221
    .local v5, "childvg3":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 222
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 223
    .local v6, "childvg4":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 225
    const v20, 0x7f050001

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 226
    .local v9, "etuser":Landroid/widget/EditText;
    if-eqz v9, :cond_0

    .line 227
    invoke-virtual {v9}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 228
    .local v19, "username":Ljava/lang/String;
    const v20, 0x7f050003

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 229
    .local v8, "etpass":Landroid/widget/EditText;
    if-eqz v8, :cond_0

    .line 230
    invoke-virtual {v8}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 232
    .local v18, "password":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 233
    .local v10, "focuschild":Landroid/view/View;
    const/4 v11, 0x0

    .line 234
    .local v11, "focusnum":I
    if-eqz v10, :cond_2

    .line 235
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v20

    invoke-virtual {v9}, Landroid/widget/EditText;->getId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 236
    const/4 v11, 0x1

    .line 241
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->clearFocus()V

    .line 243
    sget-object v20, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    const-string v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 244
    .local v12, "inflate":Landroid/view/LayoutInflater;
    sget-object v20, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const/high16 v21, 0x7f030000

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 245
    .local v17, "paser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 246
    .local v2, "authlayout":Landroid/widget/LinearLayout;
    const/high16 v20, 0x7f050000

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 247
    .local v16, "inputusernamelabel":Landroid/widget/TextView;
    sget-object v20, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v21, 0x7f040002

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const v20, 0x7f050001

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 249
    .local v15, "inputusername":Landroid/widget/EditText;
    if-eqz v19, :cond_3

    .line 250
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_3
    const v20, 0x7f050002

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 252
    .local v14, "inputpasswordlabel":Landroid/widget/TextView;
    sget-object v20, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->res:Landroid/content/res/Resources;

    const v21, 0x7f040003

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v20, 0x7f050003

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 254
    .local v13, "inputpassword":Landroid/widget/EditText;
    if-eqz v18, :cond_4

    .line 255
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_4
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 257
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_6

    .line 259
    invoke-virtual {v15}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 237
    .end local v2    # "authlayout":Landroid/widget/LinearLayout;
    .end local v12    # "inflate":Landroid/view/LayoutInflater;
    .end local v13    # "inputpassword":Landroid/widget/EditText;
    .end local v14    # "inputpasswordlabel":Landroid/widget/TextView;
    .end local v15    # "inputusername":Landroid/widget/EditText;
    .end local v16    # "inputusernamelabel":Landroid/widget/TextView;
    .end local v17    # "paser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v20

    invoke-virtual {v8}, Landroid/widget/EditText;->getId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 238
    const/4 v11, 0x2

    goto/16 :goto_1

    .line 260
    .restart local v2    # "authlayout":Landroid/widget/LinearLayout;
    .restart local v12    # "inflate":Landroid/view/LayoutInflater;
    .restart local v13    # "inputpassword":Landroid/widget/EditText;
    .restart local v14    # "inputpasswordlabel":Landroid/widget/TextView;
    .restart local v15    # "inputusername":Landroid/widget/EditText;
    .restart local v16    # "inputusernamelabel":Landroid/widget/TextView;
    .restart local v17    # "paser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_0

    .line 261
    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0
.end method

.method private popupListAddItem(ILjava/lang/String;ZZZ)V
    .locals 7
    .param p1, "aIndex"    # I
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aSelect"    # Z
    .param p4, "aIsLabel"    # Z
    .param p5, "aIsEnabled"    # Z

    .prologue
    .line 431
    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    monitor-enter v6

    .line 432
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->webkitAddItem(ILjava/lang/String;ZZZ)V

    .line 433
    monitor-exit v6

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private popupListSetMultiple(ZI)V
    .locals 2
    .param p1, "aMulti"    # Z
    .param p2, "aItemCount"    # I

    .prologue
    .line 425
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-virtual {v0, p1, p2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->webkitSetMultiple(ZI)V

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLinearLayoutParams(Landroid/view/View;I)V
    .locals 3
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aType"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 118
    packed-switch p2, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 120
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 126
    :pswitch_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 132
    :pswitch_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 138
    :pswitch_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private singlePopupView([Ljava/lang/String;[Z[ZII)Landroid/view/View;
    .locals 9
    .param p1, "aItems"    # [Ljava/lang/String;
    .param p2, "aIsLabel"    # [Z
    .param p3, "aIsEnabled"    # [Z
    .param p4, "aCurrentIndex"    # I
    .param p5, "aUserData"    # I

    .prologue
    .line 469
    new-instance v8, Landroid/widget/ListView;

    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 470
    .local v8, "mainview":Landroid/widget/ListView;
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Landroid/content/Context;[Ljava/lang/String;[Z[ZII)V

    .line 471
    .local v0, "listadapter":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$SinglePopupListAdapter;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    const/4 v1, -0x1

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 473
    return-object v8
.end method

.method private webkitCreatePopupList()Z
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    .line 418
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getHost()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 945
    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getLoadUri()Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "uristr":Ljava/lang/String;
    const-string v0, ""

    .line 948
    .local v0, "host":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 949
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 950
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 951
    .local v2, "urischeme":Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eq v5, v4, :cond_0

    const-string v4, "https"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eq v5, v4, :cond_0

    const-string v4, "crid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-ne v5, v4, :cond_3

    .line 953
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "urischeme":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 954
    .restart local v1    # "uri":Ljava/net/URI;
    .restart local v2    # "urischeme":Ljava/lang/String;
    :cond_3
    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-ne v5, v4, :cond_1

    .line 955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":///"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method webkitCreateAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "aUserName"    # Ljava/lang/String;
    .param p2, "aPassword"    # Ljava/lang/String;
    .param p3, "aRealm"    # Ljava/lang/String;
    .param p4, "aAuthType"    # I
    .param p5, "aCbFunc"    # I

    .prologue
    .line 802
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 803
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authtype"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cbFunc"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 809
    return-void
.end method

.method webkitCreateDialog(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "aType"    # I
    .param p2, "aText"    # Ljava/lang/String;
    .param p3, "aDefaultStr"    # Ljava/lang/String;
    .param p4, "aCbFunc"    # I

    .prologue
    .line 824
    packed-switch p1, :pswitch_data_0

    .line 853
    :goto_0
    return-void

    .line 826
    :pswitch_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 827
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 828
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cbFunc"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 830
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 834
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 835
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 836
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cbFunc"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 838
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 842
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 843
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 844
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "defaultStr"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cbFunc"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 847
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method webkitPopupDestroy()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 942
    return-void
.end method

.method webkitPopupFormResubmission()Z
    .locals 6

    .prologue
    .line 918
    new-instance v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;

    invoke-direct {v2, p0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;)V

    .line 919
    .local v2, "result":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 921
    .local v0, "confirm":Landroid/os/Message;
    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 930
    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$FormResubmissionResult;->getResult()Z

    move-result v3

    return v3

    .line 925
    :catch_0
    move-exception v1

    .line 926
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "Caught exception while waiting for webkitConfirmDialog"

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;)V

    .line 927
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 929
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method webkitShowPopupList(II)V
    .locals 8
    .param p1, "aCurrentIndex"    # I
    .param p2, "aUserData"    # I

    .prologue
    const/4 v7, 0x0

    .line 866
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    if-nez v4, :cond_0

    .line 884
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->isMultiSelect()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 869
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-static {v4, v5, v7, v7, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 870
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "userdata"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 871
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 873
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getItemList()[Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "items":[Ljava/lang/String;
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getIsLabelList()[Z

    move-result-object v1

    .line 875
    .local v1, "islabel":[Z
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mPopupList:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog$WebkitPopupList;->getIsEnabledList()[Z

    move-result-object v0

    .line 876
    .local v0, "isenabled":[Z
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    const/16 v5, 0x69

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 877
    .restart local v3    # "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "userdata"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 878
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "index"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "items"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 880
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "label"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 881
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "enabled"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 882
    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewDialog;->mWebkitPopupHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
