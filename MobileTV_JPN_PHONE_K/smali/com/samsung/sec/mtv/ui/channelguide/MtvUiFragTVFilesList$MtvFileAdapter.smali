.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiFragTVFilesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvFileAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/sec/mtv/provider/MtvFile;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "rsrcID"    # I

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;-><init>(Landroid/content/Context;I[Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 695
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/samsung/sec/mtv/provider/MtvFile;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "rsrcID"    # I
    .param p3, "objects"    # [Lcom/samsung/sec/mtv/provider/MtvFile;

    .prologue
    const/4 v0, 0x0

    .line 698
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 690
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 691
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    .line 699
    iput-object p3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 700
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    .line 702
    return-void
.end method


# virtual methods
.method public getAdapterData()[Lcom/samsung/sec/mtv/provider/MtvFile;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 709
    const/4 v9, 0x0

    .line 710
    .local v9, "viewHolder":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;
    if-nez p2, :cond_7

    .line 711
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 712
    .local v8, "vi":Landroid/view/LayoutInflater;
    const v10, 0x7f030038

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 716
    new-instance v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;

    .end local v9    # "viewHolder":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;
    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$1;)V

    .line 717
    .restart local v9    # "viewHolder":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;
    const v10, 0x7f0a0135

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPreImageView:Landroid/widget/ImageView;

    .line 718
    const v10, 0x7f0a0136

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPlayImageView:Landroid/widget/ImageView;

    .line 719
    const v10, 0x7f0a013a

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    .line 720
    const v10, 0x7f0a013b

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView2:Landroid/widget/TextView;

    .line 721
    const v10, 0x7f0a013c

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView3:Landroid/widget/TextView;

    .line 722
    const v10, 0x7f0a006a

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->deleteLayout:Landroid/widget/RelativeLayout;

    .line 723
    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 744
    .end local v8    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    aget-object v1, v10, p1

    .line 746
    .local v1, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v1, :cond_6

    .line 749
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->deleteLayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 752
    const/4 v7, 0x0

    .line 753
    .local v7, "strDate":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "en"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 755
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 756
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "M/d (EEE) H:mm"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 782
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "null"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "nul"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "No Station Name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_1
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07028d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "channel_Name":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v10

    if-nez v10, :cond_12

    .line 785
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView2:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView3:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "No Program Name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_2
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07028a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "programName":Ljava/lang/String;
    :goto_4
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    if-eqz v10, :cond_3

    .line 794
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_3
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPreImageView:Landroid/widget/ImageView;

    if-eqz v10, :cond_4

    .line 797
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPreImageView:Landroid/widget/ImageView;

    iget-object v11, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPlayImageView:Landroid/widget/ImageView;

    invoke-static {v1, v10, v11}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$600(Lcom/samsung/sec/mtv/provider/MtvFile;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 801
    :cond_4
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 802
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    if-eqz v10, :cond_6

    .line 803
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 804
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v10

    const/16 v11, 0x12c

    invoke-virtual {v10, v11}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 805
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 806
    :cond_5
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07028a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 809
    :goto_5
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v10

    const/16 v11, 0x3031

    invoke-virtual {v10, v11}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 810
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, -0xa

    invoke-virtual {v10, v11, v12}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 814
    .end local v0    # "channel_Name":Ljava/lang/String;
    .end local v4    # "programName":Ljava/lang/String;
    .end local v7    # "strDate":Ljava/lang/String;
    :cond_6
    return-object p2

    .line 726
    .end local v1    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "viewHolder":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;
    check-cast v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;

    .line 727
    .restart local v9    # "viewHolder":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPreImageView:Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 729
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPreImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 730
    .local v2, "mPreviewImageDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v10, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_0

    .line 732
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "mPreviewImageDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 733
    .local v3, "mRecyclableBitmap":Landroid/graphics/Bitmap;
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->mPreImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 734
    if-eqz v3, :cond_0

    .line 736
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 737
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Previous Bitmap recycled..."

    invoke-static {v10, v11}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 758
    .end local v3    # "mRecyclableBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    .restart local v7    # "strDate":Ljava/lang/String;
    :cond_8
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "M/d (EEE) h:mm a"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 762
    :cond_9
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$MtvFileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 763
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "M/d (EEE) H:mm"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 766
    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ja"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 768
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v5

    .line 769
    .local v5, "startHrs":I
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v6

    .line 771
    .local v6, "startMins":I
    const/16 v10, 0xc

    if-ge v5, v10, :cond_d

    .line 772
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "M/d (EEE) "

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v5, :cond_b

    const-string v10, "0"

    :goto_6
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v10, 0xa

    if-ge v6, v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_7
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_6

    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_7

    .line 774
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "M/d (EEE) "

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v10, 0xc

    if-ne v5, v10, :cond_e

    const-string v10, "0"

    :goto_8
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v10, 0xa

    if-ge v6, v10, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_9
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v10, v5, -0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_8

    :cond_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_9

    .line 778
    .end local v5    # "startHrs":I
    .end local v6    # "startMins":I
    :cond_10
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v11, "M/d (EEE) a h:mm"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 782
    :cond_11
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 788
    .restart local v0    # "channel_Name":Ljava/lang/String;
    :cond_12
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView2:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 791
    :cond_13
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 808
    .restart local v4    # "programName":Ljava/lang/String;
    :cond_14
    iget-object v10, v9, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList$ViewHolder;->infoTextView1:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v10

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method
