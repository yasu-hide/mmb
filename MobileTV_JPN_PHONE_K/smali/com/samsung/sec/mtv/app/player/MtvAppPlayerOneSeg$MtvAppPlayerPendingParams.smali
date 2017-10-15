.class Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
.super Ljava/lang/Object;
.source "MtvAppPlayerOneSeg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtvAppPlayerPendingParams"
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCmdExtraInfo:I

.field private mCmdStatus:I

.field private mNewContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mNewURI:Landroid/broadcast/helper/MtvURI;

.field private mPendingCmd:I

.field private mcmdServiced:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mcmdServiced:Z

    .line 101
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mPendingCmd:I

    .line 102
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mCmdStatus:I

    .line 103
    iput v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mCmdExtraInfo:I

    .line 104
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mAppContext:Landroid/content/Context;

    .line 105
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mNewURI:Landroid/broadcast/helper/MtvURI;

    .line 106
    iput-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mNewContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$1;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mAppContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mNewURI:Landroid/broadcast/helper/MtvURI;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Landroid/broadcast/helper/MtvURI;)Landroid/broadcast/helper/MtvURI;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .param p1, "x1"    # Landroid/broadcast/helper/MtvURI;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mNewURI:Landroid/broadcast/helper/MtvURI;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .prologue
    .line 99
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mPendingCmd:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mPendingCmd:I

    return p1
.end method

.method static synthetic access$3000(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mcmdServiced:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mcmdServiced:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .prologue
    .line 99
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mCmdExtraInfo:I

    return v0
.end method

.method static synthetic access$3102(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mCmdExtraInfo:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .prologue
    .line 99
    iget v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mCmdStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mCmdStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mNewContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mNewContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcmdServiced : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mcmdServiced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingCmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mPendingCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCmdStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mCmdStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNewURI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->mNewURI:Landroid/broadcast/helper/MtvURI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
