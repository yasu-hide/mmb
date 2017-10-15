.class public Landroid/broadcast/sdtv/SDtvRecEngineControl;
.super Ljava/lang/Object;
.source "SDtvRecEngineControl.java"


# static fields
.field public static final CMD_CAPTURE_FRAME:I = 0x50b

.field public static final CMD_REC_CLOSE:I = 0x50a

.field public static final CMD_REC_OPEN:I = 0x507

.field public static final CMD_REC_START:I = 0x508

.field public static final CMD_REC_STOP:I = 0x509

.field public static final NATIVECB_STAT_CAPTURE_FRAME_FAILURE:I = 0x8

.field public static final NATIVECB_STAT_CAPTURE_FRAME_SUCCESS:I = 0x7

.field public static final NATIVECB_STAT_NO_SPACE:I = -0x2

.field public static final NATIVECB_STAT_UNKNOWN:I = -0x3

.field private static final ONESEG_CALLBACK_EIT_RECV:I = 0xb

.field private static final ONESEG_CALLBACK_NIT_RECV:I = 0xa

.field private static final ONESEG_CALLBACK_PLAYBACK_ENDOFCLIP:I = 0x7

.field private static final ONESEG_CALLBACK_PLAYBACK_FAILED:I = 0x6

.field private static final ONESEG_CALLBACK_PLAYBACK_UNKNOWN:I = 0x5

.field private static final ONESEG_CALLBACK_PMT_RECV:I = 0x9

.field private static final ONESEG_CALLBACK_REC_FAILED:I = 0x3

.field private static final ONESEG_CALLBACK_REC_NO_SPACE:I = 0x4

.field private static final ONESEG_CALLBACK_REC_START_SUCCESS:I = 0x0

.field private static final ONESEG_CALLBACK_REC_STOP_SUCCESS:I = 0x1

.field private static final ONESEG_CALLBACK_REC_UNKNOWN:I = 0x2

.field private static final ONESEG_REC_FRAME_CAPTURE_SUCCESS:I = 0x8

.field public static final PRSR_CB_STAT_EIT_RCV:I = 0x603

.field public static final PRSR_CB_STAT_NIT_RCV:I = 0x602

.field public static final PRSR_CB_STAT_PMT_RCV:I = 0x601

.field private static final TAG:Ljava/lang/String; = "SDtvRecEngineControl"

.field private static audioPid:I

.field private static channelNum:I

.field private static channelServiceID:I

.field private static chnName:Ljava/lang/String;

.field private static mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field private static mRecThumbnailName:Ljava/lang/String;

.field private static mRemoteServiceHandler:Landroid/os/Handler;

.field private static mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

.field private static path:Ljava/lang/String;

.field private static playerType:I

.field private static progName:Ljava/lang/String;

.field private static recLoc:I

.field private static recMode:I

.field private static videoPid:I


# instance fields
.field private bufferingEventCount:I

.field private mIsBuffering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 53
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    .line 55
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    .line 57
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    sput-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 59
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRecThumbnailName:Ljava/lang/String;

    .line 61
    sput v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->playerType:I

    .line 63
    sput v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->channelNum:I

    .line 67
    sput v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recMode:I

    .line 71
    sput v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recLoc:I

    .line 73
    sput v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->videoPid:I

    .line 75
    sput v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->audioPid:I

    .line 77
    sput v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->channelServiceID:I

    .line 79
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->progName:Ljava/lang/String;

    .line 81
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->chnName:Ljava/lang/String;

    .line 83
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->path:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->bufferingEventCount:I

    .line 86
    iput-boolean v0, p0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mIsBuffering:Z

    .line 171
    const-string v0, "SDtvRecEngineControl"

    const-string v1, "Successfully Instantiated Constructor"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private ParseRecURI(Ljava/lang/String;)V
    .locals 10
    .param p1, "recURI"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, "count":I
    const/4 v5, 0x0

    .line 393
    .local v5, "temp":Ljava/util/StringTokenizer;
    const-string v7, "SDtvRecEngineControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Entered  ParseRecURI recURI ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, "tokens":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 398
    .local v4, "splitStr":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 400
    packed-switch v1, :pswitch_data_0

    .line 461
    :pswitch_0
    const-string v7, "SDtvRecEngineControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No Need to Parse these contents  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :pswitch_1
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "temp":Ljava/util/StringTokenizer;
    const-string v7, "?"

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .restart local v5    # "temp":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->path:Ljava/lang/String;

    .line 407
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "temp":Ljava/util/StringTokenizer;
    const-string v7, "="

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .restart local v5    # "temp":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 409
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recMode:I

    .line 411
    sget v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 417
    const/4 v7, 0x0

    sput v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recMode:I

    goto :goto_1

    .line 426
    :pswitch_2
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "temp":Ljava/util/StringTokenizer;
    const-string v7, "="

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .restart local v5    # "temp":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 428
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->chnName:Ljava/lang/String;

    goto :goto_1

    .line 436
    :pswitch_3
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "temp":Ljava/util/StringTokenizer;
    const-string v7, "="

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .restart local v5    # "temp":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 438
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->progName:Ljava/lang/String;

    goto :goto_1

    .line 445
    :pswitch_4
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "temp":Ljava/util/StringTokenizer;
    const-string v7, "="

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .restart local v5    # "temp":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 447
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recLoc:I

    goto :goto_1

    .line 454
    :pswitch_5
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "temp":Ljava/util/StringTokenizer;
    const-string v7, "="

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .restart local v5    # "temp":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 456
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/broadcast/sdtv/SDtvRecEngineControl;->channelServiceID:I

    goto :goto_1

    .line 469
    .end local v4    # "splitStr":Ljava/lang/String;
    :cond_1
    const-string v7, "SDtvRecEngineControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " RecLoc ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recLoc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] recMode ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] path["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/broadcast/sdtv/SDtvRecEngineControl;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v7, "SDtvRecEngineControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " progName ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/broadcast/sdtv/SDtvRecEngineControl;->progName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] chnName ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/broadcast/sdtv/SDtvRecEngineControl;->chnName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] channelServiceID ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/broadcast/sdtv/SDtvRecEngineControl;->channelServiceID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static PostRecServiceCBFromNative(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 9
    .param p0, "OneSegServRef"    # Ljava/lang/Object;
    .param p1, "iCmd"    # I
    .param p2, "istatus"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x508

    const/4 v7, 0x0

    const/16 v6, 0x507

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 542
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered PostRecServiceCBFromNative() iCmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sparse-switch p1, :sswitch_data_0

    .line 675
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Invalid Command,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :goto_0
    :sswitch_0
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "Exiting PostRecServiceCBFromNative()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void

    .line 547
    :sswitch_1
    sparse-switch p2, :sswitch_data_1

    .line 582
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring in Open Invalid Command,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :sswitch_2
    const/4 v1, 0x7

    invoke-static {v6, v1, v4, p3}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 556
    :sswitch_3
    invoke-static {v6, v5, v4, p3}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 561
    :sswitch_4
    const/4 v1, -0x4

    invoke-static {v6, v1, v4, p3}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 572
    :sswitch_5
    const/16 v1, 0x602

    invoke-static {v6, v1, v4, p3}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 577
    :sswitch_6
    const/16 v1, 0x603

    invoke-static {v6, v1, v4, p3}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 590
    :sswitch_7
    packed-switch p2, :pswitch_data_0

    .line 619
    :pswitch_0
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring in start Invalid Command,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :pswitch_1
    const/4 v0, -0x1

    .line 599
    .local v0, "dirNo":I
    sget-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    invoke-virtual {v1}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getRecClipDirNo()I

    move-result v0

    .line 600
    const-string v1, "%03X"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRecThumbnailName:Ljava/lang/String;

    .line 602
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRecThumbnailName() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRecThumbnailName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ] dirNo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    sget-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRecThumbnailName:Ljava/lang/String;

    invoke-static {v8, v5, v4, v1}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 609
    .end local v0    # "dirNo":I
    :pswitch_2
    const/4 v1, -0x2

    invoke-static {v8, v1, v4, v7}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 614
    :pswitch_3
    const/4 v1, -0x3

    invoke-static {v8, v1, v4, v7}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 628
    :sswitch_8
    packed-switch p2, :pswitch_data_1

    .line 642
    :pswitch_4
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring in Stop Invalid Command,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    :pswitch_5
    const/16 v1, 0x509

    invoke-static {v1, v5, v4, v7}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 637
    :pswitch_6
    const/16 v1, 0x509

    const/4 v2, -0x1

    invoke-static {v1, v2, v4, v7}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 651
    :sswitch_9
    const/16 v1, 0x50a

    invoke-static {v1, v5, v4, v7}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 657
    :sswitch_a
    packed-switch p2, :pswitch_data_2

    :pswitch_7
    goto/16 :goto_0

    .line 662
    :pswitch_8
    invoke-static {p1, p2}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->handleBufferingEvent(II)V

    goto/16 :goto_0

    .line 543
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x9 -> :sswitch_1
        0xa -> :sswitch_7
        0xc -> :sswitch_8
        0xd -> :sswitch_9
    .end sparse-switch

    .line 547
    :sswitch_data_1
    .sparse-switch
        -0x4 -> :sswitch_4
        0x1 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
        0xa -> :sswitch_5
        0xb -> :sswitch_6
    .end sparse-switch

    .line 590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 628
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 657
    :pswitch_data_2
    .packed-switch 0x1001
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getInstance()Landroid/broadcast/sdtv/SDtvRecEngineControl;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;

    invoke-direct {v0}, Landroid/broadcast/sdtv/SDtvRecEngineControl;-><init>()V

    sput-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    .line 183
    :cond_0
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    return-object v0
.end method

.method public static getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    .locals 3

    .prologue
    .line 194
    const-string v0, "SDtvRecEngineControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSvcState ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    return-object v0
.end method

.method private static handleBufferingEvent(II)V
    .locals 4
    .param p0, "currCommand"    # I
    .param p1, "bufferingStatus"    # I

    .prologue
    const/4 v3, 0x0

    .line 495
    const-string v0, "SDtvRecEngineControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entered handleRecBufferingEvent() cmd["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] status["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 498
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iget v1, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->bufferingEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->bufferingEventCount:I

    .line 499
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_3

    .line 501
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iput-boolean v3, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mIsBuffering:Z

    .line 503
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iget v0, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->bufferingEventCount:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 505
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v0, v1, :cond_2

    .line 507
    const-string v0, "SDtvRecEngineControl"

    const-string v1, " Low Signal Triggered !   "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->bufferingEventCount:I

    .line 509
    const/16 v0, 0x508

    const/16 v1, 0x100b

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 516
    :goto_0
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->bufferingEventCount:I

    .line 527
    :cond_0
    :goto_1
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iget-boolean v0, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mIsBuffering:Z

    if-nez v0, :cond_1

    .line 529
    const-string v0, "SDtvRecEngineControl"

    const-string v1, "handleBufferingEvent() :: Buffering Completed..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_1
    return-void

    .line 514
    :cond_2
    const-string v0, "SDtvRecEngineControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " what will i do in this state ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_3
    const/16 v0, 0x1003

    if-ne p1, v0, :cond_0

    .line 521
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->bufferingEventCount:I

    .line 522
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    iput-boolean v3, v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mIsBuffering:Z

    goto :goto_1
.end method

.method private static native nativeBGRecordClose()Z
.end method

.method private static native nativeBGRecordOpen(III)Z
.end method

.method private static native nativeCancelRecord()Z
.end method

.method private static native nativeGetRecClipDirNo()I
.end method

.method private static native nativeSetClipDetails(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeStartRecord(IIIIIILjava/lang/String;)Z
.end method

.method private static native nativeStopRecord()Z
.end method

.method public static sendSVCThreadMessage(IIILjava/lang/Object;)Z
    .locals 3
    .param p0, "command"    # I
    .param p1, "status"    # I
    .param p2, "extraInfo"    # I
    .param p3, "objInfo"    # Ljava/lang/Object;

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "bSendMsg":Z
    sget-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 158
    const/16 v1, 0x50e

    if-ne p1, v1, :cond_1

    .line 159
    sget-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    sget-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    sget-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    sget-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V
    .locals 3
    .param p0, "newState"    # Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .prologue
    .line 188
    const-string v0, "SDtvRecEngineControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSvcState from["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sput-object p0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 190
    return-void
.end method


# virtual methods
.method public cancelRecord()Z
    .locals 4

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "bCancel":Z
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "Entered cancelRecord()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeCancelRecord()Z

    move-result v0

    .line 303
    const/4 v1, 0x0

    sput-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRecThumbnailName:Ljava/lang/String;

    .line 305
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting cancelRecord() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return v0
.end method

.method public closeBGRecord()Z
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "bClose":Z
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "Entered closeRecord()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeBGRecordClose()Z

    move-result v0

    .line 245
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting closeRecord() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return v0
.end method

.method public create(Landroid/os/Handler;)Z
    .locals 3
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 208
    const/4 v0, 0x1

    .line 209
    .local v0, "bCreate":Z
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "Entered create()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sput-object p1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    .line 211
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "Exiting create()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return v0
.end method

.method public delete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    const-string v0, "SDtvRecEngineControl"

    const-string v1, "Entered delete()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mSDtvRecHdl:Landroid/broadcast/sdtv/SDtvRecEngineControl;

    .line 481
    sput-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRemoteServiceHandler:Landroid/os/Handler;

    .line 482
    const-string v0, "SDtvRecEngineControl"

    const-string v1, "Exiting delete()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public getRecClipDirNo()I
    .locals 4

    .prologue
    .line 363
    const/4 v0, -0x1

    .line 364
    .local v0, "dirNo":I
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeGetRecClipDirNo()I

    move-result v0

    .line 367
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 368
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "Failure in retrieving the dir No"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    return v0

    .line 370
    :cond_0
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClipDetails()  Dir No ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openBGRecord(III)Z
    .locals 4
    .param p1, "playType"    # I
    .param p2, "channelNum"    # I
    .param p3, "serviceID"    # I

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "bOpen":Z
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered openForRecord() channelNum ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {p1, p2, p3}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeBGRecordOpen(III)Z

    move-result v0

    .line 230
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting openForRecord() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return v0
.end method

.method public setClipDetails()V
    .locals 4

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 345
    .local v0, "bRet":Z
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setClipDetails()  Prg Name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/broadcast/sdtv/SDtvRecEngineControl;->progName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Chn Name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/broadcast/sdtv/SDtvRecEngineControl;->chnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->progName:Ljava/lang/String;

    sget-object v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->chnName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeSetClipDetails(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 349
    if-nez v0, :cond_0

    .line 351
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "nativeSetClipDetails failed !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "recURI"    # Ljava/lang/String;
    .param p2, "availMemSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 255
    const/4 v7, 0x0

    .line 257
    .local v7, "bStart":Z
    const-string v0, "SDtvRecEngineControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entered startRecord() recURI  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->ParseRecURI(Ljava/lang/String;)V

    .line 263
    sput v3, Landroid/broadcast/sdtv/SDtvRecEngineControl;->videoPid:I

    .line 264
    sput v3, Landroid/broadcast/sdtv/SDtvRecEngineControl;->audioPid:I

    .line 265
    sget v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->playerType:I

    sget v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->channelNum:I

    sget v2, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recMode:I

    sget v3, Landroid/broadcast/sdtv/SDtvRecEngineControl;->recLoc:I

    sget v4, Landroid/broadcast/sdtv/SDtvRecEngineControl;->videoPid:I

    sget v5, Landroid/broadcast/sdtv/SDtvRecEngineControl;->audioPid:I

    sget-object v6, Landroid/broadcast/sdtv/SDtvRecEngineControl;->path:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeStartRecord(IIIIIILjava/lang/String;)Z

    move-result v7

    .line 267
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->progName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->chnName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Landroid/broadcast/sdtv/SDtvRecEngineControl;->progName:Ljava/lang/String;

    sget-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->chnName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeSetClipDetails(Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    :cond_0
    const-string v0, "SDtvRecEngineControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting startRecord()  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return v7
.end method

.method public stopRecord()Z
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "bStop":Z
    const-string v1, "SDtvRecEngineControl"

    const-string v2, "Entered stopRecord()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Landroid/broadcast/sdtv/SDtvRecEngineControl;->nativeStopRecord()Z

    move-result v0

    .line 286
    const/4 v1, 0x0

    sput-object v1, Landroid/broadcast/sdtv/SDtvRecEngineControl;->mRecThumbnailName:Ljava/lang/String;

    .line 288
    const-string v1, "SDtvRecEngineControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting stopRecord() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return v0
.end method
