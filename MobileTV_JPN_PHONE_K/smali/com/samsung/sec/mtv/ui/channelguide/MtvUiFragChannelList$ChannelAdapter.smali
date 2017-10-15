.class Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;
.super Landroid/widget/CursorAdapter;
.source "MtvUiFragChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .line 1312
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1313
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->mContext:Landroid/content/Context;

    .line 1314
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1318
    invoke-static {p3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->builder(Landroid/database/Cursor;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v3

    .line 1319
    .local v3, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1320
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bindView channel="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const/4 v7, 0x0

    .line 1363
    .local v7, "virtualNum":Ljava/lang/String;
    const v8, 0x7f0a006f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1364
    .local v2, "chNum":Landroid/widget/TextView;
    const v8, 0x7f0a006e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1365
    .local v1, "chName":Landroid/widget/TextView;
    const v8, 0x7f0a0070

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1367
    .local v0, "chMultiChNo":Landroid/widget/TextView;
    const-string v8, "  "

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    const/4 v5, 0x0

    .line 1371
    .local v5, "multiChannelNo":I
    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-eqz v8, :cond_2

    .line 1372
    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    .line 1373
    const/16 v8, 0x63

    if-ge v5, v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1380
    :goto_1
    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 1383
    if-eqz v5, :cond_0

    rem-int/lit8 v8, v5, 0xa

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1384
    :cond_0
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1396
    :goto_2
    iget-object v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1407
    const/16 v8, -0x100

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1408
    const/16 v8, -0x100

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1410
    const-string v8, "#969696"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1419
    :goto_3
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v4

    .line 1420
    .local v4, "last_ch":I
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->this$0:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    invoke-static {v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannelMultiChannel()I

    move-result v6

    .line 1422
    .local v6, "selected_multiChannelNo":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_5

    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    if-ne v8, v4, :cond_5

    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ne v8, v6, :cond_5

    .line 1423
    invoke-static {}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current: vch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", select: pch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    const v8, 0x7f0a006d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020100

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1428
    :goto_4
    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v9, 0x1

    if-ge v8, v9, :cond_6

    .line 1429
    const v8, 0x7f0a006d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200fc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1430
    const v8, 0x7f0a006d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x7f

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1433
    const-string v8, "#6b6b6b"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1434
    const-string v8, "#6b6b6b"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1435
    const-string v8, "#969696"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1452
    :goto_5
    return-void

    .line 1373
    .end local v4    # "last_ch":I
    .end local v6    # "selected_multiChannelNo":I
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 1377
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1387
    :cond_3
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1413
    :cond_4
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1414
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1416
    const-string v8, "#969696"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 1427
    .restart local v4    # "last_ch":I
    .restart local v6    # "selected_multiChannelNo":I
    :cond_5
    const v8, 0x7f0a006d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1437
    :cond_6
    iget v8, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mAvailable:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1438
    const/16 v8, -0x100

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1439
    const/16 v8, -0x100

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1441
    const-string v8, "#969696"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 1446
    :cond_7
    const-string v8, "#f5f5f5"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1447
    const-string v8, "#f5f5f5"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1448
    const-string v8, "#969696"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1467
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1456
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
