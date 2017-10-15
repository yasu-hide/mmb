.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;
.super Landroid/app/DialogFragment;
.source "MtvUiFragTVLinkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MTvlinkDetail"
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field mDetailsDialog:Landroid/app/AlertDialog;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mLinkId:I

.field private mLinkIndex:I

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 578
    const-string v0, "MTvlinkDetail"

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 579
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 574
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mInfoList:Ljava/util/ArrayList;

    .line 576
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDialog:Landroid/app/AlertDialog;

    .line 577
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 658
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 581
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "Linkid"    # I

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 574
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mInfoList:Ljava/util/ArrayList;

    .line 576
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDialog:Landroid/app/AlertDialog;

    .line 577
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 658
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 584
    iput p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkId:I

    .line 585
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "Linkid"    # I
    .param p2, "mLinkIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 587
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 574
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mInfoList:Ljava/util/ArrayList;

    .line 576
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDialog:Landroid/app/AlertDialog;

    .line 577
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 658
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 588
    iput p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkId:I

    .line 589
    iput p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkIndex:I

    .line 590
    return-void
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getLinkNumber()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProgramInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getOutline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValidityDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 736
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/M/d H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getValidDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initDetails(Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;)Landroid/app/Dialog;
    .locals 11
    .param p1, "Link"    # Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 623
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->makeLinkInfo()V

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    new-instance v0, Landroid/widget/SimpleAdapter;

    .end local v0    # "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mInfoList:Ljava/util/ArrayList;

    const v3, 0x7f030033

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "MENU_TITLE"

    aput-object v5, v4, v7

    const-string v5, "MENU_VALUE"

    aput-object v5, v4, v8

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 631
    .restart local v0    # "adapter":Landroid/widget/SimpleAdapter;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v6, "popup":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getLinkNumber()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 635
    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 636
    const v1, 0x7f070298

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$1;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    .line 645
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 647
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 648
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 649
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 650
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 652
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 654
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDetailsDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDialog:Landroid/app/AlertDialog;

    .line 655
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mDialog:Landroid/app/AlertDialog;

    return-object v1

    .line 625
    :array_0
    .array-data 4
        0x7f0a012a
        0x7f0a012b
    .end array-data
.end method

.method private makeLinkInfo()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    if-nez v0, :cond_0

    .line 679
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->TAG:Ljava/lang/String;

    const-string v1, "Mlink null!!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->makeTitleText()V

    .line 683
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->makeProgramInfo()V

    .line 684
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->makeValidityDate()V

    goto :goto_0
.end method

.method private makeProgramInfo()V
    .locals 3

    .prologue
    .line 698
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    .line 699
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_TITLE"

    const v2, 0x7f070239

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getProgramInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    return-void
.end method

.method private makeTitleText()V
    .locals 3

    .prologue
    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    .line 690
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_TITLE"

    const v2, 0x7f0702f7

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    const-string v1, "MENU_VALUE"

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    return-void
.end method

.method private makeValidityDate()V
    .locals 6

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getValidityDate()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "validityDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;->getValidDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 707
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    .line 708
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_TITLE"

    const v3, 0x7f07030d

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07028e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    const-string v2, "MENU_VALUE"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mInfoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 594
    if-eqz p1, :cond_0

    .line 595
    const-string v1, "MtvLinkId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkId:I

    .line 596
    const-string v1, "MtvLinkIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkIndex:I

    .line 599
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkId:I

    invoke-static {v1}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfo(I)Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mlink:Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->initDetails(Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    .line 600
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 603
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 605
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 615
    const-string v0, "MtvLinkId"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    const-string v0, "MtvLinkIndex"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList$MTvlinkDetail;->mLinkIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 618
    return-void
.end method
