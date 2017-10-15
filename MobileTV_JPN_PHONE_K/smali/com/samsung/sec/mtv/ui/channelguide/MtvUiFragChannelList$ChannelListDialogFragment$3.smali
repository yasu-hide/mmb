.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;
.super Ljava/lang/Object;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/16 v11, 0xfa

    const/16 v10, 0xd

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1835
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$900()Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v4

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mUriId:I

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 1836
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->update2Default(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1838
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$900()Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v5

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-static {v4, v5}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->deletePChannelPrograms(Landroid/content/Context;I)V

    .line 1839
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$900()Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v5

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$900()Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v6

    iget v6, v6, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-static {v4, v5, v6}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->deleteVChannelInfoBasedOnPhysical(Landroid/content/Context;II)V

    .line 1840
    new-instance v2, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    .line 1841
    .local v2, "myPreference":Lcom/samsung/sec/mtv/utility/MtvPreferences;
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$900()Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v4

    iget v4, v4, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1842
    invoke-virtual {v2, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1843
    invoke-virtual {v2, v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1844
    invoke-virtual {v2, v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 1845
    invoke-virtual {v2, v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 1846
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 1848
    .local v0, "ch":Lcom/samsung/sec/mtv/provider/MtvChannel;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "channelguidelist"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;

    .line 1849
    .local v1, "channelListFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
    if-eqz v0, :cond_1

    .line 1850
    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1851
    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1852
    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 1853
    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 1854
    if-eqz v1, :cond_0

    .line 1855
    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 1876
    .end local v0    # "ch":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v1    # "channelListFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
    :cond_0
    :goto_0
    return-void

    .line 1861
    .restart local v0    # "ch":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v1    # "channelListFrag":Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v4

    if-le v4, v9, :cond_2

    .line 1863
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$1000()Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v9, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 1868
    :goto_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment$3;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0702f4

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1870
    invoke-virtual {v2, v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1871
    if-eqz v1, :cond_0

    .line 1872
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    goto :goto_0

    .line 1866
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$1000()Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_1
.end method
