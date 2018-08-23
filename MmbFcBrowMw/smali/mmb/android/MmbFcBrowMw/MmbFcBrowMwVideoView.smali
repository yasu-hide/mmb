.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
.super Landroid/view/ViewGroup;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$1;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;,
        Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;
    }
.end annotation


# static fields
.field private static final CAPTION_SIZE_LAND:[[I

.field private static final CAPTION_SIZE_PORT:[[I


# instance fields
.field private final H264_ASPECT_16_9:I

.field private final H264_ASPECT_4_3:I

.field private final SET_CAPTION:I

.field private final SET_DISPLAY:I

.field private final SET_DISPLAY_AND_CAPTION:I

.field private audioMute:I

.field private captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

.field private context:Landroid/content/Context;

.field private isLoop:Z

.field private isQuirksMode:Z

.field private isRegisterMedia:Z

.field isSetDataSource:Z

.field private isTrickplay:Z

.field private mediaCB:I

.field private mediaData:I

.field private mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

.field private mediaState:I

.field private mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field private trickPlayProhibitArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private videoUpdate:Z

.field private videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

.field private videoViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 95
    const/16 v0, 0x12

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    .line 97
    const/16 v0, 0x12

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    sput-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    return-void

    .line 95
    :array_0
    .array-data 4
        0x94
        0x34
    .end array-data

    :array_1
    .array-data 4
        0xc4
        0x44
    .end array-data

    :array_2
    .array-data 4
        0xf4
        0x54
    .end array-data

    :array_3
    .array-data 4
        0x124
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x154
        0x74
    .end array-data

    :array_5
    .array-data 4
        0x184
        0x84
    .end array-data

    :array_6
    .array-data 4
        0x1b4
        0x94
    .end array-data

    :array_7
    .array-data 4
        0x1e4
        0xa4
    .end array-data

    :array_8
    .array-data 4
        0x214
        0xb4
    .end array-data

    :array_9
    .array-data 4
        0x244
        0xc4
    .end array-data

    :array_a
    .array-data 4
        0x274
        0xd4
    .end array-data

    :array_b
    .array-data 4
        0x2a4
        0xe4
    .end array-data

    :array_c
    .array-data 4
        0x2d4
        0xf4
    .end array-data

    :array_d
    .array-data 4
        0x304
        0x104
    .end array-data

    :array_e
    .array-data 4
        0x334
        0x114
    .end array-data

    :array_f
    .array-data 4
        0x364
        0x124
    .end array-data

    :array_10
    .array-data 4
        0x394
        0x134
    .end array-data

    :array_11
    .array-data 4
        0x3c4
        0x144
    .end array-data

    .line 97
    :array_12
    .array-data 4
        0xc4
        0x28
    .end array-data

    :array_13
    .array-data 4
        0x104
        0x34
    .end array-data

    :array_14
    .array-data 4
        0x144
        0x40
    .end array-data

    :array_15
    .array-data 4
        0x184
        0x4c
    .end array-data

    :array_16
    .array-data 4
        0x1c4
        0x58
    .end array-data

    :array_17
    .array-data 4
        0x204
        0x64
    .end array-data

    :array_18
    .array-data 4
        0x244
        0x70
    .end array-data

    :array_19
    .array-data 4
        0x284
        0x7c
    .end array-data

    :array_1a
    .array-data 4
        0x2c4
        0x88
    .end array-data

    :array_1b
    .array-data 4
        0x304
        0x94
    .end array-data

    :array_1c
    .array-data 4
        0x344
        0xa0
    .end array-data

    :array_1d
    .array-data 4
        0x384
        0xac
    .end array-data

    :array_1e
    .array-data 4
        0x3c4
        0xb8
    .end array-data

    :array_1f
    .array-data 4
        0x404
        0xc4
    .end array-data

    :array_20
    .array-data 4
        0x444
        0xd0
    .end array-data

    :array_21
    .array-data 4
        0x484
        0xdc
    .end array-data

    :array_22
    .array-data 4
        0x4c4
        0xe8
    .end array-data

    :array_23
    .array-data 4
        0x504
        0xf4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isRegisterMedia:Z

    .line 84
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isQuirksMode:Z

    .line 85
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isLoop:Z

    .line 86
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->audioMute:I

    .line 87
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isSetDataSource:Z

    .line 89
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->SET_DISPLAY:I

    .line 90
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->SET_CAPTION:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->SET_DISPLAY_AND_CAPTION:I

    .line 92
    iput v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->H264_ASPECT_16_9:I

    .line 93
    iput v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->H264_ASPECT_4_3:I

    .line 109
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->context:Landroid/content/Context;

    .line 110
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "MmbFcBrowMwVideoView(Context cxt)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method static synthetic access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .prologue
    .line 70
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    return-object v0
.end method

.method static synthetic access$1100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .prologue
    .line 70
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    return-object v0
.end method

.method static synthetic access$2000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .prologue
    .line 70
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    return-object v0
.end method

.method static synthetic access$2100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .prologue
    .line 70
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->audioMute:I

    return v0
.end method

.method static synthetic access$2600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isLoop:Z

    return v0
.end method

.method static synthetic access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .prologue
    .line 70
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    return-object v0
.end method

.method static synthetic access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .prologue
    .line 70
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    return v0
.end method


# virtual methods
.method addTrickPlayArea(II)V
    .locals 2
    .param p1, "aStart"    # I
    .param p2, "aEnd"    # I

    .prologue
    .line 705
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 709
    .local v0, "trickplayarea":Landroid/graphics/Point;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getCurrentPosition()I
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 563
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPosition()() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getCurrentPosition()I

    move-result v0

    .line 567
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDuration()I
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 572
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VideoView getDuration ExIF In : getDuration() "

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getDuration()I

    move-result v0

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaCB()I
    .locals 2

    .prologue
    .line 874
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getMediaCB()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 875
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaCB:I

    return v0
.end method

.method public getMediaData()I
    .locals 2

    .prologue
    .line 898
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getMediaData()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 899
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaData:I

    return v0
.end method

.method public getMediaState()I
    .locals 2

    .prologue
    .line 922
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getMediaState()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 923
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaState:I

    return v0
.end method

.method public getMediaUpdate()Z
    .locals 2

    .prologue
    .line 946
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "getMediaUpdate()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 947
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoUpdate:Z

    return v0
.end method

.method getTrickPlayArea(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "aIndex"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 716
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    goto :goto_0
.end method

.method getTrickPlayAreaSize()I
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 721
    const/4 v0, 0x0

    .line 723
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVideoHeight()I
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VideoView GetHeight ExIF In : getVideoHeight() "

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getVideoHeight()I

    move-result v0

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVideoViewId()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 432
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getVideoViewTargetState()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    return v0
.end method

.method getVideoWidth()I
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 538
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VideoView GetWidth ExIF In : getVideoWidth() "

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getVideoWidth()I

    move-result v0

    .line 542
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVolume()F
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getVolume()F

    move-result v0

    .line 654
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method hideMediaController()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaControlHide()V

    .line 768
    :cond_0
    return-void
.end method

.method public initMmbFcBrowMwVideoView()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "initMmbFcBrowMwVideoView"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;Landroid/content/Context;)V

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .line 123
    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;Landroid/content/Context;)V

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    .line 126
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-virtual {p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->addView(Landroid/view/View;)V

    .line 127
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->addView(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-virtual {v1, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->setZOrderMediaOverlay(Z)V

    .line 130
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 131
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "video view layout left=%d, top=%d, right=%d, bottom=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v1, v6, v6, v7, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->layout(IIII)V

    .line 146
    return-void

    .line 133
    :pswitch_0
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "captionView: layout(0,0,captionSizePort[0][0] : %d,captionSizePort[0][1]) : %d"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v4, v4, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v4, v4, v5

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v3, v3, v5

    aget v3, v3, v6

    invoke-virtual {v1, v5, v5, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->layout(IIII)V

    goto :goto_0

    .line 140
    :pswitch_1
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "captionView: layout(0,0,captionSizeLand[0][0] : %d,captionSizeLand[0][1]) : %d"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v4, v4, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v4, v4, v5

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v2, v2, v5

    aget v2, v2, v5

    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v3, v3, v5

    aget v3, v3, v6

    invoke-virtual {v1, v5, v5, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->layout(IIII)V

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isDrawLastFrameable()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x4

    .line 805
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-nez v0, :cond_0

    .line 809
    :goto_0
    return v2

    .line 808
    :cond_0
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrawLastFrameable() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 808
    goto :goto_1

    :cond_2
    move v1, v2

    .line 809
    goto :goto_2
.end method

.method isLoop()Z
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 685
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isLoop:Z

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPlayCompleted()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x5

    .line 813
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return v2

    .line 816
    :cond_0
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlayCompleted() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v0, v6, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 816
    goto :goto_1

    :cond_2
    move v1, v2

    .line 817
    goto :goto_2
.end method

.method isPlaying()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isPlaying()Z

    move-result v0

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isQuirksMode()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isQuirksMode:Z

    return v0
.end method

.method isReachPlayEnd()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->isReachPlayEnd()Z

    move-result v0

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegisterMedia()Z
    .locals 3

    .prologue
    .line 970
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isRegisterMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 971
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isRegisterMedia:Z

    return v0
.end method

.method isStopable()Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 796
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-nez v0, :cond_0

    .line 801
    :goto_0
    return v2

    .line 799
    :cond_0
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStopable() --> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v0, v7, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v0, v7, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 799
    goto :goto_1

    :cond_2
    move v1, v2

    .line 801
    goto :goto_2
.end method

.method isTrickplay()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isTrickplay:Z

    return v0
.end method

.method mediaReset(Z)V
    .locals 1
    .param p1, "aCleartargetstate"    # Z

    .prologue
    .line 691
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->reset(Z)V

    .line 694
    :cond_0
    return-void
.end method

.method public onCompletion(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 2
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 197
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "onCompletion(MmbFcMp4MwPlayer mp)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitVideoViewCompletion(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public onDimChange(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;ILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V
    .locals 9
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aVideoFrameInfo"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 245
    sget-object v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v4, "onDimChange(MmbFcMp4MwPlayer aMp, int aWhat : %d, MmbFcMp4MwVideoFrameInfo aVideoFrameInfo)"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v3, :cond_1

    .line 247
    if-eqz p3, :cond_1

    .line 248
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcValidWidth()J

    move-result-wide v4

    long-to-int v2, v4

    .line 249
    .local v2, "width":I
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getSrcValidHeight()J

    move-result-wide v4

    long-to-int v0, v4

    .line 250
    .local v0, "height":I
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getVideoWidth()I

    move-result v1

    .line 251
    .local v1, "videowidth":I
    invoke-virtual {p3}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;->getAspectRatio()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 258
    :goto_0
    invoke-virtual {p0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setVideoWidth(I)V

    .line 259
    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setVideoHeight(I)V

    .line 260
    if-eq v2, v1, :cond_0

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isFullScreenMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {p0, v7, v7, v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->layout(IIII)V

    .line 262
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getHeight()I

    move-result v4

    invoke-virtual {p0, v8, v8, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->layout(IIII)V

    .line 263
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaControlHide()V

    .line 264
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v3, v7}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaControlShow(Z)V

    .line 266
    :cond_0
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    invoke-virtual {v3, v4, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onDimChangeEvent(IILmmb/android/MmbFcMp4Mw/MmbFcMp4MwVideoFrameInfo;)V

    .line 269
    .end local v0    # "height":I
    .end local v1    # "videowidth":I
    .end local v2    # "width":I
    :cond_1
    return-void

    .line 253
    .restart local v0    # "height":I
    .restart local v1    # "videowidth":I
    .restart local v2    # "width":I
    :pswitch_0
    mul-int/lit8 v3, v0, 0x10

    div-int/lit8 v2, v3, 0x9

    .line 254
    goto :goto_0

    .line 256
    :pswitch_1
    mul-int/lit8 v3, v0, 0x4

    div-int/lit8 v2, v3, 0x3

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 2
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    .line 212
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "onError(MediaPlayer mp, int what, int extra)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->removeMessages(I)V

    .line 215
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    invoke-virtual {v0, v1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitVideoViewError(III)V

    .line 217
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;II)Z
    .locals 6
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;
    .param p2, "aWhat"    # I
    .param p3, "aExtra"    # I

    .prologue
    const/4 v5, 0x1

    .line 229
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "onInfo(MmbFcMp4MwPlayer aMp, int aWhat : %d, int aExtra : %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    invoke-virtual {v0, v1, p2, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onInfoEvent(III)V

    .line 233
    :cond_0
    return v5
.end method

.method protected onLayout(ZIIII)V
    .locals 29
    .param p1, "aChanged"    # Z
    .param p2, "aLeft"    # I
    .param p3, "aTop"    # I
    .param p4, "aRight"    # I
    .param p5, "aBottom"    # I

    .prologue
    .line 281
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "VideoView onLayout() changed=%b, left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 282
    const/16 v23, 0x1

    move/from16 v0, v23

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 283
    invoke-virtual/range {p0 .. p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getHeight()I

    move-result v20

    .line 284
    .local v20, "viewheight":I
    invoke-virtual/range {p0 .. p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getWidth()I

    move-result v21

    .line 285
    .local v21, "viewwidth":I
    const/4 v14, 0x0

    .line 286
    .local v14, "scaledheightsize":I
    const/4 v15, 0x0

    .line 287
    .local v15, "scaledwidthsize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getHeight()I

    move-result v10

    .line 289
    .local v10, "originalVideoViewHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getWidth()I

    move-result v11

    .line 290
    .local v11, "originalVideoViewWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getVideoHeight()I

    move-result v18

    .line 291
    .local v18, "videoheight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getVideoWidth()I

    move-result v19

    .line 292
    .local v19, "videowidth":I
    if-eqz v18, :cond_0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isFullScreenMode()Z

    move-result v23

    if-nez v23, :cond_3

    .line 293
    :cond_0
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "video view layout left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->layout(IIII)V

    .line 295
    move/from16 v15, v21

    .line 296
    move/from16 v14, v20

    .line 314
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getHeight()I

    move-result v23

    move/from16 v0, v23

    if-ne v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->getWidth()I

    move-result v23

    move/from16 v0, v23

    if-ne v11, v0, :cond_1

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 317
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF In : drawLastFrame() 2"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->drawLastFrame()V

    .line 319
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF Out : drawLastFrame() 2"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 323
    .end local v10    # "originalVideoViewHeight":I
    .end local v11    # "originalVideoViewWidth":I
    .end local v18    # "videoheight":I
    .end local v19    # "videowidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 324
    const/4 v7, 0x0

    .local v7, "height":I
    const/16 v22, 0x0

    .line 325
    .local v22, "width":I
    div-int/lit8 v5, v14, 0x3

    .line 326
    .local v5, "captionareaheight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 327
    .local v6, "conf":Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 406
    .end local v5    # "captionareaheight":I
    .end local v6    # "conf":Landroid/content/res/Configuration;
    .end local v7    # "height":I
    .end local v14    # "scaledheightsize":I
    .end local v15    # "scaledwidthsize":I
    .end local v20    # "viewheight":I
    .end local v21    # "viewwidth":I
    .end local v22    # "width":I
    :cond_2
    :goto_1
    return-void

    .line 298
    .restart local v10    # "originalVideoViewHeight":I
    .restart local v11    # "originalVideoViewWidth":I
    .restart local v14    # "scaledheightsize":I
    .restart local v15    # "scaledwidthsize":I
    .restart local v18    # "videoheight":I
    .restart local v19    # "videowidth":I
    .restart local v20    # "viewheight":I
    .restart local v21    # "viewwidth":I
    :cond_3
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v16, v23, v24

    .line 299
    .local v16, "scaleheight":F
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v17, v23, v24

    .line 300
    .local v17, "scalewidth":F
    const/4 v12, 0x0

    .line 301
    .local v12, "padding":I
    cmpl-float v23, v16, v17

    if-lez v23, :cond_4

    .line 302
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v17

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 303
    move/from16 v15, v21

    .line 304
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "video view layout left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v15, v14}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->layout(IIII)V

    goto/16 :goto_0

    .line 307
    :cond_4
    move/from16 v14, v20

    .line 308
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v16

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 309
    sub-int v23, v21, v15

    div-int/lit8 v12, v23, 0x2

    .line 310
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "video view layout left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    add-int v27, v12, v15

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-int v25, v12, v15

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v14}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->layout(IIII)V

    goto/16 :goto_0

    .line 329
    .end local v10    # "originalVideoViewHeight":I
    .end local v11    # "originalVideoViewWidth":I
    .end local v12    # "padding":I
    .end local v16    # "scaleheight":F
    .end local v17    # "scalewidth":F
    .end local v18    # "videoheight":I
    .end local v19    # "videowidth":I
    .restart local v5    # "captionareaheight":I
    .restart local v6    # "conf":Landroid/content/res/Configuration;
    .restart local v7    # "height":I
    .restart local v22    # "width":I
    :pswitch_0
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v9, v23, -0x1

    .line 330
    .local v9, "length":I
    move v8, v9

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_5

    .line 331
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    if-gt v0, v15, :cond_6

    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v23

    if-gt v0, v5, :cond_6

    .line 335
    :cond_5
    if-gez v8, :cond_7

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 337
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF In : setDispCaption() 1"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDispCaption(Z)V

    .line 339
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF Out : setDispCaption() 1"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 330
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 343
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 344
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF In : setDispCaption() 2"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getVideoCaptionEnableVaule()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDispCaption(Z)V

    .line 346
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF Out : setDispCaption() 2"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 348
    :cond_8
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x0

    aget v22, v23, v24

    .line 349
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x1

    aget v7, v23, v24

    .line 350
    sub-int v23, v21, v22

    div-int/lit8 v13, v23, 0x2

    .line 351
    .local v13, "paddingwidth":I
    if-ltz v13, :cond_9

    sub-int v23, v14, v7

    if-gez v23, :cond_a

    .line 352
    :cond_9
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "caption view layout left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    sget-object v27, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    sget-object v27, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget-object v26, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    sget-object v27, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_PORT:[[I

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->layout(IIII)V

    .line 358
    :goto_3
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "captionView.surfaceHolder: setSizeFromLayout()"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto/16 :goto_1

    .line 355
    :cond_a
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "caption view layout left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    sub-int v27, v14, v7

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    add-int v27, v22, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-object/from16 v23, v0

    sub-int v24, v14, v7

    add-int v25, v22, v13

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2, v14}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->layout(IIII)V

    goto :goto_3

    .line 367
    .end local v8    # "i":I
    .end local v9    # "length":I
    .end local v13    # "paddingwidth":I
    :pswitch_1
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v9, v23, -0x1

    .line 368
    .restart local v9    # "length":I
    div-int/lit8 v5, v14, 0x4

    .line 369
    move v8, v9

    .restart local v8    # "i":I
    :goto_4
    if-lez v8, :cond_b

    .line 370
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    if-gt v0, v15, :cond_c

    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v23

    if-gt v0, v5, :cond_c

    .line 374
    :cond_b
    if-gez v8, :cond_d

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 376
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF In : setDispCaption() 3"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDispCaption(Z)V

    .line 378
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF Out : setDispCaption() 3"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 369
    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 382
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 383
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF In : setDispCaption() 4"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getVideoCaptionEnableVaule()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDispCaption(Z)V

    .line 385
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "Mp4 ExIF Out : setDispCaption() 4"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 387
    :cond_e
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x0

    aget v22, v23, v24

    .line 388
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    aget-object v23, v23, v8

    const/16 v24, 0x1

    aget v7, v23, v24

    .line 389
    sub-int v23, v21, v22

    div-int/lit8 v13, v23, 0x2

    .line 390
    .restart local v13    # "paddingwidth":I
    if-ltz v13, :cond_f

    sub-int v23, v14, v7

    if-gez v23, :cond_10

    .line 391
    :cond_f
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "caption view layout left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    sget-object v27, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x0

    aget v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    sget-object v27, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    sget-object v26, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    sget-object v27, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->CAPTION_SIZE_LAND:[[I

    const/16 v28, 0x0

    aget-object v27, v27, v28

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->layout(IIII)V

    .line 397
    :goto_5
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "captionView.surfaceHolder: setSizeFromLayout()"

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto/16 :goto_1

    .line 394
    :cond_10
    sget-object v23, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v24, "caption view layout left=%d, top=%d, right=%d, bottom=%d"

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    sub-int v27, v14, v7

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    add-int v27, v22, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    move-object/from16 v23, v0

    sub-int v24, v14, v7

    add-int v25, v22, v13

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2, v14}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->layout(IIII)V

    goto :goto_5

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepared(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 2
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 172
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "onPrepared (MmbFcMp4MwPlayer mp)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 173
    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setVideoWidth(I)V

    .line 175
    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->getVideoHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setVideoHeight(I)V

    .line 176
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->getMediaState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 177
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->setMediaState(I)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isTrickplay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setTrickPlayForceDisable()V

    .line 182
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitVideoViewReady(I)V

    .line 186
    :cond_2
    return-void
.end method

.method public onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 2
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 273
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "onSeekComplete(MmbFcMp4MwPlayer aMp"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->onSeekCompleteEvent(I)V

    .line 277
    :cond_0
    return-void
.end method

.method pause()Z
    .locals 3

    .prologue
    .line 593
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "video pause()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    .line 595
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 597
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    .line 599
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->pause()V

    .line 602
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method recoverRejectedState()V
    .locals 3

    .prologue
    .line 821
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-nez v0, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoverRejectedState() videoView Target State  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    goto :goto_0
.end method

.method public releaseMmbFcBrowMwVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "releaseMmbFcBrowMwVideoView"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->trickPlayProhibitArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->removeAllViews()V

    .line 159
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    .line 160
    iput-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    .line 161
    return-void
.end method

.method resetVideoState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 426
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$102(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 428
    :cond_0
    return-void
.end method

.method resume()Z
    .locals 3

    .prologue
    .line 632
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "video resume()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    .line 634
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 641
    :goto_0
    return v0

    .line 638
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->resume()V

    .line 641
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resumeForSuspend()Z
    .locals 3

    .prologue
    .line 619
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "video resumeForSuspend()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    .line 621
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeForSuspend() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 623
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    .line 625
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->resumeForSuspend()V

    .line 628
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method seekTo(I)Z
    .locals 3
    .param p1, "aMsec"    # I

    .prologue
    .line 665
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    .line 666
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 668
    const/4 v0, 0x0

    .line 673
    :goto_0
    return v0

    .line 670
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->seekTo(I)V

    .line 673
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setAudioMute(I)V
    .locals 2
    .param p1, "aAudioMute"    # I

    .prologue
    .line 771
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->audioMute:I

    .line 772
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 773
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setAudioMute() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->audioMute:I

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioMute(I)V

    .line 775
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out : setAudioMute() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 777
    :cond_0
    return-void
.end method

.method setAudioOutDev(I)V
    .locals 2
    .param p1, "aAudioHW"    # I

    .prologue
    const/4 v1, 0x1

    .line 481
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isSetDataSource:Z

    if-ne v1, v0, :cond_0

    .line 482
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setAudioOutDev() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setAudioOutDev(I)V

    .line 484
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out: setAudioOutDev() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 486
    :cond_0
    return-void
.end method

.method setCaptionLang(I)V
    .locals 2
    .param p1, "aLang"    # I

    .prologue
    .line 735
    const/4 v0, 0x1

    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isSetDataSource:Z

    if-ne v0, v1, :cond_0

    .line 736
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setCaptionLang() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setCaptionLang(I)V

    .line 738
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out : setCaptionLang() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 740
    :cond_0
    return-void
.end method

.method setDispCaption(Z)V
    .locals 2
    .param p1, "aEnable"    # Z

    .prologue
    .line 743
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 744
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setDispCaption() 5"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDispCaption(Z)V

    .line 746
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out : setDispCaption() 5"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 748
    :cond_0
    return-void
.end method

.method setLoop(Z)V
    .locals 1
    .param p1, "aLoop"    # Z

    .prologue
    .line 677
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 678
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isLoop:Z

    .line 679
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setLoop(Z)V

    .line 681
    :cond_0
    return-void
.end method

.method public setMediaCB(I)V
    .locals 5
    .param p1, "aMediaCB"    # I

    .prologue
    .line 862
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setMediaCB mediaCB %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 863
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaCB:I

    .line 864
    return-void
.end method

.method setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "aMc"    # Landroid/widget/MediaController;

    .prologue
    .line 409
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 411
    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 415
    :cond_0
    return-void
.end method

.method public setMediaData(I)V
    .locals 5
    .param p1, "aMediaData"    # I

    .prologue
    .line 886
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setMediaData mediaData %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 887
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaData:I

    .line 888
    return-void
.end method

.method setMediaDisplay(I)Z
    .locals 7
    .param p1, "aMode"    # I

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 975
    packed-switch p1, :pswitch_data_0

    .line 1007
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-nez v0, :cond_2

    .line 1008
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v0, v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->removeMessages(I)V

    .line 1010
    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 977
    :pswitch_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v4, :cond_4

    :cond_3
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v5, :cond_4

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v1, v6, :cond_0

    .line 979
    :cond_4
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setDisplay() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 981
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: setDisplay() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto :goto_0

    .line 986
    :pswitch_1
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v4, :cond_6

    :cond_5
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v5, :cond_6

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v1, v6, :cond_0

    .line 988
    :cond_6
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setCaptionDisplay() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setCaptionDisplay(Landroid/view/SurfaceHolder;)V

    .line 990
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: setCaptionDisplay() 2"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    :pswitch_2
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v4, :cond_8

    :cond_7
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eq v1, v5, :cond_8

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-ne v1, v6, :cond_0

    .line 997
    :cond_8
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setDisplay() 3"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 999
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: setDisplay() 3"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1000
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF In : setCaptionDisplay() 3"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1001
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->captionView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setCaptionDisplay(Landroid/view/SurfaceHolder;)V

    .line 1002
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "Mp4 ExIF Out: setCaptionDisplay() 3"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setMediaPlayer(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 1
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 469
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .line 470
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V

    .line 472
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V

    .line 473
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V

    .line 474
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V

    .line 475
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V

    .line 476
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V

    .line 478
    :cond_0
    return-void
.end method

.method public setMediaState(I)V
    .locals 5
    .param p1, "aMediaState"    # I

    .prologue
    .line 910
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setMediaState mediaState %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 911
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaState:I

    .line 912
    return-void
.end method

.method public setMediaUpdate(Z)V
    .locals 5
    .param p1, "aUpdate"    # Z

    .prologue
    .line 934
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setMediaUpdate update %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 935
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoUpdate:Z

    .line 936
    return-void
.end method

.method setMmbFcBrowMwView(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)V
    .locals 1
    .param p1, "aMfbmv"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .prologue
    .line 463
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 464
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mmbFcBrowMwView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 466
    :cond_0
    return-void
.end method

.method setMute(Z)V
    .locals 5
    .param p1, "aMute"    # Z

    .prologue
    .line 658
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setMute mute %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setMute(Z)V

    .line 662
    :cond_0
    return-void
.end method

.method setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;

    .prologue
    .line 786
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnCompletionListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnCompletionListener;)V

    .line 789
    :cond_0
    return-void
.end method

.method setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;

    .prologue
    .line 848
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnDimChangeListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnDimChangeListener;)V

    .line 851
    :cond_0
    return-void
.end method

.method setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;

    .prologue
    .line 830
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnErrorListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnErrorListener;)V

    .line 833
    :cond_0
    return-void
.end method

.method setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;

    .prologue
    .line 842
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnInfoListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnInfoListener;)V

    .line 845
    :cond_0
    return-void
.end method

.method setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;

    .prologue
    .line 780
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnPreparedListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnPreparedListener;)V

    .line 783
    :cond_0
    return-void
.end method

.method setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;

    .prologue
    .line 836
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setOnSeekCompleteListener(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;)V

    .line 839
    :cond_0
    return-void
.end method

.method setQuirksMode(Z)V
    .locals 0
    .param p1, "aIsQuirksMode"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isQuirksMode:Z

    .line 728
    return-void
.end method

.method public setRegisterMedia(Z)V
    .locals 3
    .param p1, "aIsRegisterMedia"    # Z

    .prologue
    .line 958
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRegisterMedia : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 959
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isRegisterMedia:Z

    .line 960
    return-void
.end method

.method setSapMode(I)V
    .locals 2
    .param p1, "aSapMode"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 752
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF In : setSapMode() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->mediaPlayer:Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;->setSapMode(I)V

    .line 754
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "Mp4 ExIF Out : setSapMode() 1"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 756
    :cond_0
    return-void
.end method

.method setTrickplay(Z)V
    .locals 0
    .param p1, "aIsTrickplay"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->isTrickplay:Z

    .line 698
    return-void
.end method

.method setUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "aUri"    # Ljava/lang/String;

    .prologue
    .line 445
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setUri(Ljava/lang/String;)V

    .line 448
    :cond_0
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 5
    .param p1, "aHeight"    # I

    .prologue
    .line 530
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setVideoHeight height %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setVideoHeight(I)V

    .line 534
    :cond_0
    return-void
.end method

.method setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "aPath"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 457
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 460
    :cond_0
    return-void
.end method

.method setVideoViewId(I)V
    .locals 1
    .param p1, "aVideoViewId"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 419
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoViewId:I

    .line 421
    :cond_0
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 5
    .param p1, "aWidth"    # I

    .prologue
    .line 516
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "setVideoWidth width %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setVideoWidth(I)V

    .line 520
    :cond_0
    return-void
.end method

.method setVolume(F)V
    .locals 1
    .param p1, "aVol"    # F

    .prologue
    .line 645
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->setVolume(F)V

    .line 648
    :cond_0
    return-void
.end method

.method showMediaController(Z)V
    .locals 1
    .param p1, "aIsPlaying"    # Z

    .prologue
    .line 759
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->mediaControlShow(Z)V

    .line 762
    :cond_0
    return-void
.end method

.method start()Z
    .locals 3

    .prologue
    .line 580
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "video start()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    .line 582
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 589
    :goto_0
    return v0

    .line 586
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->start()V

    .line 589
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stopPlayback()Z
    .locals 3

    .prologue
    .line 496
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "video stopPlayback()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    .line 498
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlayback() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 505
    :goto_0
    return v0

    .line 502
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->stopPlayback()V

    .line 505
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method suspend()Z
    .locals 3

    .prologue
    .line 606
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "video suspend()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    if-eqz v0, :cond_1

    .line 608
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspend() CurrentState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TargetState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0

    .line 612
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->videoView:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->suspend()V

    .line 615
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
