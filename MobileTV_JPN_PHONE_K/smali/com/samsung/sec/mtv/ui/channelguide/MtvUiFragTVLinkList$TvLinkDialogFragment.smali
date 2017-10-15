.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiFragTVLinkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TvLinkDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TvLinkDialogFragment"


# instance fields
.field private dialogId:I

.field private mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

.field private mLinkId:I

.field private positionOrLinkIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    .prologue
    .line 217
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->positionOrLinkIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    .prologue
    .line 217
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLinkId:I

    return v0
.end method

.method public static declared-synchronized newInstance(III)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;
    .locals 3
    .param p0, "dialogId"    # I
    .param p1, "positionOrLinkIndex"    # I
    .param p2, "mLinkId"    # I

    .prologue
    .line 232
    const-class v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;-><init>()V

    .line 233
    .local v0, "tempFrag":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;
    iput p0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->dialogId:I

    .line 234
    iput p1, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->positionOrLinkIndex:I

    .line 235
    iput p2, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLinkId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit v2

    return-object v0

    .line 232
    .end local v0    # "tempFrag":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public createDialog(IILcom/samsung/sec/mtv/provider/MtvCProBMInfo;)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I
    .param p2, "mposition"    # I
    .param p3, "mLinke"    # Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .prologue
    const v5, 0x7f07020b

    const/16 v4, 0x400

    const v3, 0x7f070298

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 447
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 448
    return-object v0

    .line 288
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070266

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->positionOrLinkIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f050000

    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->positionOrLinkIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 363
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070267

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$4;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 407
    goto/16 :goto_0

    .line 412
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070237

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0702d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$6;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$6;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment$5;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 250
    const-string v1, "dialogId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->dialogId:I

    .line 251
    const-string v1, "positionOrLinkIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->positionOrLinkIndex:I

    .line 252
    const-string v1, "mLinkId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLinkId:I

    .line 257
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLinkId:I

    invoke-static {v1}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfo(I)Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :goto_0
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->dialogId:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->positionOrLinkIndex:I

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->createDialog(IILcom/samsung/sec/mtv/provider/MtvCProBMInfo;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "TvLinkDialogFragment"

    const-string v2, "SQLiteException while getAvailableCProBMInfo invoded!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TvLinkDialogFragment"

    const-string v2, "IOException while getAvailableCProBMInfo invoded!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    const-string v0, "dialogId"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->dialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string v0, "positionOrLinkIndex"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->positionOrLinkIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v0, "mLinkId"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$TvLinkDialogFragment;->mLinkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 278
    return-void
.end method
