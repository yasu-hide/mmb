.class public Landroid/broadcast/sdtv/SDtvControl;
.super Ljava/lang/Object;
.source "SDtvControl.java"


# static fields
.field public static final CMD_BASE:I = 0x500

.field public static final CMD_CLOSE:I = 0x503

.field public static final CMD_DEINIT:I = 0x504

.field public static final CMD_INIT:I = 0x501

.field public static final CMD_OPEN:I = 0x502

.field public static final CMD_SCAN:I = 0x505

.field static final MAX_BUFFERING_EVENT_COUNT:I = 0x18

.field public static final NATIVECB_START_STOP_DONE:I = 0x50c

.field public static final NATIVECB_STAT_ABNORMAL_FAILURE:I = 0x50e

.field public static final NATIVECB_STAT_AUDIO_PES_READY:I = 0x501

.field public static final NATIVECB_STAT_BASE:I = 0x500

.field public static final NATIVECB_STAT_BIT_RCV:I = 0x40

.field public static final NATIVECB_STAT_BML_DSMCC_READY:I = 0x504

.field public static final NATIVECB_STAT_BUFFERING_BEGIN:I = 0x1001

.field public static final NATIVECB_STAT_BUFFERING_COMPLETED:I = 0x1003

.field public static final NATIVECB_STAT_BUFFERING_PROGRESS:I = 0x1002

.field public static final NATIVECB_STAT_CAPTION:I = 0x1006

.field public static final NATIVECB_STAT_CAPTION_RCV:I = 0x50d

.field public static final NATIVECB_STAT_CAPT_PES_READY:I = 0x503

.field public static final NATIVECB_STAT_CAT_RCV:I = 0x80

.field public static final NATIVECB_STAT_EIT_RCV:I = 0x200

.field public static final NATIVECB_STAT_END_OF_FILE:I = 0x509

.field public static final NATIVECB_STAT_FAILURE:I = -0x1

.field public static final NATIVECB_STAT_MEDIA_ERROR:I = 0x1004

.field public static final NATIVECB_STAT_NIT_RCV:I = 0x8

.field public static final NATIVECB_STAT_NOMEMORY:I = -0x2

.field public static final NATIVECB_STAT_PARSER_FAILURE:I = -0x3

.field public static final NATIVECB_STAT_PAT_RCV:I = 0x2

.field public static final NATIVECB_STAT_PCR_UPDATE:I = 0x507

.field public static final NATIVECB_STAT_PMT_CHANGE:I = 0x505

.field public static final NATIVECB_STAT_PMT_RCV:I = 0x4

.field public static final NATIVECB_STAT_PMT_UPDATE:I = 0x506

.field public static final NATIVECB_STAT_REC_NOTALLOWED:I = -0x8

.field public static final NATIVECB_STAT_SDT_RCV:I = 0x100

.field public static final NATIVECB_STAT_SEEK_PROGRESS:I = 0x50a

.field public static final NATIVECB_STAT_SHORT_CLIP:I = 0x50b

.field public static final NATIVECB_STAT_SIGNAL:I = 0x1005

.field public static final NATIVECB_STAT_SUCCESS:I = 0x1

.field public static final NATIVECB_STAT_TIME_UPDT:I = 0x1007

.field public static final NATIVECB_STAT_TOT_RCV:I = 0x20

.field public static final NATIVECB_STAT_TRICKMODE_END:I = 0x1009

.field public static final NATIVECB_STAT_TUNER_FAILURE:I = -0x4

.field public static final NATIVECB_STAT_TUNER_TIMEOUT:I = -0x5

.field public static final NATIVECB_STAT_USER_INFO_UPDATE:I = 0x508

.field public static final NATIVECB_STAT_VIDEORATIO_UPDT:I = 0x1008

.field public static final NATIVECB_STAT_VIDEO_PES_READY:I = 0x502

.field public static final NATIVE_CMD_ABNORMAL_DEATH:I = -0x64

.field private static final NATIVE_CMD_CLOSE:I = 0x8

.field private static final NATIVE_CMD_DEINIT:I = 0xe

.field private static final NATIVE_CMD_INIT:I = 0x0

.field protected static final NATIVE_CMD_OPEN:I = 0x1

.field private static final NATIVE_CMD_PAUSE:I = 0x3

.field private static final NATIVE_CMD_PLAY:I = 0x2

.field protected static final NATIVE_CMD_RECCANCEL:I = 0xb

.field protected static final NATIVE_CMD_RECCLOSE:I = 0xd

.field protected static final NATIVE_CMD_RECOPEN:I = 0x9

.field protected static final NATIVE_CMD_RECSTART:I = 0xa

.field protected static final NATIVE_CMD_RECSTOP:I = 0xc

.field private static final NATIVE_CMD_REPOSITION:I = 0x5

.field private static final NATIVE_CMD_RESUME:I = 0x4

.field private static final NATIVE_CMD_SEEK:I = 0x6

.field private static final NATIVE_CMD_SEEK_SYNC_TIME:I = 0x7

.field public static final NATIVE_MAX_PHYSICALIDS:I = 0x32

.field public static final NATIVE_MAX_PROGRAMS:I = 0x32

.field public static final NATIVE_PARSERFILT_ALL:I = 0x3f

.field public static final NATIVE_PARSERFILT_SCAN:I = 0x20

.field public static final NATIVE_PARSERFILT_SIPSI:I = 0x1

.field public static final SDTV_CMD_ABNORMAL_DEATH:I = -0x64

.field public static final SDTV_CMD_CAPT_FRAME:I = 0x60d

.field public static final SDTV_CMD_CLOSE:I = 0x607

.field public static final SDTV_CMD_DEINIT:I = 0x60b

.field public static final SDTV_CMD_INIT:I = 0x600

.field public static final SDTV_CMD_PAUSE:I = 0x603

.field public static final SDTV_CMD_PLAY:I = 0x602

.field public static final SDTV_CMD_RECCANCEL:I = 0x609

.field public static final SDTV_CMD_RECSTART:I = 0x608

.field public static final SDTV_CMD_RECSTOP:I = 0x60a

.field public static final SDTV_CMD_REPOSITION:I = 0x605

.field public static final SDTV_CMD_RESUME:I = 0x604

.field public static final SDTV_CMD_SCAN:I = 0x60c

.field public static final SDTV_CMD_SEEK:I = 0x606

.field public static final SDTV_CMD_UPDATE:I = 0x1000

.field public static final SDTV_MAX_PROGRAMS:I = 0x14

.field public static final SDTV_PARSERFILT_ALL:I = 0x3f

.field public static final SDTV_PARSERFILT_SCAN:I = 0x20

.field public static final SDTV_PARSERFILT_SIPSI:I = 0x1

.field public static final SDTV_STAT_CHANNEL_INFO:I = 0x100a

.field public static final SDTV_STAT_PMT_RCV:I = 0x100c

.field public static final SDTV_STAT_TUNER_LOW_SIGNAL:I = 0x100b

.field public static final STACK_CMD_END:I = 0x506

.field private static final TAG:Ljava/lang/String; = "SDtvControl"

.field private static isNativeClosing:Z

.field private static isNativeOpen:Z

.field private static mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

.field private static mRemoteServiceHandler:Landroid/os/Handler;

.field private static mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;


# instance fields
.field private bIsNativeCreateDone:Z

.field private bufferingEventCount:I

.field private mIsBuffering:Z

.field private mIsLocalPlay:Z

.field private mNativeOpen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    sput-object v1, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    .line 43
    sput-boolean v0, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 49
    sput-boolean v0, Landroid/broadcast/sdtv/SDtvControl;->isNativeClosing:Z

    .line 166
    sget-object v0, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->IDLE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    sput-object v0, Landroid/broadcast/sdtv/SDtvControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 172
    sput-object v1, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->mIsLocalPlay:Z

    .line 46
    iput-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    .line 48
    iput v0, p0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 174
    iput v0, p0, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    .line 176
    iput-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    .line 251
    const-string v0, "SDtvControl"

    const-string v1, "Successfully Instantiated Constrcutor"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private static PostServiceCBFromNative(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 10
    .param p0, "OneSegServRef"    # Ljava/lang/Object;
    .param p1, "cmd"    # I
    .param p2, "status"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 635
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entered PostServiceCBFromNative() command ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] status ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sparse-switch p1, :sswitch_data_0

    .line 934
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Callback Command ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]. Status ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]. Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    :goto_0
    :sswitch_0
    const-string v5, "SDtvControl"

    const-string v6, "Exiting PostServiceCBFromNative()"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    return-void

    .line 642
    :sswitch_1
    const-string v5, "SDtvControl"

    const-string v6, "Entered NATIVE_CMD_OPEN"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sparse-switch p2, :sswitch_data_1

    .line 759
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Callback Status ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] in OPEN Command. Ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :sswitch_2
    sget-object v5, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    sget-object v6, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    const/16 v7, 0x502

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, p2, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 651
    :sswitch_3
    const-string v5, "SDtvControl"

    const-string v6, "Got PMT from native "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v5, 0x4

    invoke-static {v5}, Landroid/broadcast/sdtv/SDtvControl;->sendOpenStatus(I)V

    goto :goto_0

    .line 657
    :sswitch_4
    const-string v5, "SDtvControl"

    const-string v6, "Got NIT from native "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/16 v5, 0x8

    invoke-static {v5}, Landroid/broadcast/sdtv/SDtvControl;->sendOpenStatus(I)V

    goto :goto_0

    .line 663
    :sswitch_5
    const-string v5, "SDtvControl"

    const-string v6, "Got BIT from native "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/16 v5, 0x40

    invoke-static {v5}, Landroid/broadcast/sdtv/SDtvControl;->sendOpenStatus(I)V

    goto :goto_0

    .line 669
    :sswitch_6
    const-string v5, "SDtvControl"

    const-string v6, "Got EIT from native "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/16 v5, 0x32

    new-array v4, v5, [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .line 671
    .local v4, "progInfo":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    sget-object v5, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    invoke-virtual {v5, v4}, Landroid/broadcast/sdtv/SDtvControl;->getProgramInfo([Landroid/broadcast/helper/types/MtvOneSegProgram;)Z

    move-result v0

    .line 673
    .local v0, "bOpenInfo":Z
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 674
    const/16 v5, 0x502

    const/16 v6, 0x200

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v4}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 676
    :cond_1
    const-string v5, "SDtvControl"

    const-string v6, "Failure in retrieving ProgramInformation!!!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    .end local v0    # "bOpenInfo":Z
    .end local v4    # "progInfo":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    :sswitch_7
    const-string v5, "SDtvControl"

    const-string v6, "Got SDT from native "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/16 v5, 0x100

    invoke-static {v5}, Landroid/broadcast/sdtv/SDtvControl;->sendOpenStatus(I)V

    goto/16 :goto_0

    .line 700
    :sswitch_8
    const-string v5, "SDtvControl"

    const-string v6, "Got TOT from native "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    sget-object v5, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    invoke-virtual {v5}, Landroid/broadcast/sdtv/SDtvControl;->getStreamTime()J

    move-result-wide v2

    .line 703
    .local v2, "lStreamTime":J
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-eqz v5, :cond_2

    .line 704
    const/16 v5, 0x502

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 706
    :cond_2
    const-string v5, "SDtvControl"

    const-string v6, "Failure in retrieving Stream Time!!!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 712
    .end local v2    # "lStreamTime":J
    :sswitch_9
    const-string v5, "SDtvControl"

    const-string v6, "Got NATIVECB_STAT_FAILURE from CMD_OPEN"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    sget-object v5, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    if-eqz v5, :cond_0

    sget-boolean v5, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    if-eqz v5, :cond_0

    .line 715
    const/4 v5, 0x0

    sput-boolean v5, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 716
    const/16 v5, 0x502

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 721
    :sswitch_a
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/broadcast/sdtv/SDtvControl;->sendOpenStatus(I)V

    goto/16 :goto_0

    .line 726
    :sswitch_b
    const-string v5, "SDtvControl"

    const-string v6, "Got Tuner Failure [Low-Signal initiated] from native"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v5, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    if-eqz v5, :cond_0

    sget-boolean v5, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    if-eqz v5, :cond_0

    .line 729
    const/4 v5, 0x0

    sput-boolean v5, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 730
    const/16 v5, 0x502

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 736
    :sswitch_c
    invoke-static {p1, p2}, Landroid/broadcast/sdtv/SDtvControl;->handleBufferingEvent(II)V

    goto/16 :goto_0

    .line 739
    :sswitch_d
    const/16 v5, 0x502

    const/16 v6, 0x509

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 744
    :sswitch_e
    const/16 v5, 0x502

    const/16 v6, 0x50c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 749
    :sswitch_f
    const/16 v5, 0x502

    const/16 v6, 0x50b

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_10
    move-object v5, p3

    .line 753
    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 754
    .local v1, "capArray":[B
    const/16 v5, 0x1000

    const/16 v6, 0x1006

    array-length v7, v1

    invoke-static {v5, v6, v7, p3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 768
    .end local v1    # "capArray":[B
    :sswitch_11
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 769
    const/4 v5, 0x0

    sput-boolean v5, Landroid/broadcast/sdtv/SDtvControl;->isNativeClosing:Z

    .line 770
    const/16 v5, 0x503

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 781
    :sswitch_12
    const-string v5, "SDtvControl"

    const-string v6, "Malfunctioning of Native Processes -- Serious mishap!!!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/16 v5, 0x502

    const/16 v6, 0x50e

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 789
    :sswitch_13
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NATIVE_CMD_RESUME status  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const/4 v5, 0x1

    if-ne p2, v5, :cond_3

    .line 791
    const/16 v5, 0x603

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 795
    :cond_3
    const/16 v5, 0x603

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 802
    :sswitch_14
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got NATIVE_CMD_PLAY :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    sparse-switch p2, :sswitch_data_2

    .line 827
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Callback Status ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] in PLAY Command. Ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :sswitch_15
    const/16 v5, 0x1000

    const/16 v6, 0x1003

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 808
    const/16 v5, 0x602

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 814
    :sswitch_16
    invoke-static {p1, p2}, Landroid/broadcast/sdtv/SDtvControl;->handleBufferingEvent(II)V

    goto/16 :goto_0

    .line 821
    :sswitch_17
    const-string v5, "SDtvControl"

    const-string v6, "PLAY_FAILURE -- Please confirm if its VDec failure !!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/16 v5, 0x602

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 835
    :sswitch_18
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NATIVE_CMD_RESUME status  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    .line 837
    const/16 v5, 0x604

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 841
    :cond_4
    const/16 v5, 0x604

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 847
    :sswitch_19
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NATIVE_CMD_REPOSITION "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v5, 0x1

    if-ne p2, v5, :cond_5

    .line 849
    const/16 v5, 0x605

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, p3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 853
    :cond_5
    const/16 v5, 0x605

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 859
    :sswitch_1a
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_0

    .line 880
    :sswitch_1b
    const/16 v5, 0x606

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, p2, v6, v7}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 863
    :sswitch_1c
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NATIVE_CMD_SEEK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/16 v5, 0x606

    const/4 v6, 0x0

    invoke-static {v5, p2, v6, p3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 869
    :sswitch_1d
    const-string v5, "SDtvControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NATIVE_CMD_SEEK "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/16 v5, 0x606

    const/4 v6, 0x0

    invoke-static {v5, p2, v6, p3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 875
    :sswitch_1e
    const/16 v5, 0x606

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, p2, v6, v7}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 889
    :sswitch_1f
    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    .line 890
    const/16 v5, 0x60d

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, p3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 896
    :sswitch_20
    sparse-switch p2, :sswitch_data_4

    goto/16 :goto_0

    .line 906
    :sswitch_21
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 908
    :pswitch_1
    const/16 v5, 0x1000

    const/16 v6, 0x1001

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 911
    :pswitch_2
    const/16 v5, 0x1000

    const/16 v6, 0x1002

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 914
    :pswitch_3
    const/16 v5, 0x1000

    const/16 v6, 0x1003

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 917
    :pswitch_4
    const/16 v5, 0x1000

    const/16 v6, 0x1005

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 920
    :pswitch_5
    const/16 v5, 0x1000

    const/16 v6, 0x1007

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 923
    :pswitch_6
    const/16 v5, 0x1000

    const/16 v6, 0x1008

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 926
    :pswitch_7
    const/16 v5, 0x1000

    const/16 v6, 0x1004

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 640
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_12
        0x1 -> :sswitch_1
        0x2 -> :sswitch_14
        0x3 -> :sswitch_13
        0x4 -> :sswitch_18
        0x5 -> :sswitch_19
        0x6 -> :sswitch_1a
        0x7 -> :sswitch_20
        0x8 -> :sswitch_11
        0xe -> :sswitch_0
        0x60d -> :sswitch_1f
        0x1000 -> :sswitch_21
    .end sparse-switch

    .line 643
    :sswitch_data_1
    .sparse-switch
        -0x4 -> :sswitch_b
        -0x1 -> :sswitch_9
        0x1 -> :sswitch_a
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x20 -> :sswitch_8
        0x40 -> :sswitch_5
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x505 -> :sswitch_2
        0x506 -> :sswitch_0
        0x507 -> :sswitch_0
        0x509 -> :sswitch_d
        0x50b -> :sswitch_f
        0x50c -> :sswitch_e
        0x50d -> :sswitch_10
        0x1001 -> :sswitch_c
        0x1003 -> :sswitch_c
    .end sparse-switch

    .line 803
    :sswitch_data_2
    .sparse-switch
        -0x1 -> :sswitch_17
        0x1 -> :sswitch_15
        0x1001 -> :sswitch_16
        0x1003 -> :sswitch_16
    .end sparse-switch

    .line 859
    :sswitch_data_3
    .sparse-switch
        -0x1 -> :sswitch_1b
        0x1 -> :sswitch_1d
        0x509 -> :sswitch_1e
        0x50a -> :sswitch_1c
    .end sparse-switch

    .line 896
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_0
        0x1009 -> :sswitch_0
    .end sparse-switch

    .line 906
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getInstance()Landroid/broadcast/sdtv/SDtvControl;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Landroid/broadcast/sdtv/SDtvControl;

    invoke-direct {v0}, Landroid/broadcast/sdtv/SDtvControl;-><init>()V

    sput-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    .line 276
    :cond_0
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    return-object v0
.end method

.method public static getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    return-object v0
.end method

.method private static handleBufferingEvent(II)V
    .locals 7
    .param p0, "currCommand"    # I
    .param p1, "bufferingStatus"    # I

    .prologue
    const/16 v2, 0x1003

    const/16 v6, 0x1001

    const/16 v5, 0x1000

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1050
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    if-nez v0, :cond_1

    .line 1052
    const-string v0, "SDtvControl"

    const-string v1, "Not in Open State... ! Ignoring Buffering Events !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 1058
    if-ne p1, v6, :cond_5

    .line 1060
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v1, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 1061
    const-string v0, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferingEventCount   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v2, v2, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v0, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    const/16 v1, 0x18

    if-gt v0, v1, :cond_4

    .line 1064
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget-boolean v0, v0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    if-nez v0, :cond_3

    .line 1066
    invoke-static {v5, v6, v3, v4}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 1067
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    .line 1119
    :cond_2
    :goto_1
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget-boolean v0, v0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    if-nez v0, :cond_0

    .line 1121
    const-string v0, "SDtvControl"

    const-string v1, "handleBufferingEvent() :: Buffering Completed..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_3
    const/16 v0, 0x1002

    invoke-static {v5, v0, v3, v4}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_1

    .line 1076
    :cond_4
    const-string v0, "SDtvControl"

    const-string v1, "Low Signal Triggered !   "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 1078
    const/16 v0, 0x100b

    invoke-static {v5, v0, v3, v4}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_1

    .line 1081
    :cond_5
    if-ne p1, v2, :cond_2

    .line 1083
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 1084
    invoke-static {v5, v2, v3, v4}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 1085
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput-boolean v3, v0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    goto :goto_1

    .line 1088
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 1090
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v1, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 1091
    if-ne p1, v6, :cond_a

    .line 1093
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput-boolean v3, v0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    .line 1095
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v0, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 1097
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v0, v1, :cond_7

    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v0, v1, :cond_9

    .line 1099
    :cond_7
    const-string v0, "SDtvControl"

    const-string v1, "No Data in Tuner Even After Locking to a  Channel ! Sending Open Failure !"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/16 v0, 0x502

    const/4 v1, -0x1

    invoke-static {v0, v1, v3, v4}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 1101
    sput-boolean v3, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 1109
    :cond_8
    :goto_2
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    goto :goto_1

    .line 1103
    :cond_9
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v0

    sget-object v1, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v0, v1, :cond_8

    .line 1105
    const-string v0, "SDtvControl"

    const-string v1, " Low Signal Triggered !   "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 1107
    const/16 v0, 0x100b

    invoke-static {v5, v0, v3, v4}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_2

    .line 1112
    :cond_a
    if-ne p1, v2, :cond_2

    .line 1114
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput v3, v0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 1115
    sget-object v0, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iput-boolean v3, v0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    goto/16 :goto_1
.end method

.method private static native nativeCaptureFrame()Z
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeDeInitMW()I
.end method

.method private static native nativeDeleteTVRecFile(I)Z
.end method

.method private static native nativeFinalize()V
.end method

.method private static native nativeGetAudioSessionId()I
.end method

.method private static native nativeGetComponentInfo(Ljava/lang/Object;)Z
.end method

.method private static native nativeGetPlayType()Z
.end method

.method private static native nativeGetPlaybackTime()J
.end method

.method private static native nativeGetProgramInfo([Ljava/lang/Object;)Z
.end method

.method private static native nativeGetServiceID()I
.end method

.method private static native nativeGetServiceInfo(Ljava/lang/Object;)Z
.end method

.method private static native nativeGetSignalStatistics(Ljava/lang/Object;)Z
.end method

.method private static native nativeGetStreamTimeLongType()J
.end method

.method private static native nativeInitMW()Z
.end method

.method private static native nativeOpen(IILjava/lang/String;I)Z
.end method

.method private static native nativePause()Z
.end method

.method private static native nativePlay()Z
.end method

.method private static native nativeRenameTVRecFile(ILjava/lang/String;)Z
.end method

.method private static native nativeReposition(I)Z
.end method

.method private static native nativeResume()Z
.end method

.method private static native nativeScan(I)Z
.end method

.method private static native nativeSetAudioEnable(I)V
.end method

.method private static native nativeSetAudioMode(I)V
.end method

.method private static native nativeSetDisplay(Landroid/view/Surface;II)V
.end method

.method private static native nativeSetParserFilter(I)I
.end method

.method private static native nativeSetSoundEffect(II)V
.end method

.method private static native nativeSetup(Ljava/lang/Object;)Z
.end method

.method private static native nativeTrickmode(III)Z
.end method

.method private static native nativeTunerPowerOff()V
.end method

.method private static native nativeTunerPowerOn()V
.end method

.method private static native nativeUpdateTvFilesDB()V
.end method

.method private static native nativesetFrameRateChange(I)V
.end method

.method private static sendOpenStatus(I)V
    .locals 12
    .param p0, "status"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 943
    const/4 v0, 0x0

    .line 946
    .local v0, "bOpenInfo":Z
    const/4 v3, 0x0

    .line 948
    .local v3, "physicalIDInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/4 v1, -0x1

    .line 950
    .local v1, "command":I
    sget-object v4, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    if-eqz v4, :cond_4

    .line 951
    if-eq p0, v11, :cond_0

    if-eq p0, v9, :cond_0

    const/16 v4, 0x40

    if-ne p0, v4, :cond_1

    .line 952
    :cond_0
    sget-object v4, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v5, v4, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    or-int/2addr v5, p0

    iput v5, v4, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    .line 954
    :cond_1
    const-string v4, "SDtvControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendOpenStatus :: Native Open is Success. : getSvcState() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v4

    sget-object v5, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->CREATE:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-eq v4, v5, :cond_2

    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v4

    sget-object v5, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->REC_OPEN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v4, v5, :cond_6

    .line 958
    :cond_2
    if-ne p0, v7, :cond_5

    .line 960
    const-string v4, "SDtvControl"

    const-string v5, "sendOpenStatus :: Got OPEN_SUCCESS from backend. Wait for PMT and NIT "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_3
    :goto_0
    if-ne v7, v0, :cond_4

    .line 1027
    const/16 v4, 0x32

    new-array v3, v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 1028
    sget-object v4, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    invoke-virtual {v4, v3}, Landroid/broadcast/sdtv/SDtvControl;->getChannelInfo([Landroid/broadcast/helper/types/MtvOneSegChannel;)Z

    move-result v0

    .line 1030
    if-ne v7, v0, :cond_a

    .line 1031
    invoke-static {v1, v7, v8, v3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 1040
    :cond_4
    :goto_1
    return-void

    .line 962
    :cond_5
    sget-object v4, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v4, v4, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    and-int/lit8 v4, v4, 0x4

    if-ne v11, v4, :cond_3

    sget-object v4, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v4, v4, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    and-int/lit8 v4, v4, 0x8

    if-ne v9, v4, :cond_3

    .line 964
    const/4 v0, 0x1

    .line 965
    const/16 v1, 0x502

    .line 966
    const-string v4, "SDtvControl"

    const-string v5, "sendOpenStatus :: Recieved PMT and NIT events..  Extracting the SI Information !"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_6
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v4

    sget-object v5, Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;->SCAN:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    if-ne v4, v5, :cond_8

    .line 969
    if-ne p0, v7, :cond_7

    .line 971
    const-string v4, "SDtvControl"

    const-string v5, "sendOpenStatus :: Got Succes for Scan Operation start!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const/16 v4, 0x502

    invoke-static {v4, v7, v8, v10}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_1

    .line 975
    :cond_7
    sget-object v4, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    iget v4, v4, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    and-int/lit8 v4, v4, 0x8

    if-ne v9, v4, :cond_3

    .line 978
    const/4 v0, 0x1

    .line 979
    const/16 v1, 0x505

    goto :goto_0

    .line 1011
    :cond_8
    const-string v4, "SDtvControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SI information recieved in some other state ! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->getSvcState()Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const/4 v0, 0x0

    .line 1013
    const/16 v1, 0x1000

    .line 1016
    const/16 p0, 0x100a

    .line 1017
    const/4 v2, 0x0

    .line 1018
    .local v2, "isChannelInfoAvailable":Z
    const/16 v4, 0x32

    new-array v3, v4, [Landroid/broadcast/helper/types/MtvOneSegChannel;

    .line 1019
    sget-object v4, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    invoke-virtual {v4, v3}, Landroid/broadcast/sdtv/SDtvControl;->getChannelInfo([Landroid/broadcast/helper/types/MtvOneSegChannel;)Z

    move-result v2

    .line 1020
    if-eqz v2, :cond_9

    .line 1021
    invoke-static {v1, p0, v8, v3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 1023
    :cond_9
    invoke-static {v1, p0, v8, v10}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 1033
    .end local v2    # "isChannelInfoAvailable":Z
    :cond_a
    const/4 v3, 0x0

    .line 1034
    const/4 v4, -0x1

    invoke-static {v1, v4, v8, v10}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method public static sendSVCThreadMessage(IIILjava/lang/Object;)Z
    .locals 3
    .param p0, "command"    # I
    .param p1, "status"    # I
    .param p2, "extraInfo"    # I
    .param p3, "objInfo"    # Ljava/lang/Object;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "bSendMsg":Z
    sget-object v1, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 259
    const/16 v1, 0x50e

    if-ne p1, v1, :cond_1

    .line 260
    sget-object v1, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    sget-object v2, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    sget-object v1, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    sget-object v2, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setSvcState(Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;)V
    .locals 0
    .param p0, "newState"    # Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .prologue
    .line 282
    sput-object p0, Landroid/broadcast/sdtv/SDtvControl;->mOneSegRemoteSvcState:Landroid/broadcast/oneseg/MtvOneSegService$OneSegSvcState;

    .line 283
    return-void
.end method


# virtual methods
.method public IsLocalPlay()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->mIsLocalPlay:Z

    return v0
.end method

.method public SDtvSetDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1201
    const-string v0, "SDtvControl"

    const-string v1, "Surface Changed and Sent for native display"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetDisplay(Landroid/view/Surface;II)V

    .line 1206
    :goto_0
    return-void

    .line 1205
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetDisplay(Landroid/view/Surface;II)V

    goto :goto_0
.end method

.method public captureFrame()Z
    .locals 2

    .prologue
    .line 1209
    const-string v0, "SDtvControl"

    const-string v1, "Capture frame called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    if-nez v0, :cond_0

    .line 1212
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeCaptureFrame()Z

    move-result v0

    .line 1217
    :goto_0
    return v0

    .line 1216
    :cond_0
    const-string v0, "SDtvControl"

    const-string v1, "Player in Buffering State  , Cannot Capture Frame ! "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    const-string v0, "SDtvControl"

    const-string v1, "Entered close()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iput v2, p0, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    .line 442
    sput-boolean v2, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 443
    iput-boolean v2, p0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    .line 444
    iput v2, p0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 445
    iget-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v0, :cond_0

    .line 447
    const-string v0, "SDtvControl"

    const-string v1, "Native Create not yet done!! Do Create First!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "SDtvControl"

    const-string v1, "Exiting close()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_0
    return-void

    .line 451
    :cond_0
    sget-boolean v0, Landroid/broadcast/sdtv/SDtvControl;->isNativeClosing:Z

    if-eqz v0, :cond_1

    .line 453
    const-string v0, "SDtvControl"

    const-string v1, "Don\'t try to close door, which is already closed.!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Landroid/broadcast/sdtv/SDtvControl;->isNativeClosing:Z

    .line 457
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeClose()V

    .line 458
    invoke-virtual {p0, v2}, Landroid/broadcast/sdtv/SDtvControl;->setIsLocalPlay(Z)V

    .line 460
    const-string v0, "SDtvControl"

    const-string v1, "Successfully Closed Native MW"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v0, "SDtvControl"

    const-string v1, "Exiting close()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public create()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "bCreate":Z
    const-string v1, "SDtvControl"

    const-string v2, "Entered create()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetup(Ljava/lang/Object;)Z

    move-result v0

    .line 340
    if-ne v3, v0, :cond_0

    .line 341
    const-string v1, "SDtvControl"

    const-string v2, "Calling NativeInitMW"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeInitMW()Z

    move-result v0

    .line 344
    :cond_0
    if-eqz v0, :cond_1

    .line 345
    iput-boolean v3, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    .line 349
    :goto_0
    const-string v1, "SDtvControl"

    const-string v2, "Exiting create()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return v0

    .line 347
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    goto :goto_0
.end method

.method public create(Landroid/os/Handler;)Z
    .locals 4
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "bCreate":Z
    sput-object p1, Landroid/broadcast/sdtv/SDtvControl;->mRemoteServiceHandler:Landroid/os/Handler;

    .line 305
    const-string v1, "SDtvControl"

    const-string v2, "Entered create()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetup(Ljava/lang/Object;)Z

    move-result v0

    .line 308
    if-ne v3, v0, :cond_0

    .line 309
    const-string v1, "SDtvControl"

    const-string v2, "Calling NativeInitMW"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeInitMW()Z

    move-result v0

    .line 312
    :cond_0
    if-eqz v0, :cond_1

    .line 313
    iput-boolean v3, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    .line 317
    :goto_0
    const-string v1, "SDtvControl"

    const-string v2, "Exiting create()"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return v0

    .line 315
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    goto :goto_0
.end method

.method public delete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 362
    const-string v0, "SDtvControl"

    const-string v1, "Entered delete()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v0, :cond_0

    .line 365
    const-string v0, "SDtvControl"

    const-string v1, "Native Create not yet done!! Do Create First!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sput-object v3, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    .line 367
    iput v2, p0, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    .line 368
    sput-boolean v2, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 369
    const-string v0, "SDtvControl"

    const-string v1, "Exiting delete()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeDeInitMW()I

    .line 374
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeFinalize()V

    .line 376
    sput-object v3, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    .line 377
    iput-boolean v2, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    .line 378
    iput v2, p0, Landroid/broadcast/sdtv/SDtvControl;->mNativeOpen:I

    .line 379
    sput-boolean v2, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 381
    const/16 v0, 0x504

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/broadcast/sdtv/SDtvControl;->sendSVCThreadMessage(IIILjava/lang/Object;)Z

    .line 383
    const-string v0, "SDtvControl"

    const-string v1, "Exiting delete()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteTVFile(I)Z
    .locals 4
    .param p1, "fileIndex"    # I

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 581
    .local v0, "bDelTVFile":Z
    const-string v2, "SDtvControl"

    const-string v3, "Entered deleteTVFile()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-boolean v2, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v2, :cond_0

    .line 584
    const-string v2, "SDtvControl"

    const-string v3, "Native Create not yet done!! Do Create First!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v2, "SDtvControl"

    const-string v3, "Exiting deleteTVFile()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 591
    .end local v0    # "bDelTVFile":Z
    .local v1, "bDelTVFile":I
    :goto_0
    return v1

    .line 588
    .end local v1    # "bDelTVFile":I
    .restart local v0    # "bDelTVFile":Z
    :cond_0
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeDeleteTVRecFile(I)Z

    move-result v0

    .line 589
    const-string v2, "SDtvControl"

    const-string v3, "Exiting deleteTVFile()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 591
    .restart local v1    # "bDelTVFile":I
    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 1288
    const-string v0, "SDtvControl"

    const-string v1, "getAudioSessionId called "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeGetAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getChannelInfo([Landroid/broadcast/helper/types/MtvOneSegChannel;)Z
    .locals 4
    .param p1, "chnlInfo"    # [Landroid/broadcast/helper/types/MtvOneSegChannel;

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "bChnlInfo":Z
    const-string v2, "SDtvControl"

    const-string v3, "Entered getChannelInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-boolean v2, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v2, :cond_0

    .line 500
    const-string v2, "SDtvControl"

    const-string v3, "Native Create not yet done!! Do Create First!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v2, "SDtvControl"

    const-string v3, "Exiting getChannelInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 507
    .end local v0    # "bChnlInfo":Z
    .local v1, "bChnlInfo":I
    :goto_0
    return v1

    .line 504
    .end local v1    # "bChnlInfo":I
    .restart local v0    # "bChnlInfo":Z
    :cond_0
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeGetServiceInfo(Ljava/lang/Object;)Z

    move-result v0

    .line 506
    const-string v2, "SDtvControl"

    const-string v3, "Exiting getChannelInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 507
    .restart local v1    # "bChnlInfo":I
    goto :goto_0
.end method

.method public getChnlURI(Landroid/broadcast/helper/types/MtvOneSegChannel;)Ljava/lang/String;
    .locals 10
    .param p1, "physicalIDInfo"    # Landroid/broadcast/helper/types/MtvOneSegChannel;

    .prologue
    const/4 v6, 0x1

    .line 1133
    const/4 v1, 0x0

    .line 1134
    .local v1, "chnlURI":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1135
    .local v3, "compInfo":Landroid/broadcast/helper/types/MtvComponent;
    const/4 v0, 0x0

    .line 1136
    .local v0, "bchnlURI":Z
    const/4 v4, -0x1

    .line 1145
    .local v4, "pbType":I
    iget-boolean v5, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v5, :cond_0

    .line 1147
    const-string v5, "SDtvControl"

    const-string v6, "Native Create not yet done!! Do Create First!!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v5, "SDtvControl"

    const-string v6, "Exiting getChnlURI()"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 1169
    .end local v1    # "chnlURI":Ljava/lang/String;
    .local v2, "chnlURI":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1151
    .end local v2    # "chnlURI":Ljava/lang/String;
    .restart local v1    # "chnlURI":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 1152
    new-instance v3, Landroid/broadcast/helper/types/MtvComponent;

    .end local v3    # "compInfo":Landroid/broadcast/helper/types/MtvComponent;
    invoke-direct {v3}, Landroid/broadcast/helper/types/MtvComponent;-><init>()V

    .line 1154
    .restart local v3    # "compInfo":Landroid/broadcast/helper/types/MtvComponent;
    if-eqz v3, :cond_1

    .line 1155
    sget-object v5, Landroid/broadcast/sdtv/SDtvControl;->mSDtvHdl:Landroid/broadcast/sdtv/SDtvControl;

    invoke-virtual {v5, v3}, Landroid/broadcast/sdtv/SDtvControl;->getComponentInfo(Landroid/broadcast/helper/types/MtvComponent;)Z

    move-result v0

    .line 1157
    if-ne v6, v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Landroid/broadcast/sdtv/SDtvControl;->IsLocalPlay()Z

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1159
    const/4 v4, 0x1

    .line 1164
    :goto_1
    new-instance v5, Landroid/broadcast/helper/types/MtvOneSegPlayer;

    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/broadcast/helper/types/MtvComponent;->getVideo()I

    move-result v7

    invoke-virtual {v3}, Landroid/broadcast/helper/types/MtvComponent;->getAudio()I

    move-result v8

    invoke-virtual {v3}, Landroid/broadcast/helper/types/MtvComponent;->getCaption()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/broadcast/helper/types/MtvOneSegPlayer;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v5, v4}, Landroid/broadcast/helper/types/MtvOneSegPlayer;->getOpenURI(I)Ljava/lang/String;

    move-result-object v1

    .line 1165
    const-string v5, "SDtvControl"

    invoke-static {v5, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v2, v1

    .line 1169
    .end local v1    # "chnlURI":Ljava/lang/String;
    .restart local v2    # "chnlURI":Ljava/lang/String;
    goto :goto_0

    .line 1161
    .end local v2    # "chnlURI":Ljava/lang/String;
    .restart local v1    # "chnlURI":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public getComponentInfo(Landroid/broadcast/helper/types/MtvComponent;)Z
    .locals 4
    .param p1, "compInfo"    # Landroid/broadcast/helper/types/MtvComponent;

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "bCompInfo":Z
    const-string v2, "SDtvControl"

    const-string v3, "Entered getComponentInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-boolean v2, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v2, :cond_0

    .line 478
    const-string v2, "SDtvControl"

    const-string v3, "Native Create not yet done!! Do Create First!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "SDtvControl"

    const-string v3, "Exiting getComponentInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 485
    .end local v0    # "bCompInfo":Z
    .local v1, "bCompInfo":I
    :goto_0
    return v1

    .line 482
    .end local v1    # "bCompInfo":I
    .restart local v0    # "bCompInfo":Z
    :cond_0
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeGetComponentInfo(Ljava/lang/Object;)Z

    move-result v0

    .line 484
    const-string v2, "SDtvControl"

    const-string v3, "Exiting getComponentInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 485
    .restart local v1    # "bCompInfo":I
    goto :goto_0
.end method

.method public getPlaybackTime()J
    .locals 2

    .prologue
    .line 1262
    const-string v0, "SDtvControl"

    const-string v1, "getPlaybackTime called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeGetPlaybackTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgramInfo([Landroid/broadcast/helper/types/MtvOneSegProgram;)Z
    .locals 4
    .param p1, "progInfo"    # [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "bProgInfo":Z
    const-string v2, "SDtvControl"

    const-string v3, "Entered getProgramInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-boolean v2, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v2, :cond_0

    .line 522
    const-string v2, "SDtvControl"

    const-string v3, "Native Create not yet done!! Do Create First!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v2, "SDtvControl"

    const-string v3, "Exiting getProgramInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 529
    .end local v0    # "bProgInfo":Z
    .local v1, "bProgInfo":I
    :goto_0
    return v1

    .line 526
    .end local v1    # "bProgInfo":I
    .restart local v0    # "bProgInfo":Z
    :cond_0
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeGetProgramInfo([Ljava/lang/Object;)Z

    move-result v0

    .line 528
    const-string v2, "SDtvControl"

    const-string v3, "Exiting getProgramInfo()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 529
    .restart local v1    # "bProgInfo":I
    goto :goto_0
.end method

.method public getSigStats(Landroid/broadcast/helper/types/MtvOneSegSignal;)Z
    .locals 4
    .param p1, "sigStat"    # Landroid/broadcast/helper/types/MtvOneSegSignal;

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "bSigStat":Z
    iget-boolean v2, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v2, :cond_0

    .line 563
    const-string v2, "SDtvControl"

    const-string v3, "Native Create not yet done!! Do Create First!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v2, "SDtvControl"

    const-string v3, "Exiting getSigStats()"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 569
    .end local v0    # "bSigStat":Z
    .local v1, "bSigStat":I
    :goto_0
    return v1

    .line 567
    .end local v1    # "bSigStat":I
    .restart local v0    # "bSigStat":Z
    :cond_0
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeGetSignalStatistics(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    .line 569
    .restart local v1    # "bSigStat":I
    goto :goto_0
.end method

.method public getStreamTime()J
    .locals 6

    .prologue
    .line 538
    const-wide/16 v0, -0x1

    .line 540
    .local v0, "lStreamTime":J
    const-string v4, "SDtvControl"

    const-string v5, "Entered getStreamTime()"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-boolean v4, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v4, :cond_0

    .line 543
    const-string v4, "SDtvControl"

    const-string v5, "Native Create not yet done!! Do Create First!!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v4, "SDtvControl"

    const-string v5, "Exiting getStreamTime()"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 550
    .end local v0    # "lStreamTime":J
    .local v2, "lStreamTime":J
    :goto_0
    return-wide v2

    .line 547
    .end local v2    # "lStreamTime":J
    .restart local v0    # "lStreamTime":J
    :cond_0
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeGetStreamTimeLongType()J

    move-result-wide v0

    .line 549
    const-string v4, "SDtvControl"

    const-string v5, "Exiting getStreamTime()"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 550
    .end local v0    # "lStreamTime":J
    .restart local v2    # "lStreamTime":J
    goto :goto_0
.end method

.method public open(IILjava/lang/String;I)Z
    .locals 8
    .param p1, "playType"    # I
    .param p2, "chnlNum"    # I
    .param p3, "fPath"    # Ljava/lang/String;
    .param p4, "fileIndex"    # I

    .prologue
    const/4 v7, 0x0

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "bOpen":Z
    const/4 v3, -0x1

    .line 398
    .local v3, "playMode":I
    move v2, p4

    .line 400
    .local v2, "iServiceID":I
    const-string v4, "SDtvControl"

    const-string v5, "Entered open()"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v4, "SDtvControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open: playType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] chnlNum ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fPath ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fileIndex ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iput-boolean v7, p0, Landroid/broadcast/sdtv/SDtvControl;->mIsBuffering:Z

    .line 405
    iput v7, p0, Landroid/broadcast/sdtv/SDtvControl;->bufferingEventCount:I

    .line 407
    iget-boolean v4, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v4, :cond_0

    .line 409
    const-string v4, "SDtvControl"

    const-string v5, "Native Create not yet done!! Do Create First!!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v4, "SDtvControl"

    const-string v5, "Exiting open()"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 431
    .end local v0    # "bOpen":Z
    .local v1, "bOpen":I
    :goto_0
    return v1

    .line 414
    .end local v1    # "bOpen":I
    .restart local v0    # "bOpen":Z
    :cond_0
    const/4 v4, 0x4

    if-ne v4, p1, :cond_3

    .line 415
    const/4 v3, 0x2

    .line 420
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 421
    sget-boolean v4, Landroid/broadcast/sdtv/SDtvControl;->isNativeClosing:Z

    if-eqz v4, :cond_1

    .line 422
    const-string v4, "SDtvControl"

    const-string v5, "nativeClose didnt give response, still opening new one. Lets check later!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_1
    sput-boolean v7, Landroid/broadcast/sdtv/SDtvControl;->isNativeClosing:Z

    .line 425
    invoke-static {v3, p2, p3, p4}, Landroid/broadcast/sdtv/SDtvControl;->nativeOpen(IILjava/lang/String;I)Z

    move-result v0

    .line 426
    if-nez v0, :cond_2

    .line 428
    sput-boolean v7, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    .line 430
    :cond_2
    const-string v4, "SDtvControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exiting open() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Landroid/broadcast/sdtv/SDtvControl;->isNativeOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 431
    .restart local v1    # "bOpen":I
    goto :goto_0

    .line 417
    .end local v1    # "bOpen":I
    :cond_3
    move v3, p1

    goto :goto_1
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 1222
    const-string v0, "SDtvControl"

    const-string v1, "Pause called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativePause()Z

    move-result v0

    return v0
.end method

.method public renameTVFile(ILjava/lang/String;)Z
    .locals 4
    .param p1, "fileIndex"    # I
    .param p2, "renameString"    # Ljava/lang/String;

    .prologue
    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "bRenameTVFile":Z
    const-string v1, "SDtvControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entered renameTVFile() fileIndex["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] renameString["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] bytelength["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-static {p1, p2}, Landroid/broadcast/sdtv/SDtvControl;->nativeRenameTVRecFile(ILjava/lang/String;)Z

    move-result v0

    .line 1306
    const-string v2, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting renameTvFile() with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string v1, "Success"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    return v0

    .line 1306
    :cond_0
    const-string v1, "Fail"

    goto :goto_0
.end method

.method public reposition(I)Z
    .locals 3
    .param p1, "curTimeStamp"    # I

    .prologue
    .line 1253
    const-string v0, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reposition called ["

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

    .line 1254
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeReposition(I)Z

    move-result v0

    return v0
.end method

.method public resume()Z
    .locals 2

    .prologue
    .line 1231
    const-string v0, "SDtvControl"

    const-string v1, "Resume called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeResume()Z

    move-result v0

    return v0
.end method

.method public scanChannel(I)Z
    .locals 6
    .param p1, "chnlNum"    # I

    .prologue
    const/4 v5, 0x1

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "bCheckChnl":Z
    const/4 v2, -0x1

    .line 604
    .local v2, "retParserFilt":I
    const-string v3, "SDtvControl"

    const-string v4, "Entered scanChannel()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-boolean v3, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v3, :cond_0

    .line 607
    const-string v3, "SDtvControl"

    const-string v4, "Native Create not yet done!! Do Create First!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v3, "SDtvControl"

    const-string v4, "Exiting scanChannel()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 623
    .end local v0    # "bCheckChnl":Z
    .local v1, "bCheckChnl":I
    :goto_0
    return v1

    .line 611
    .end local v1    # "bCheckChnl":I
    .restart local v0    # "bCheckChnl":Z
    :cond_0
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeScan(I)Z

    move-result v0

    .line 612
    if-ne v0, v5, :cond_1

    .line 613
    const/16 v3, 0x20

    invoke-static {v3}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetParserFilter(I)I

    move-result v2

    .line 615
    if-ne v2, v5, :cond_2

    .line 616
    const-string v3, "SDtvControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lucky You!! Chnl ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is available and successfully set the Scan filter too!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_1
    :goto_1
    const-string v3, "SDtvControl"

    const-string v4, "Exiting scanChannel()"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 623
    .restart local v1    # "bCheckChnl":I
    goto :goto_0

    .line 618
    .end local v1    # "bCheckChnl":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setAudioEnable(I)V
    .locals 3
    .param p1, "audioEnable"    # I

    .prologue
    .line 1325
    const-string v0, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioEnable called ["

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

    .line 1326
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetAudioEnable(I)V

    .line 1327
    return-void
.end method

.method public setAudioMode(I)V
    .locals 3
    .param p1, "audioMode"    # I

    .prologue
    .line 1282
    const-string v0, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode called ["

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

    .line 1283
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetAudioMode(I)V

    .line 1284
    return-void
.end method

.method public setFrameRateChange(I)V
    .locals 3
    .param p1, "fMode"    # I

    .prologue
    .line 1316
    const-string v0, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameRateChange called ["

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

    .line 1317
    invoke-static {p1}, Landroid/broadcast/sdtv/SDtvControl;->nativesetFrameRateChange(I)V

    .line 1318
    return-void
.end method

.method public setIsLocalPlay(Z)V
    .locals 0
    .param p1, "mLocalPlay"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Landroid/broadcast/sdtv/SDtvControl;->mIsLocalPlay:Z

    .line 298
    return-void
.end method

.method public setSoundEffect(II)V
    .locals 3
    .param p1, "outType"    # I
    .param p2, "audioEffect"    # I

    .prologue
    .line 1272
    const-string v0, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundEffect called ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-static {p1, p2}, Landroid/broadcast/sdtv/SDtvControl;->nativeSetSoundEffect(II)V

    .line 1274
    return-void
.end method

.method public trickmode(III)Z
    .locals 3
    .param p1, "trickMode"    # I
    .param p2, "trickSpeed"    # I
    .param p3, "currTimeStamp"    # I

    .prologue
    .line 1243
    const-string v0, "SDtvControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trickmode called ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    invoke-static {p1, p2, p3}, Landroid/broadcast/sdtv/SDtvControl;->nativeTrickmode(III)Z

    move-result v0

    return v0
.end method

.method public tunerPowerCtrl(Z)V
    .locals 2
    .param p1, "bPowerOn"    # Z

    .prologue
    .line 1178
    iget-boolean v0, p0, Landroid/broadcast/sdtv/SDtvControl;->bIsNativeCreateDone:Z

    if-nez v0, :cond_0

    .line 1180
    const-string v0, "SDtvControl"

    const-string v1, "Native Create not yet done!! Do Create First!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v0, "SDtvControl"

    const-string v1, "Exiting tunerPowerCtrl()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :goto_0
    return-void

    .line 1184
    :cond_0
    if-eqz p1, :cond_1

    .line 1185
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeTunerPowerOn()V

    goto :goto_0

    .line 1187
    :cond_1
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeTunerPowerOff()V

    goto :goto_0
.end method

.method public updateTVFilesDB()V
    .locals 2

    .prologue
    .line 1195
    const-string v0, "SDtvControl"

    const-string v1, "updateTVFilesDB - Start"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    invoke-static {}, Landroid/broadcast/sdtv/SDtvControl;->nativeUpdateTvFilesDB()V

    .line 1197
    const-string v0, "SDtvControl"

    const-string v1, "updateTVFilesDB - Exit"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    return-void
.end method
