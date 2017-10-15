.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;
.super Landroid/app/DialogFragment;
.source "MtvUiFragTVFilesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewDetailsFragment"
.end annotation


# static fields
.field private static final LocationTag1:Ljava/lang/String; = "PhMem"

.field private static final LocationTag2:Ljava/lang/String; = "Phone"

.field private static final LocationTag3:Ljava/lang/String; = "sdcard"

.field public static final TAG:Ljava/lang/String; = "ViewDetailsFragment"


# instance fields
.field private mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 569
    return-void
.end method

.method public constructor <init>(Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 3
    .param p1, "mMtvFile"    # Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 575
    const-string v0, "ViewDetailsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMTvFile :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method private buildDialog(Ljava/util/ArrayList;)Landroid/app/Dialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .local p1, "input":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v9, 0x400

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    new-instance v0, Landroid/widget/SimpleAdapter;

    .end local v0    # "adapter":Landroid/widget/SimpleAdapter;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f030039

    new-array v4, v5, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v4, v7

    const-string v2, "value"

    aput-object v2, v4, v8

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 669
    .restart local v0    # "adapter":Landroid/widget/SimpleAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07023a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070298

    new-instance v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 681
    .local v6, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 682
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 683
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 684
    return-object v6

    .line 665
    nop

    :array_0
    .array-data 4
        0x7f0a013e
        0x7f0a013f
    .end array-data
.end method

.method private constructDetails()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v0, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "title":Ljava/lang/String;
    const/4 v3, 0x0

    .line 600
    .local v3, "value":Ljava/lang/String;
    const v4, 0x7f070254

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getFileFormatString()Ljava/lang/String;

    move-result-object v3

    .line 602
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 603
    .local v1, "mapItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    const v4, 0x7f070253

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getFileSizeString()Ljava/lang/String;

    move-result-object v3

    .line 609
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "mapItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 610
    .restart local v1    # "mapItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    const v4, 0x7f070251

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getFileLocationString()Ljava/lang/String;

    move-result-object v3

    .line 616
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "mapItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 617
    .restart local v1    # "mapItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "title"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    return-object v0
.end method

.method private getFileFormatString()Ljava/lang/String;
    .locals 2

    .prologue
    const v1, 0x7f07030e

    .line 626
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 635
    const v0, 0x7f070309

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 629
    :pswitch_0
    const v0, 0x7f07025d

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 631
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFileLocationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhMem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    :cond_0
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    :goto_0
    return-object v0

    :cond_1
    const v0, 0x7f070275

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFileSizeString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 642
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "decimal":Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070262

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070273

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    const-string v0, "mMtvFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvFile;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->constructDetails()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->buildDialog(Ljava/util/ArrayList;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 590
    const-string v0, "mMtvFile"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewDetailsFragment;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 591
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 592
    return-void
.end method
