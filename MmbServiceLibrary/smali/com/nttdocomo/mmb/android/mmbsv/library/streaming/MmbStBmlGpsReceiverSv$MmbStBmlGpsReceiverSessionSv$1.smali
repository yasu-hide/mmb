.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;
.super Ljava/lang/Object;
.source "MmbStBmlGpsReceiverSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->start(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "locationmanager":Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "locationmanager":Landroid/location/LocationManager;
    check-cast v0, Landroid/location/LocationManager;

    .line 364
    .restart local v0    # "locationmanager":Landroid/location/LocationManager;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 367
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mLooperHandler:Landroid/os/Handler;

    .line 370
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mPosInfo:I

    packed-switch v1, :pswitch_data_0

    .line 403
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 416
    :goto_1
    return-void

    .line 375
    :pswitch_0
    :try_start_1
    const-string v1, "gps"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v6

    .line 382
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 389
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 394
    :catch_1
    move-exception v6

    .line 396
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 408
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 410
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
