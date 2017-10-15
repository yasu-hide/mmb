.class public Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
.super Landroid/app/DialogFragment;
.source "MtvUiDialogsFrag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;,
        Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$EPGErrorDialogFragment;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_PROGRAM_NAME_LENGTH:I = 0x32

.field public static final MTV_UI_DIALOG_AREA_SLOT_ID:Ljava/lang/String; = "SlotID"

.field public static final MTV_UI_DIALOG_AUTO_PLAY_NEXT:Ljava/lang/String; = "auto_play_next"

.field public static final MTV_UI_DIALOG_CHANGE_AREA_COMPLETE_STRING:Ljava/lang/String; = "change_area_complete"

.field public static final MTV_UI_DIALOG_EXIT_CONFIRMATION:Ljava/lang/String; = "exit_confirmation"

.field public static final MTV_UI_DIALOG_EXIT_CONFIRMATION_ANTENNA:Ljava/lang/String; = "exit_confirmation_antenna"

.field public static final MTV_UI_DIALOG_MESSAGE:Ljava/lang/String; = "dialog_msg"

.field public static final MTV_UI_DIALOG_RECORD_CONTINUATION:Ljava/lang/String; = "record_confirmation"

.field public static final MTV_UI_DIALOG_RENAME:Ljava/lang/String; = "rename_tvfile"

.field public static final MTV_UI_DIALOG_RESERVATION_DELETE_ID:Ljava/lang/String; = "db_id"

.field public static final MTV_UI_DIALOG_RESERVATION_END_TAG:Ljava/lang/String; = "reserve_end_dialog"

.field public static final MTV_UI_DIALOG_RESERVATION_TYPE:Ljava/lang/String; = "reserve_type"

.field public static final MTV_UI_DIALOG_RESERVE_END_EXIT:Ljava/lang/String; = "reserve_end_exit"

.field public static final MTV_UI_DIALOG_SAVE_AND_EXIT_CONFIRMATION:Ljava/lang/String; = "save_exit_confirmation"

.field public static final MTV_UI_DIALOG_SAVE_AND_EXIT_CONFIRMATION_ANTENNA:Ljava/lang/String; = "save_exit_confirmation_antenna"

.field public static final MTV_UI_DIALOG_SHOW_CHANNEL_LIST:Ljava/lang/String; = "show_channel_list"

.field public static final MTV_UI_DIALOG_SIGNAL_ALERT_RETRY_EXIT:Ljava/lang/String; = "signal_alert_retry_exit"

.field public static final MTV_UI_DIALOG_SIGNAL_ALERT_TERMINATE:Ljava/lang/String; = "signal_alert_terminate"

.field public static final MTV_UI_DIALOG_TITLE:Ljava/lang/String; = "title"

.field public static final MTV_UI_DIALOG_TVLIST_DELETE:Ljava/lang/String; = "delete_tvfile"

.field public static final MTV_UI_DIALOG_TV_FILES_DELETE_OK_CANCEL:Ljava/lang/String; = "tv_files_delete_ok_cancel"

.field public static final MTV_UI_DIALOG_TYPE:Ljava/lang/String; = "dialogType"

.field public static final MTV_UI_DIALOG_TYPE_AUOT_PLAY_NEXT:I = 0x13

.field public static final MTV_UI_DIALOG_TYPE_CHANGE_AREA:I = 0x1

.field public static final MTV_UI_DIALOG_TYPE_CHANGE_AREA_COMPLETE:I = 0x8

.field public static final MTV_UI_DIALOG_TYPE_CHANGE_SETTING_DIALOG:I = 0x2

.field public static final MTV_UI_DIALOG_TYPE_EXIT_CONFIRMATION:I = 0x9

.field public static final MTV_UI_DIALOG_TYPE_EXIT_CONFIRMATION_ANTENNA:I = 0xf

.field public static final MTV_UI_DIALOG_TYPE_RECORD_CONTINUATION:I = 0x11

.field public static final MTV_UI_DIALOG_TYPE_RENAME:I = 0x14

.field public static final MTV_UI_DIALOG_TYPE_RESERVE_END:I = 0x7

.field public static final MTV_UI_DIALOG_TYPE_RESERVE_LIST_DELETE:I = 0x6

.field public static final MTV_UI_DIALOG_TYPE_RESERVE_LIST_LONGCLICK:I = 0x5

.field public static MTV_UI_DIALOG_TYPE_RESET:I = 0x0

.field public static final MTV_UI_DIALOG_TYPE_SAVE_AND_EXIT_CONFIRMATION:I = 0xa

.field public static final MTV_UI_DIALOG_TYPE_SAVE_AND_EXIT_CONFIRMATION_ANTENNA:I = 0x10

.field public static final MTV_UI_DIALOG_TYPE_SHOW_CHANNEL_LIST:I = 0x12

.field public static final MTV_UI_DIALOG_TYPE_SIGNAL_ALERT_RETRY_EXIT:I = 0xb

.field public static final MTV_UI_DIALOG_TYPE_SIGNAL_ALERT_TERMINATE:I = 0xc

.field public static final MTV_UI_DIALOG_TYPE_TVLIST_DELETE:I = 0x4

.field public static final MTV_UI_DIALOG_TYPE_TVLIST_LONGCLICK:I = 0x3

.field public static final MTV_UI_DIALOG_TYPE_TV_FILES_DELETE_OK_CANCEL:I = 0xe

.field public static final MTV_UI_TVLIST_FILEPATH:Ljava/lang/String; = "filePath"

.field public static final MTV_UI_TVLIST_FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final MTV_UI_TVLIST_FILE_TYPE:Ljava/lang/String; = "fileType"

.field public static final MTV_UI_TVLIST_INDEX:Ljava/lang/String; = "index"

.field public static final MTV_UI_TVLIST_LONGCLICK_TITLE:Ljava/lang/String; = "title"

.field protected static final TAG:Ljava/lang/String; = "MtvUiDialogsFrag"


# instance fields
.field private dialogGravity:I

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mRenameString:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->MTV_UI_DIALOG_TYPE_RESET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 106
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 107
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 109
    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->dialogGravity:I

    .line 111
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->showToast(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private createDialogByType(ILandroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 45
    .param p1, "type"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 191
    const/4 v9, 0x0

    .line 195
    .local v9, "dialog":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 810
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v9, :cond_1

    .line 811
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 812
    :cond_1
    return-object v9

    .line 197
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getAllAreas(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v5

    .line 198
    .local v5, "area":[Lcom/samsung/sec/mtv/provider/MtvArea;
    array-length v0, v5

    move/from16 v41, v0

    move/from16 v0, v41

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 200
    .local v6, "areasNameList":[Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v41, v0

    move/from16 v0, v16

    move/from16 v1, v41

    if-ge v0, v1, :cond_3

    .line 201
    aget-object v41, v5, v16

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string v42, "Empty"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 202
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const v42, 0x7f0701e9

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    add-int/lit8 v42, v16, 0x1

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 206
    .local v25, "mAreaNameByResource":Ljava/lang/String;
    :goto_2
    aput-object v25, v6, v16

    .line 200
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 204
    .end local v25    # "mAreaNameByResource":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    aget-object v42, v5, v16

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v41 .. v42}, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->getStringByResourceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "mAreaNameByResource":Ljava/lang/String;
    goto :goto_2

    .line 208
    .end local v25    # "mAreaNameByResource":Ljava/lang/String;
    :cond_3
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f0702d4

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v42

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;[Lcom/samsung/sec/mtv/provider/MtvArea;)V

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 224
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 229
    .end local v5    # "area":[Lcom/samsung/sec/mtv/provider/MtvArea;
    .end local v6    # "areasNameList":[Ljava/lang/CharSequence;
    .end local v16    # "i":I
    :pswitch_2
    new-instance v20, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    const-class v42, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v20, "intent":Landroid/content/Intent;
    const-string v41, "SlotID"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 231
    .local v39, "slotID":I
    const-string v41, "slotId"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f020073

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07021b

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070216

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$3;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Landroid/content/Intent;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$2;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 247
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 250
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v39    # "slotID":I
    :pswitch_3
    const-string v41, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 252
    .local v40, "title":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x7f050009

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v8, "defaultOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 254
    .local v15, "finalOptions":[Ljava/lang/String;
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$4;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 276
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 280
    .end local v8    # "defaultOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "finalOptions":[Ljava/lang/String;
    .end local v40    # "title":Ljava/lang/String;
    :pswitch_4
    const-string v41, "filePath"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 281
    .local v13, "filePath":Ljava/lang/String;
    const-string v41, "index"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 282
    .local v11, "fileIndex":I
    const-string v41, "fileType"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 284
    .local v14, "fileType":I
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f070237

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070250

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$6;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v11, v13}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$6;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;IILjava/lang/String;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$5;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 314
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 319
    .end local v11    # "fileIndex":I
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "fileType":I
    :pswitch_5
    const-string v41, "filePath"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 320
    .restart local v13    # "filePath":Ljava/lang/String;
    const-string v41, "fileName"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 321
    .local v12, "fileName":Ljava/lang/String;
    const-string v41, "index"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 322
    .restart local v11    # "fileIndex":I
    new-instance v19, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;

    const/16 v41, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$ProgramNameInputFilter;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$1;)V

    .line 323
    .local v19, "inputFilter":Landroid/text/InputFilter;
    new-instance v18, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 324
    .local v18, "input":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    move-object/from16 v41, v0

    if-nez v41, :cond_4

    .line 325
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    .line 326
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const/16 v41, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 328
    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput-object v19, v41, v42

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 329
    new-instance v24, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 330
    .local v24, "layout":Landroid/widget/LinearLayout;
    const/16 v41, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 331
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v41, -0x1

    const/16 v42, -0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    .local v32, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v41, 0x50

    const/16 v42, 0x0

    const/16 v43, 0x64

    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 333
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f0702b6

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f0702b6

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$8;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;ILjava/lang/String;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$7;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$7;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 368
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 369
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v33

    .line 370
    .local v33, "renameButton":Landroid/widget/Button;
    const-string v41, "MtvUiDialogsFrag"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "At initialize mRenameString["

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "] fileName["

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "]"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 372
    :cond_5
    if-eqz v33, :cond_6

    .line 373
    const/16 v41, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    :cond_6
    :goto_3
    new-instance v41, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v12, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$9;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Ljava/lang/String;Landroid/widget/Button;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 375
    :cond_7
    if-eqz v33, :cond_6

    .line 376
    const/16 v41, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 403
    .end local v11    # "fileIndex":I
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v18    # "input":Landroid/widget/EditText;
    .end local v19    # "inputFilter":Landroid/text/InputFilter;
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    .end local v32    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "renameButton":Landroid/widget/Button;
    :pswitch_6
    const-string v41, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 404
    .restart local v40    # "title":Ljava/lang/String;
    const-string v41, "db_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 405
    .local v17, "id":I
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f05000d

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$10;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$10;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;I)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 419
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 423
    .end local v17    # "id":I
    .end local v40    # "title":Ljava/lang/String;
    :pswitch_7
    const-string v41, "db_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v35

    .line 424
    .local v35, "reserve_id":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v34

    .line 425
    .local v34, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v34, :cond_0

    .line 427
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f070237

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f0702ce

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$12;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$12;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Lcom/samsung/sec/mtv/provider/MtvReservation;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$11;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$11;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 443
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 447
    .end local v34    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v35    # "reserve_id":I
    :pswitch_8
    const-string v41, "dialog_msg"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 448
    .local v31, "message":Ljava/lang/String;
    const-string v41, "reserve_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 449
    .local v27, "mReservationType":I
    const-string v41, "reserve_end_exit"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 450
    .local v21, "isExit":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getReservationAlertID()I

    move-result v42

    invoke-static/range {v41 .. v42}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v10

    .line 451
    .local v10, "end_reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-nez v27, :cond_8

    if-eqz v21, :cond_8

    const/16 v22, 0x1

    .line 452
    .local v22, "isbRecordStop":Z
    :goto_4
    const-string v41, "MtvUiDialogsFrag"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mReservationType   :"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "isbRecordStop "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f0701e0

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$14;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$14;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$13;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;Lcom/samsung/sec/mtv/provider/MtvReservation;Z)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v41

    if-eqz v41, :cond_9

    .line 493
    const/16 v41, 0x30

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->dialogGravity:I

    .line 494
    const-string v41, "MtvUiDialogsFrag"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "dialogGravity TOP "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->dialogGravity:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :goto_5
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->dialogGravity:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->setGravity(I)V

    .line 501
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 451
    .end local v22    # "isbRecordStop":Z
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 496
    .restart local v22    # "isbRecordStop":Z
    :cond_9
    const/16 v41, 0x11

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->dialogGravity:I

    .line 497
    const-string v41, "MtvUiDialogsFrag"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "dialogGravity CENTER "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->dialogGravity:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 506
    .end local v10    # "end_reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    .end local v21    # "isExit":Z
    .end local v22    # "isbRecordStop":Z
    .end local v27    # "mReservationType":I
    .end local v31    # "message":Ljava/lang/String;
    :pswitch_9
    const-string v41, "mSlotID"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 507
    .local v29, "mSlotId":I
    const-string v41, "mSlotMap"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v30

    .line 508
    .local v30, "mSlotMap":[I
    const-string v31, ""

    .line 509
    .restart local v31    # "message":Ljava/lang/String;
    if-eqz v30, :cond_a

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    sget-object v42, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL:[[[Ljava/lang/String;

    const/16 v43, 0x0

    aget v43, v30, v43

    aget-object v42, v42, v43

    const/16 v43, 0x1

    aget v43, v30, v43

    aget-object v42, v42, v43

    const/16 v43, 0x2

    aget v43, v30, v43

    aget-object v42, v42, v43

    invoke-static/range {v41 .. v42}, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->getStringByResourceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 512
    .local v28, "mSelArea":Ljava/lang/String;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const v42, 0x7f0701e9

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    add-int/lit8 v42, v29, 0x1

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 513
    .local v37, "selectedSlot":Ljava/lang/String;
    const v41, 0x7f070217

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x2

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aput-object v37, v42, v43

    const/16 v43, 0x1

    aput-object v28, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 515
    .end local v28    # "mSelArea":Ljava/lang/String;
    .end local v37    # "selectedSlot":Ljava/lang/String;
    :cond_a
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f020073

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07021b

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$15;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$15;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 533
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 537
    .end local v29    # "mSlotId":I
    .end local v30    # "mSlotMap":[I
    .end local v31    # "message":Ljava/lang/String;
    :pswitch_a
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f070249

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070255

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$17;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$17;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$16;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$16;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 561
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 565
    :pswitch_b
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f070249

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f0702c2

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$19;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$19;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$18;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$18;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 582
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 585
    :pswitch_c
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f070249

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07024a

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f020073

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$21;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$21;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$20;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$20;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 603
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 619
    :pswitch_d
    new-instance v26, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v41

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 621
    .local v26, "mProgressdialog":Landroid/app/ProgressDialog;
    const v41, 0x7f0701e6

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 622
    const v41, 0x7f0701f5

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 623
    const/16 v41, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 624
    const/16 v41, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 625
    move-object/from16 v9, v26

    .line 626
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 630
    .end local v26    # "mProgressdialog":Landroid/app/ProgressDialog;
    :pswitch_e
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f070249

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f0702c3

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f020073

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$23;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$23;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$22;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$22;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 659
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 662
    :pswitch_f
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f0702e3

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f0702c0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$25;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$25;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$24;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$24;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 681
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 685
    :pswitch_10
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f07028c

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07028b

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$27;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$27;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$26;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$26;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 717
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 718
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 722
    :pswitch_11
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f070237

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070250

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f070298

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$29;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$29;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$28;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$28;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 738
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 739
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 744
    :pswitch_12
    const-string v41, "itemListIndex"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 745
    .local v23, "itemListIndex":I
    const-string v41, "channelNameList"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 747
    .local v7, "channelNameList":[Ljava/lang/CharSequence;
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f0702d1

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$30;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$30;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    move-object/from16 v0, v41

    move/from16 v1, v23

    move-object/from16 v2, v42

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    .line 764
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 770
    .end local v7    # "channelNameList":[Ljava/lang/CharSequence;
    .end local v23    # "itemListIndex":I
    :pswitch_13
    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v41, 0x0

    const v42, 0x7f0702fe

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v38, v41

    const/16 v41, 0x1

    const v42, 0x7f0702fd

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getString(I)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v38, v41

    .line 771
    .local v38, "selections":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPlayNext()Z

    move-result v41

    if-eqz v41, :cond_b

    const/16 v36, 0x0

    .line 772
    .local v36, "selected":I
    :goto_6
    new-instance v41, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v42, 0x7f0701ee

    invoke-virtual/range {v41 .. v42}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    new-instance v42, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$32;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$32;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    move/from16 v2, v36

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    const v42, 0x7f07020b

    new-instance v43, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$31;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag$31;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;)V

    invoke-virtual/range {v41 .. v43}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 803
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v41

    const/16 v42, 0x400

    invoke-virtual/range {v41 .. v42}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 771
    .end local v36    # "selected":I
    :cond_b
    const/16 v36, 0x1

    goto :goto_6

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_5
    .end packed-switch
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 125
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;-><init>()V

    .line 126
    .local v0, "frag":Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;
    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 127
    return-object v0
.end method

.method public static removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p0, "fragManager"    # Landroid/app/FragmentManager;
    .param p1, "dialogTag"    # Ljava/lang/String;

    .prologue
    .line 816
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 817
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 818
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 819
    .local v1, "prev":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 821
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 824
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "prev":Landroid/app/Fragment;
    :cond_0
    return-void
.end method

.method private showToast(I)V
    .locals 3
    .param p1, "mStringId"    # I

    .prologue
    .line 924
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 930
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "mString"    # Ljava/lang/String;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 939
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 940
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 150
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
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

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "dialogType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "dialogtype":I
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 165
    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v1, "dlgInfoBundle":Landroid/os/Bundle;
    const-string v2, "dialogType"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_terminate"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v1    # "dlgInfoBundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v3, 0x102

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 175
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 176
    const/4 p1, 0x0

    .line 177
    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    const-string v3, "mRenameString"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 136
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "args":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 138
    .local v1, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_1

    .line 139
    const-string v3, "dialogType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "dialogType":I
    invoke-direct {p0, v2, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->createDialogByType(ILandroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 142
    .end local v2    # "dialogType":I
    :cond_1
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 829
    const-string v0, "mRenameString"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->mRenameString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 831
    return-void
.end method
