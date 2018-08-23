.class Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwAutoReceiveTlvTransfer.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$1;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;
    }
.end annotation


# instance fields
.field private mInitialized:Z

.field private mLengthSize:I

.field private mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

.field private mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;

.field private mReceiveProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

.field private mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

.field private mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;

.field private mTypeSize:I


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;II)V
    .locals 2
    .param p1, "aTransfer"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;
    .param p2, "aTypeSize"    # I
    .param p3, "aLengthSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$1;)V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;

    .line 33
    new-instance v0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;

    invoke-direct {v0, p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$1;)V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v0, "null == aTransfer"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    if-eq v0, p2, :cond_1

    .line 54
    const-string v0, "Byte.SIZE / 8 != aTypeSize"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_1
    const/4 v0, 0x4

    if-eq v0, p3, :cond_2

    .line 58
    const-string v0, "Integer.SIZE / 8 != aLengthSize"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_2
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    .line 63
    iput p2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTypeSize:I

    .line 64
    iput p3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mLengthSize:I

    .line 66
    return-void
.end method

.method static synthetic access$200(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    .prologue
    .line 27
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mReceiveProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    return-object v0
.end method

.method static synthetic access$202(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
    .param p1, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    .prologue
    .line 27
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mReceiveProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ReceiveProcess;

    return-object p1
.end method

.method static synthetic access$300(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    .prologue
    .line 27
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mProcessListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$ProcessListener;

    return-object v0
.end method

.method static synthetic access$400(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    .prologue
    .line 27
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    .prologue
    .line 27
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTypeSize:I

    return v0
.end method

.method static synthetic access$600(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;)I
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;

    .prologue
    .line 27
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mLengthSize:I

    return v0
.end method

.method static synthetic access$700(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;[B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;
    .param p1, "x1"    # [B

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "aBuffer"    # [B

    .prologue
    .line 295
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 296
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 298
    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->disconnect()V

    .line 172
    return-void
.end method

.method public initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;)V
    .locals 4
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    const-string v1, "null == aListener"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 83
    :cond_0
    iget-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mInitialized:Z

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "mInitialized"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 90
    .local v0, "isSuccess":Z
    :try_start_0
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    .line 91
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    iget-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTransferListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer$TransferListener;

    invoke-interface {v1, v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->initialize(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v0, 0x1

    .line 94
    if-nez v0, :cond_2

    .line 95
    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    .line 99
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mInitialized:Z

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    .line 95
    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    :cond_3
    throw v1
.end method

.method public send(Ljava/lang/Object;)V
    .locals 5
    .param p1, "aData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v2, p1

    check-cast v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;

    .line 136
    .local v2, "tvData":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;
    iget-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    array-length v3, v3

    iget v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTypeSize:I

    if-eq v3, v4, :cond_0

    .line 137
    const-string v3, "tvData.mType.length != mTypeSize"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 138
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 143
    :cond_0
    iget-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    if-nez v3, :cond_1

    .line 144
    const-string v3, "null == tvData.mValue"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 145
    iget v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTypeSize:I

    iget v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mLengthSize:I

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 146
    .local v1, "buffer":[B
    invoke-direct {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 148
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 158
    :goto_0
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v3, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->send(Ljava/lang/Object;)V

    .line 160
    return-void

    .line 150
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buffer":[B
    :cond_1
    iget v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTypeSize:I

    iget v4, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mLengthSize:I

    add-int/2addr v3, v4

    iget-object v4, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v1, v3, [B

    .line 151
    .restart local v1    # "buffer":[B
    invoke-direct {p0, v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->getByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 152
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    iget-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mType:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    iget-object v3, v2, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmTvData;->mValue:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public uninitialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    iget-boolean v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mInitialized:Z

    if-nez v0, :cond_0

    .line 113
    const-string v0, "!mInitialized"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logD(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mTransfer:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer;->uninitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iput-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    .line 122
    iput-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mInitialized:Z

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTransfer$Listener;

    .line 122
    iput-boolean v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwAutoReceiveTlvTransfer;->mInitialized:Z

    throw v0
.end method
