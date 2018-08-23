.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;
.source "MmbFwMainServiceSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbFwBgmHandlerSv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0

    .prologue
    .line 2071
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwNotificationHandlerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    return-void
.end method


# virtual methods
.method protected cancelNotify()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 2283
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mNotificationId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_BROWSER_PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2286
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2287
    const-string v1, "[[Intent]:%s [Type]:%x]"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_BROWSER_PLAY"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2289
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 2323
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2290
    :cond_0
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mNotificationId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 2293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_REALTIME_PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2294
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2295
    const-string v1, "[[Intent]:%s [Type]:%x]"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_REALTIME_PLAY"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2297
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2298
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mNotificationId:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 2301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_MP4_PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2302
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2303
    const-string v1, "[[Intent]:%s [Type]:%x]"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_MP4_PLAY"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2305
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2306
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mNotificationId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 2309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_RECORDING_PLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2310
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2311
    const-string v1, "[[Intent]:%s [Type]:%x]"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_RECORDING_PLAY"

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2313
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2315
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v1, "mNotificationId[%x]"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mNotificationId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected getFlags()I
    .locals 1

    .prologue
    .line 2111
    const/16 v0, 0x22

    return v0
.end method

.method protected getIconId(I)I
    .locals 1
    .param p1, "aSubId"    # I

    .prologue
    .line 2119
    const v0, 0x7f020005

    .line 2123
    .local v0, "result":I
    return v0
.end method

.method protected getText(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aValue"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    .line 2162
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2163
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f040012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method protected getTitle(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "aValue"    # I
    .param p2, "aText"    # Ljava/lang/String;

    .prologue
    .line 2140
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2141
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x7f040011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public declared-synchronized hideNotify(I)V
    .locals 1
    .param p1, "aSubId"    # I

    .prologue
    .line 2189
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mShowBits:I

    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->cancelNotify()V

    .line 2191
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mShowBits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2199
    :cond_0
    monitor-exit p0

    return-void

    .line 2189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected invokeNotify()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2217
    const/4 v2, 0x0

    .line 2218
    .local v2, "subId":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 2219
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mShowBits:I

    shr-int/2addr v3, v2

    if-ne v3, v6, :cond_1

    .line 2224
    :cond_0
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mNotificationId:I

    shl-int/lit8 v3, v3, 0x10

    or-int v1, v3, v2

    .line 2229
    .local v1, "notifyType":I
    const v3, 0x30001

    if-ne v1, v3, :cond_2

    .line 2230
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_BROWSER_PLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2231
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2232
    const-string v3, "[[Intent]:%s [Type]:%x]"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_BROWSER_PLAY"

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2234
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 2263
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2218
    .end local v1    # "notifyType":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2235
    .restart local v1    # "notifyType":I
    :cond_2
    const/high16 v3, 0x70000

    if-ne v1, v3, :cond_3

    .line 2236
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_REALTIME_PLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2237
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2238
    const-string v3, "[[Intent]:%s [Type]:%x]"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_REALTIME_PLAY"

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2240
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2241
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v3, 0x80000

    if-ne v1, v3, :cond_4

    .line 2242
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_MP4_PLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2243
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2244
    const-string v3, "[[Intent]:%s [Type]:%x]"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_MP4_PLAY"

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2246
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2247
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const/high16 v3, 0x90000

    if-ne v1, v3, :cond_5

    .line 2248
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_RECORDING_PLAY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2249
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2250
    const-string v3, "[[Intent]:%s [Type]:%x]"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_RECORDING_PLAY"

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2252
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 2254
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v3, "mShowBits[%x] mNotificationId[%x] subId[%x] notifyType[%x]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mShowBits:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv$MmbFwBgmHandlerSv;->mNotificationId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
