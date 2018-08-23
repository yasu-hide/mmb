.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;
.source "MmbCaCasDrmNwPfServerControlSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V
    .locals 0
    .param p1, "aClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p2, "aTime"    # J

    .prologue
    .line 126
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientBaseSv;-><init>(Lorg/apache/http/impl/client/DefaultHttpClient;J)V

    .line 133
    return-void
.end method

.method private checkErrorInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;)V
    .locals 4
    .param p1, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<TT;>.MmbCaCasDrmNwResponseData;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>;"
    .local p2, "aResponseData":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>.MmbCaCasDrmNwResponseData;"
    const/4 v2, 0x0

    .line 404
    .local v2, "text":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 405
    .local v0, "eventtype":I
    :goto_0
    const/4 v3, 0x1

    if-eq v3, v0, :cond_1

    .line 406
    packed-switch v0, :pswitch_data_0

    .line 431
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 408
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "errorInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;)V

    iput-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    goto :goto_1

    .line 414
    .end local v1    # "tag":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 415
    .restart local v1    # "tag":Ljava/lang/String;
    const-string v3, "errorInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    return-void

    .line 417
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_2
    const-string v3, "returnCode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 418
    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iput-object v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->returnCode:Ljava/lang/String;

    goto :goto_1

    .line 419
    :cond_3
    const-string v3, "errorDetail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 420
    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->errorInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;

    iput-object v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwErrorInfo;->errorDetail:Ljava/lang/String;

    goto :goto_1

    .line 422
    :cond_4
    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->checkErrorTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 426
    .end local v1    # "tag":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 427
    goto :goto_1

    .line 406
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkRoot(Lorg/xmlpull/v1/XmlPullParser;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;)V
    .locals 4
    .param p1, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<TT;>.MmbCaCasDrmNwResponseData;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>;"
    .local p2, "aResponseData":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>.MmbCaCasDrmNwResponseData;"
    const/4 v2, 0x0

    .line 272
    .local v2, "text":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 273
    .local v0, "eventtype":I
    :goto_0
    const/4 v3, 0x1

    if-eq v3, v0, :cond_6

    .line 274
    packed-switch v0, :pswitch_data_0

    .line 309
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "responseData"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    if-nez p2, :cond_0

    .line 283
    new-instance p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;

    .end local p2    # "aResponseData":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>.MmbCaCasDrmNwResponseData;"
    invoke-direct {p2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;)V

    .restart local p2    # "aResponseData":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>.MmbCaCasDrmNwResponseData;"
    goto :goto_1

    .line 285
    :cond_1
    const-string v3, "semiNormalInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->checkSemiNormalInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;)V

    goto :goto_1

    .line 287
    :cond_2
    const-string v3, "errorInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->checkErrorInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;)V

    goto :goto_1

    .line 292
    .end local v1    # "tag":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 293
    .restart local v1    # "tag":Ljava/lang/String;
    const-string v3, "intrfcId"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    iput-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->intrfcId:Ljava/lang/String;

    goto :goto_1

    .line 295
    :cond_3
    const-string v3, "requestClass"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 296
    iput-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->requestClass:Ljava/lang/String;

    goto :goto_1

    .line 297
    :cond_4
    const-string v3, "dispslResult"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 298
    iput-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->dispslResult:Ljava/lang/String;

    goto :goto_1

    .line 300
    :cond_5
    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->checkRootTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 304
    .end local v1    # "tag":Ljava/lang/String;
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 305
    goto :goto_1

    .line 314
    :cond_6
    return-void

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkSemiNormalInfo(Lorg/xmlpull/v1/XmlPullParser;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;)V
    .locals 4
    .param p1, "aParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<TT;>.MmbCaCasDrmNwResponseData;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>;"
    .local p2, "aResponseData":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>.MmbCaCasDrmNwResponseData;"
    const/4 v2, 0x0

    .line 343
    .local v2, "text":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 344
    .local v0, "eventtype":I
    :goto_0
    const/4 v3, 0x1

    if-eq v3, v0, :cond_1

    .line 345
    packed-switch v0, :pswitch_data_0

    .line 370
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 347
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "semiNormalInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;)V

    iput-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    goto :goto_1

    .line 353
    .end local v1    # "tag":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 354
    .restart local v1    # "tag":Ljava/lang/String;
    const-string v3, "semiNormalInfo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    return-void

    .line 356
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_2
    const-string v3, "returnCode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 357
    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iput-object v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->returnCode:Ljava/lang/String;

    goto :goto_1

    .line 358
    :cond_3
    const-string v3, "errorDetail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    iget-object v3, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;->semiNormalInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;

    iput-object v2, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwSemiNormalInfo;->errorDetail:Ljava/lang/String;

    goto :goto_1

    .line 361
    :cond_4
    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->checkSemiNormalTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 365
    .end local v1    # "tag":Ljava/lang/String;
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 366
    goto :goto_1

    .line 345
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method abstract checkErrorTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<TT;>.MmbCaCasDrmNwResponseData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation
.end method

.method checkResponseData(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;[B)V
    .locals 11
    .param p2, "aResponse"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<TT;>.MmbCaCasDrmNwResponseData;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>;"
    .local p1, "aResponsedata":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv<TT;>.MmbCaCasDrmNwResponseData;"
    const v10, -0x200000a

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 210
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 211
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 212
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 213
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/StringReader;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 214
    invoke-direct {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv;->checkRoot(Lorg/xmlpull/v1/XmlPullParser;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 244
    return-void

    .line 215
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 220
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Encoding error. <%s> (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "UTF-8"

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    throw v1

    .line 223
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    invoke-direct {v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 228
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Response XML parse error. (%s)"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    throw v1

    .line 230
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    :catch_2
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;

    const v4, -0x2000008

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;-><init>(I)V

    .line 235
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;
    const-string v4, "[%d] Response XML IO error. (%s)"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwClientProtocolException;->mmbErrorCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    throw v1
.end method

.method abstract checkRootTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<TT;>.MmbCaCasDrmNwResponseData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation
.end method

.method abstract checkSemiNormalTag(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv$MmbCaCasDrmNwResponseData;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwPfServerControlSv",
            "<TT;>.MmbCaCasDrmNwResponseData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation
.end method
