.class Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MtvUiRemoveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;


# direct methods
.method public constructor <init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rsrcID"    # I

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    .line 1226
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1227
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    array-length v0, v0

    .line 1238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1243
    move-object v7, p2

    .line 1245
    .local v7, "v":Landroid/view/View;
    if-nez v7, :cond_0

    .line 1246
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1247
    .local v8, "vi":Landroid/view/LayoutInflater;
    const v9, 0x7f030038

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1250
    .end local v8    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    const v9, 0x7f0a0135

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-static {v10, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2202(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1251
    iget-object v10, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    const v9, 0x7f0a0136

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-static {v10, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2302(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1256
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v9

    aget-object v1, v9, p1

    .line 1257
    .local v1, "file":Lcom/samsung/sec/mtv/provider/MtvFile;
    if-eqz v1, :cond_5

    .line 1258
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1260
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1263
    const v9, 0x7f0a013a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1264
    .local v2, "infoTextView1":Landroid/widget/TextView;
    const v9, 0x7f0a013b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1265
    .local v3, "infoTextView2":Landroid/widget/TextView;
    const v9, 0x7f0a013c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1267
    .local v4, "infoTextView3":Landroid/widget/TextView;
    const v9, 0x7f0a013d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1268
    .local v0, "check":Landroid/widget/CheckBox;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1269
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1300(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Z

    move-result-object v9

    aget-boolean v9, v9, p1

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1271
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1272
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1287
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "No Program Name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07028a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1289
    .local v5, "programName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1293
    const/4 v6, 0x0

    .line 1294
    .local v6, "strDate":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1295
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "M/d (EEE) H:mm"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1299
    :goto_1
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 1301
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1310
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v9, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2400(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;Lcom/samsung/sec/mtv/provider/MtvFile;)V

    .line 1316
    .end local v0    # "check":Landroid/widget/CheckBox;
    .end local v2    # "infoTextView1":Landroid/widget/TextView;
    .end local v3    # "infoTextView2":Landroid/widget/TextView;
    .end local v4    # "infoTextView3":Landroid/widget/TextView;
    .end local v5    # "programName":Ljava/lang/String;
    .end local v6    # "strDate":Ljava/lang/String;
    :goto_3
    return-object v7

    .line 1287
    .restart local v0    # "check":Landroid/widget/CheckBox;
    .restart local v2    # "infoTextView1":Landroid/widget/TextView;
    .restart local v3    # "infoTextView2":Landroid/widget/TextView;
    .restart local v4    # "infoTextView3":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1297
    .restart local v5    # "programName":Ljava/lang/String;
    .restart local v6    # "strDate":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "M/d (EEE) h:mm a"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1305
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1312
    .end local v0    # "check":Landroid/widget/CheckBox;
    .end local v2    # "infoTextView1":Landroid/widget/TextView;
    .end local v3    # "infoTextView2":Landroid/widget/TextView;
    .end local v4    # "infoTextView3":Landroid/widget/TextView;
    .end local v5    # "programName":Ljava/lang/String;
    .end local v6    # "strDate":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1700(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1314
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3
.end method

.method public setChecked(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isChecked"    # Z

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1330
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1331
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->notifyDataSetChanged()V

    .line 1332
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1333
    return-void
.end method

.method public toggle(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1320
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1900(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1321
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1, p1, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$2000(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;IZ)V

    .line 1322
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$800(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1323
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->notifyDataSetChanged()V

    .line 1324
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList$MtvFileAdapter;->this$0:Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->access$1100(Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiRemoveList;->checkItemCount(I)V

    .line 1325
    return-void

    .line 1320
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
