.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setCompleteEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V
    .locals 0

    .prologue
    .line 2019
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 13
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    const/4 v12, 0x0

    .line 2027
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getRoundPlaying()Z

    move-result v6

    .line 2029
    .local v6, "blnresult":Z
    if-nez v6, :cond_0

    .line 2033
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setAudioMuteOff()V

    .line 2034
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V

    .line 2047
    :cond_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2050
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 2053
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFileDuration()I

    move-result v9

    .line 2059
    .local v9, "intmsec":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getSequenceLabel(I)I

    move-result v10

    .line 2068
    .local v10, "intresid":I
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2078
    .local v2, "lngtime":J
    const/16 v1, 0x66

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 2086
    if-eqz v6, :cond_2

    .line 2088
    const/4 v7, 0x4

    .line 2091
    .local v7, "code":I
    sget-object v11, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 2097
    .local v11, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getSequenceLabel(I)I

    move-result v10

    .line 2106
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2116
    const/16 v1, 0x65

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 2133
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$1;

    invoke-direct {v4, p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2152
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    .line 2194
    .end local v0    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v2    # "lngtime":J
    .end local v6    # "blnresult":Z
    .end local v7    # "code":I
    .end local v9    # "intmsec":I
    .end local v10    # "intresid":I
    .end local v11    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    :cond_1
    :goto_1
    return-void

    .line 2124
    .restart local v0    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .restart local v2    # "lngtime":J
    .restart local v6    # "blnresult":Z
    .restart local v9    # "intmsec":I
    .restart local v10    # "intresid":I
    :cond_2
    const/4 v7, 0x3

    .line 2127
    .restart local v7    # "code":I
    sget-object v11, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 2130
    .restart local v11    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->handlerPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2188
    .end local v0    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v2    # "lngtime":J
    .end local v6    # "blnresult":Z
    .end local v7    # "code":I
    .end local v9    # "intmsec":I
    .end local v10    # "intresid":I
    .end local v11    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    :catch_0
    move-exception v8

    .line 2189
    .local v8, "ex":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v12

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2154
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v6    # "blnresult":Z
    :cond_3
    :try_start_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->FASTFORWARD:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2156
    if-eqz v6, :cond_4

    .line 2158
    const/4 v7, 0x4

    .line 2159
    .restart local v7    # "code":I
    sget-object v11, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->FASTFORWARD:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .line 2165
    .restart local v11    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    :goto_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$2;

    invoke-direct {v4, p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;I)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2184
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->transit(Ljava/lang/Object;)V

    goto :goto_1

    .line 2162
    .end local v7    # "code":I
    .end local v11    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    :cond_4
    const/4 v7, 0x3

    .line 2163
    .restart local v7    # "code":I
    sget-object v11, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    .restart local v11    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    goto :goto_2

    .line 2185
    .end local v7    # "code":I
    .end local v11    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;
    :cond_5
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PLAYBACKGROUND:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2186
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$5;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-static {v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
