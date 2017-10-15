.class public Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiRemoveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReserveAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICON_FAIL:I = 0x1

.field private static final ICON_NORMAL:I


# instance fields
.field private check:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private final mIcon:[[Landroid/graphics/drawable/Drawable;

.field private startTime:Ljava/lang/Long;

.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rsrcID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 932
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .line 933
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 928
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    .line 934
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mContext:Landroid/content/Context;

    .line 936
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 937
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 938
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 939
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 940
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 943
    move-object v4, p2

    .line 944
    .local v4, "v":Landroid/view/View;
    const/4 v3, 0x0

    .line 945
    .local v3, "strDate":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 947
    .local v5, "vi":Landroid/view/LayoutInflater;
    const v6, 0x7f030034

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 950
    .end local v5    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1600(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->startTime:Ljava/lang/Long;

    .line 952
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->startTime:Ljava/lang/Long;

    if-eqz v6, :cond_4

    .line 953
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/CheckBox;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 957
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->startTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v7, 0x0

    new-array v7, v7, [Z

    invoke-static {v6, v8, v9, v7}, Lcom/samsung/sec/mtv/provider/MtvReservationManager;->find(Landroid/content/Context;J[Z)Lcom/samsung/sec/mtv/provider/MtvReservation;

    move-result-object v2

    .line 958
    .local v2, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    if-eqz v2, :cond_1

    .line 959
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 960
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "M/d H:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    iget-wide v10, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "H:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    iget-wide v10, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 971
    :goto_0
    const-string v1, ""

    .line 972
    .local v1, "channelName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    iget v8, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-static {v6, v7, v8}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 973
    .local v0, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_3

    .line 974
    iget-object v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 981
    :goto_1
    const v6, 0x7f0a012d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    const v6, 0x7f0a012c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    const v6, 0x7f0a0074

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->mIcon:[[Landroid/graphics/drawable/Drawable;

    iget v8, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    aget-object v7, v7, v8

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->selectStatusIconIndex(Lcom/samsung/sec/mtv/provider/MtvReservation;)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 990
    .end local v0    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v1    # "channelName":Ljava/lang/String;
    :cond_1
    const v6, 0x7f0a006a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a012e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->check:Landroid/widget/CheckBox;

    .line 991
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->check:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 992
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->check:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v7

    aget-boolean v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 994
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->check:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 995
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->check:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1001
    .end local v2    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :goto_2
    return-object v4

    .line 963
    .restart local v2    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "M/d h:mm a"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    iget-wide v10, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mm a"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    iget-wide v10, v2, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 978
    .restart local v0    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .restart local v1    # "channelName":Ljava/lang/String;
    :cond_3
    const-string v6, "MtvUiRemoveList"

    const-string v7, "channel is null"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 997
    .end local v0    # "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v1    # "channelName":Ljava/lang/String;
    .end local v2    # "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    :cond_4
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 999
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/CheckBox;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public selectStatusIconIndex(Lcom/samsung/sec/mtv/provider/MtvReservation;)I
    .locals 6
    .param p1, "reservation"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    .line 1005
    const/4 v0, -0x1

    .line 1006
    .local v0, "returnIconIndex":I
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1007
    const/4 v0, 0x1

    .line 1012
    :goto_0
    return v0

    .line 1008
    :cond_0
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1009
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1011
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setChecked(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1026
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1027
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->notifyDataSetChanged()V

    .line 1028
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Ljava/lang/Long;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1029
    return-void
.end method

.method public toggle(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1900(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1017
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1018
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1019
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->notifyDataSetChanged()V

    .line 1020
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$ReserveAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Ljava/lang/Long;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1021
    return-void

    .line 1016
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
