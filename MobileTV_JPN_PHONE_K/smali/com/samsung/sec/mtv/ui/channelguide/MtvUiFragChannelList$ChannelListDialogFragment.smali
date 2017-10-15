.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiFragChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelListDialogFragment"
.end annotation


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "ChannelListDialogFragment"


# instance fields
.field private dialogId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1773
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1774
    return-void
.end method

.method private createDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/16 v4, 0x400

    .line 1801
    const/4 v0, 0x0

    .line 1802
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 1900
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1901
    return-object v0

    .line 1804
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070219

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05000b

    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1826
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1830
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070237

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0702d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070298

    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07020b

    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1888
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1802
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized newInstance(I)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;
    .locals 3
    .param p0, "dialogId"    # I

    .prologue
    .line 1778
    const-class v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;-><init>()V

    .line 1779
    .local v0, "temp":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;
    iput p0, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->dialogId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1780
    monitor-exit v2

    return-object v0

    .line 1778
    .end local v0    # "temp":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p0, "fragManager"    # Landroid/app/FragmentManager;
    .param p1, "dialogTag"    # Ljava/lang/String;

    .prologue
    .line 1906
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1908
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1909
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1910
    .local v1, "prevFrag":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 1912
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1913
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1916
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "prevFrag":Landroid/app/Fragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 1786
    if-eqz p1, :cond_0

    .line 1788
    const-string v0, "dialogId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->dialogId:I

    .line 1790
    :cond_0
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->dialogId:I

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1796
    const-string v0, "dialogId"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->dialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1797
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1798
    return-void
.end method
