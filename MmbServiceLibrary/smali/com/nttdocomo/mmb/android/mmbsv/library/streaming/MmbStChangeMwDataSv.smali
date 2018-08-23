.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;
.super Ljava/lang/Object;
.source "MmbStChangeMwDataSv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static changeMwAspectRatio(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 180
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 191
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 198
    :goto_0
    return v0

    .line 183
    :pswitch_0
    const/4 v0, 0x0

    .line 184
    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v0, 0x1

    .line 188
    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static changeMwAudioComponentTag(S)S
    .locals 3
    .param p0, "aMwData"    # S

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "result":S
    packed-switch p0, :pswitch_data_0

    .line 496
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 503
    :goto_0
    return v0

    .line 488
    :pswitch_0
    const/4 v0, 0x0

    .line 489
    goto :goto_0

    .line 492
    :pswitch_1
    const/4 v0, 0x1

    .line 493
    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static changeMwAudioInfo(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 281
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 288
    :goto_0
    return v0

    .line 265
    :pswitch_0
    const/4 v0, 0x2

    .line 266
    goto :goto_0

    .line 269
    :pswitch_1
    const/4 v0, 0x1

    .line 270
    goto :goto_0

    .line 273
    :pswitch_2
    const/4 v0, 0x0

    .line 274
    goto :goto_0

    .line 277
    :pswitch_3
    const/4 v0, 0x3

    .line 278
    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected static changeMwCaptionAlign(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 403
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 410
    :goto_0
    return v0

    .line 395
    :pswitch_0
    const/4 v0, 0x0

    .line 396
    goto :goto_0

    .line 399
    :pswitch_1
    const/4 v0, 0x1

    .line 400
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static changeMwCaptionDisp(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 362
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 369
    :goto_0
    return v0

    .line 354
    :sswitch_0
    const/4 v0, 0x1

    .line 355
    goto :goto_0

    .line 358
    :sswitch_1
    const/4 v0, 0x0

    .line 359
    goto :goto_0

    .line 351
    :sswitch_data_0
    .sparse-switch
        0xc04 -> :sswitch_0
        0x1003 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static changeMwCaptionIndex(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 321
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 328
    :goto_0
    return v0

    .line 313
    :sswitch_0
    const/4 v0, 0x0

    .line 314
    goto :goto_0

    .line 317
    :sswitch_1
    const/4 v0, 0x1

    .line 318
    goto :goto_0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static changeMwErrorCode(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    const/4 v2, 0x0

    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 458
    const-string v1, "error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 465
    :goto_0
    return v0

    .line 435
    :sswitch_0
    const/4 v0, 0x0

    .line 436
    goto :goto_0

    .line 439
    :sswitch_1
    const/4 v0, 0x1

    .line 440
    goto :goto_0

    .line 443
    :sswitch_2
    const/16 v0, -0x15

    .line 444
    goto :goto_0

    .line 449
    :sswitch_3
    const-string v1, "Fatal error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwFatalException()V

    goto :goto_0

    .line 454
    :sswitch_4
    const/4 v0, 0x2

    .line 455
    goto :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        -0x2001 -> :sswitch_2
        -0x1481 -> :sswitch_1
        -0x1441 -> :sswitch_3
        -0x1081 -> :sswitch_0
        -0x1041 -> :sswitch_3
        -0x5 -> :sswitch_4
        -0x2 -> :sswitch_3
    .end sparse-switch
.end method

.method protected static changeMwServiceStatus(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 150
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 157
    :goto_0
    return v0

    .line 126
    :pswitch_0
    const/4 v0, 0x0

    .line 127
    goto :goto_0

    .line 130
    :pswitch_1
    const/4 v0, 0x1

    .line 131
    goto :goto_0

    .line 134
    :pswitch_2
    const/4 v0, 0x2

    .line 135
    goto :goto_0

    .line 138
    :pswitch_3
    const/4 v0, 0x3

    .line 139
    goto :goto_0

    .line 142
    :pswitch_4
    const/4 v0, 0x4

    .line 143
    goto :goto_0

    .line 146
    :pswitch_5
    const/4 v0, 0x5

    .line 147
    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected static changeMwStereoType(I)I
    .locals 3
    .param p0, "aStereoType"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 232
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 239
    :goto_0
    return v0

    .line 224
    :pswitch_0
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->H264_STEREOVIEW_TYPE_2D:I

    .line 225
    goto :goto_0

    .line 228
    :pswitch_1
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->H264_STEREOVIEW_TYPE_3D:I

    .line 229
    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static changeMwViewStatus(I)I
    .locals 3
    .param p0, "aMwData"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_0

    .line 93
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 100
    :goto_0
    return v0

    .line 57
    :sswitch_0
    const/4 v0, 0x0

    .line 58
    goto :goto_0

    .line 61
    :sswitch_1
    const/4 v0, 0x1

    .line 62
    goto :goto_0

    .line 65
    :sswitch_2
    const/4 v0, 0x2

    .line 66
    goto :goto_0

    .line 69
    :sswitch_3
    const/4 v0, 0x3

    .line 70
    goto :goto_0

    .line 73
    :sswitch_4
    const/4 v0, 0x4

    .line 74
    goto :goto_0

    .line 77
    :sswitch_5
    const/4 v0, 0x5

    .line 78
    goto :goto_0

    .line 81
    :sswitch_6
    const/4 v0, 0x6

    .line 82
    goto :goto_0

    .line 85
    :sswitch_7
    const/4 v0, 0x7

    .line 86
    goto :goto_0

    .line 89
    :sswitch_8
    const/16 v0, 0x8

    .line 90
    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method protected static changeSvAudioDualMode(I)I
    .locals 3
    .param p0, "aSvData"    # I

    .prologue
    .line 648
    const/4 v0, 0x0

    .line 650
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 665
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 672
    :goto_0
    return v0

    .line 653
    :pswitch_0
    const/4 v0, 0x0

    .line 654
    goto :goto_0

    .line 657
    :pswitch_1
    const/4 v0, 0x1

    .line 658
    goto :goto_0

    .line 661
    :pswitch_2
    const/4 v0, 0x2

    .line 662
    goto :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static changeSvAudioLanguage(I)I
    .locals 3
    .param p0, "aSvData"    # I

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 695
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 706
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 713
    :goto_0
    return v0

    .line 698
    :pswitch_0
    const/16 v0, 0x10

    .line 699
    goto :goto_0

    .line 702
    :pswitch_1
    const/16 v0, 0x11

    .line 703
    goto :goto_0

    .line 695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static changeSvCaptionAlign(I)I
    .locals 3
    .param p0, "aSvData"    # I

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 619
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 627
    :goto_0
    return v0

    .line 611
    :pswitch_0
    const/4 v0, 0x0

    .line 612
    goto :goto_0

    .line 615
    :pswitch_1
    const/4 v0, 0x1

    .line 616
    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static changeSvCaptionDisp(I)I
    .locals 3
    .param p0, "aSvData"    # I

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 567
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 578
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 585
    :goto_0
    return v0

    .line 570
    :pswitch_0
    const/16 v0, 0xc04

    .line 571
    goto :goto_0

    .line 574
    :pswitch_1
    const/16 v0, 0x1003

    .line 575
    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static changeSvCaptionIndex(I)I
    .locals 3
    .param p0, "aSvData"    # I

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 537
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 544
    :goto_0
    return v0

    .line 529
    :pswitch_0
    const/16 v0, 0x30

    .line 530
    goto :goto_0

    .line 533
    :pswitch_1
    const/16 v0, 0x38

    .line 534
    goto :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static changeSvCaptionLanguage(I)I
    .locals 3
    .param p0, "aSvData"    # I

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 736
    .local v0, "result":I
    packed-switch p0, :pswitch_data_0

    .line 747
    const-string v1, "error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStChangeMwDataSv;->throwParameterException()V

    .line 754
    :goto_0
    return v0

    .line 739
    :pswitch_0
    const/4 v0, 0x1

    .line 740
    goto :goto_0

    .line 743
    :pswitch_1
    const/4 v0, 0x2

    .line 744
    goto :goto_0

    .line 736
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static throwFatalException()V
    .locals 2

    .prologue
    .line 796
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v1, -0x12

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method private static throwParameterException()V
    .locals 2

    .prologue
    .line 775
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method
