.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;
.super Ljava/lang/Object;
.source "MmbStBmlAppLuncherSv.java"


# instance fields
.field protected mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 64
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 69
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public lunchBrowser(Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;)Z
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;

    .prologue
    .line 448
    const/4 v4, 0x0

    .line 449
    .local v4, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 450
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 453
    .local v2, "res":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 512
    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_0
    return v3

    .line 464
    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_0
    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbStartUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v2

    .line 471
    .restart local v3    # "res":I
    goto :goto_0

    .line 476
    .end local v3    # "res":I
    :cond_1
    :try_start_0
    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwBrowserReqInfo;->mmbStartUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 486
    if-nez v4, :cond_2

    move v3, v2

    .line 493
    .restart local v3    # "res":I
    goto :goto_0

    .line 477
    .end local v3    # "res":I
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move v3, v2

    .line 482
    .restart local v3    # "res":I
    goto :goto_0

    .line 497
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "res":I
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 500
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->onPrepareStartActivity(Landroid/content/Intent;)V

    .line 503
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 504
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 512
    .restart local v3    # "res":I
    goto :goto_0

    .line 505
    .end local v3    # "res":I
    :catch_1
    move-exception v0

    .line 506
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public lunchCall(Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;)Z
    .locals 7
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;

    .prologue
    const/4 v4, 0x0

    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, "res":Z
    const/4 v3, 0x0

    .line 244
    .local v3, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    if-nez p1, :cond_1

    move v4, v2

    .line 307
    :cond_0
    :goto_0
    return v4

    .line 258
    :cond_1
    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;->mmbPhoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwCallReqInfo;->mmbPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 280
    if-nez v3, :cond_2

    move v4, v2

    .line 287
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 295
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->onPrepareStartActivity(Landroid/content/Intent;)V

    .line 298
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    const/4 v2, 0x1

    :goto_1
    move v4, v2

    .line 307
    goto :goto_0

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public lunchMailer(Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;)Z
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 110
    .local v2, "res":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 156
    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_0
    return v3

    .line 121
    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_0
    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;->mmbAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    .line 128
    .restart local v3    # "res":I
    goto :goto_0

    .line 137
    .end local v3    # "res":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;->mmbAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    const-string v4, "android.intent.extra.SUBJECT"

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;->mmbSubject:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v4, "android.intent.extra.TEXT"

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwMailSendReqInfo;->mmbBody:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->onPrepareStartActivity(Landroid/content/Intent;)V

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 156
    .restart local v3    # "res":I
    goto :goto_0

    .line 150
    .end local v3    # "res":I
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public lunchPhoneBook(Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;)Z
    .locals 6
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 180
    .local v2, "res":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 225
    .end local v2    # "res":Z
    .local v3, "res":I
    :goto_0
    return v3

    .line 191
    .end local v3    # "res":I
    .restart local v2    # "res":Z
    :cond_0
    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbKana:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbMailAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    .line 201
    .restart local v3    # "res":I
    goto :goto_0

    .line 204
    .end local v3    # "res":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.INSERT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v4, "name"

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v4, "phonetic_name"

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbKana:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v4, "phone"

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v4, "email"

    iget-object v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPhoneBookReqInfo;->mmbMailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->onPrepareStartActivity(Landroid/content/Intent;)V

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 225
    .restart local v3    # "res":I
    goto :goto_0

    .line 219
    .end local v3    # "res":I
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public lunchScheduler(Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;)Z
    .locals 13
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;

    .prologue
    .line 326
    const/4 v10, 0x0

    .line 327
    .local v10, "res":Z
    const/16 v11, 0xc

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "EEE MMM d HH:mm:ss yyyy"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const-string v12, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v12, v3, v11

    const/4 v11, 0x3

    const-string v12, "yyyyMMddHHmm"

    aput-object v12, v3, v11

    const/4 v11, 0x4

    const-string v12, "yyyy/MM/dd HH:mm"

    aput-object v12, v3, v11

    const/4 v11, 0x5

    const-string v12, "yyyy-MM-dd HH:mm"

    aput-object v12, v3, v11

    const/4 v11, 0x6

    const-string v12, "yy/MM/dd HH:mm"

    aput-object v12, v3, v11

    const/4 v11, 0x7

    const-string v12, "yy-MM-dd HH:mm"

    aput-object v12, v3, v11

    const/16 v11, 0x8

    const-string v12, "yyyy/MM/dd"

    aput-object v12, v3, v11

    const/16 v11, 0x9

    const-string v12, "yyyy-MM-dd"

    aput-object v12, v3, v11

    const/16 v11, 0xa

    const-string v12, "yy/MM/dd"

    aput-object v12, v3, v11

    const/16 v11, 0xb

    const-string v12, "yy-MM-dd"

    aput-object v12, v3, v11

    .line 345
    .local v3, "dateformats":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 346
    .local v2, "date":Ljava/util/Date;
    const/4 v5, 0x0

    .line 347
    .local v5, "gmtcal":Ljava/util/Calendar;
    const/4 v9, 0x0

    .line 350
    .local v9, "loccal":Ljava/util/Calendar;
    if-nez p1, :cond_0

    move v11, v10

    .line 424
    :goto_0
    return v11

    .line 361
    :cond_0
    iget-object v11, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbDate:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 368
    const/4 v11, 0x0

    goto :goto_0

    .line 373
    :cond_1
    :try_start_0
    iget-object v11, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbDate:Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 384
    sget-object v11, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 385
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 386
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 387
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 388
    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 389
    const/4 v11, 0x5

    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/16 v11, 0xa

    const/16 v12, 0xb

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/16 v11, 0xc

    const/16 v12, 0xc

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/16 v11, 0xd

    const/16 v12, 0xd

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 393
    const/16 v11, 0xe

    const/16 v12, 0xe

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 394
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 395
    .local v0, "begintime":J
    move-wide v6, v0

    .line 398
    .local v6, "endtime":J
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.EDIT"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v8, "intent":Landroid/content/Intent;
    const-string v11, "vnd.android.cursor.item/event"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v11, "title"

    iget-object v12, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbTitle:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v11, "description"

    iget-object v12, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbBody:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v11, "beginTime"

    invoke-virtual {v8, v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    const-string v11, "endTime"

    invoke-virtual {v8, v11, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    iget-boolean v11, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwScheduleReqInfo;->mmbIsAlarm:Z

    if-eqz v11, :cond_2

    .line 405
    const-string v11, "hasAlarm"

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    :goto_1
    const/high16 v11, 0x10000000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->onPrepareStartActivity(Landroid/content/Intent;)V

    .line 415
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlAppLuncherSv;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    const/4 v10, 0x1

    :goto_2
    move v11, v10

    .line 424
    goto/16 :goto_0

    .line 374
    .end local v0    # "begintime":J
    .end local v6    # "endtime":J
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 375
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move v11, v10

    .line 379
    goto/16 :goto_0

    .line 407
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "begintime":J
    .restart local v6    # "endtime":J
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v11, "hasAlarm"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 417
    :catch_1
    move-exception v4

    .line 418
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onPrepareStartActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 89
    return-void
.end method
