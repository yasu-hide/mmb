.class Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
.super Ljava/lang/Object;
.source "MtvOneSegRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtvOneSegServiceSetCmdInfo"
.end annotation


# instance fields
.field private mCurCmd:I

.field private mCurCmdError:Z

.field private mCurCmdStatus:I

.field private mCurMdl:I

.field private mNextCmd:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmd:I

    .line 135
    iput v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmdStatus:I

    .line 136
    iput v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    .line 137
    iput v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mNextCmd:I

    .line 138
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmdError:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$1;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmdError:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmdError:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmd:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmd:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmdStatus:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurCmdStatus:I

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    return p1
.end method

.method static synthetic access$1576(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mCurMdl:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mNextCmd:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/samsung/sec/mtv/app/service/MtvOneSegRemoteService$MtvOneSegServiceSetCmdInfo;->mNextCmd:I

    return p1
.end method
