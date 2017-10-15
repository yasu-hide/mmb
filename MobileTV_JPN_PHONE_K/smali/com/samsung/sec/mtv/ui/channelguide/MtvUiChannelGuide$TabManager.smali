.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;
.super Ljava/lang/Object;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$MyTabContentFactory;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContainerId:I

.field mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Landroid/app/Activity;Landroid/widget/TabHost;I)V
    .locals 1
    .param p2, "mActivity"    # Landroid/app/Activity;
    .param p3, "mTabHost"    # Landroid/widget/TabHost;
    .param p4, "mContainerId"    # I

    .prologue
    .line 663
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabs:Ljava/util/HashMap;

    .line 664
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    .line 665
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabHost:Landroid/widget/TabHost;

    .line 666
    iput p4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mContainerId:I

    .line 667
    invoke-virtual {p3, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 668
    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "currentTabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "currentTabFragmentArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 672
    .local p2, "currentTabFragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "currentFragmentTag":Ljava/lang/String;
    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$MyTabContentFactory;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$MyTabContentFactory;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;Landroid/app/Activity;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 677
    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 680
    .local v1, "currentTabInfo":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 681
    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 684
    .local v2, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 685
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 689
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 693
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "currentTabAndFragmentTag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 700
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    .line 701
    .local v1, "mCurrentTab":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 703
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 704
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 706
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 709
    :cond_0
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 711
    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 718
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 719
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 723
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "channelguidelist"

    if-eq v2, v3, :cond_2

    .line 725
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    .line 728
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 729
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 730
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 731
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    iget-object v2, v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    iget-object v2, v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 732
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-static {v2, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$900(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    .line 735
    :cond_2
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mLastTab:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;

    .line 739
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    if-nez v2, :cond_3

    .line 741
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 742
    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1002(Z)Z

    .line 743
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;)V

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_3
    return-void

    .line 715
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_4
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 716
    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mContainerId:I

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;->access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0
.end method

.method public onUpdate(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "tabIDString"    # Ljava/lang/String;

    .prologue
    .line 759
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;

    .line 761
    .local v0, "fragToUpdate":Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Channel Guide Fragment invaild during scan"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
