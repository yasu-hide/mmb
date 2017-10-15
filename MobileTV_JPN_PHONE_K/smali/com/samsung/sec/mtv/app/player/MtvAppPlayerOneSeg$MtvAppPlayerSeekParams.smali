.class Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
.super Ljava/lang/Object;
.source "MtvAppPlayerOneSeg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtvAppPlayerSeekParams"
.end annotation


# instance fields
.field private mCurTimeStamp:I

.field private mSeekFail:Z

.field private mSeekStatus:I

.field private mSeekedTimeStamp:I

.field private mTrickMode:I

.field private mTrickSpeed:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mCurTimeStamp:I

    .line 115
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mTrickMode:I

    .line 116
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mTrickSpeed:I

    .line 117
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekFail:Z

    .line 118
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekStatus:I

    .line 119
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekedTimeStamp:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mTrickMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mTrickMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mTrickSpeed:I

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mTrickSpeed:I

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mCurTimeStamp:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mCurTimeStamp:I

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekedTimeStamp:I

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekedTimeStamp:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekFail:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekFail:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;

    .prologue
    .line 113
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekStatus:I

    return v0
.end method

.method static synthetic access$3202(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerSeekParams;->mSeekStatus:I

    return p1
.end method
