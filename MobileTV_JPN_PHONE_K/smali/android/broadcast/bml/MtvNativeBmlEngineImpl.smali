.class Landroid/broadcast/bml/MtvNativeBmlEngineImpl;
.super Lcom/access/bml/BMLNativeCallbacks;
.source "MtvNativeBmlEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    }
.end annotation


# static fields
.field static BMLEngineInitStatus:Z = false

.field public static KeyPad_mask:I = 0x0

.field public static final STRING_ENCODE:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "BmlEngineImpl"

.field private static audioHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;",
            ">;"
        }
    .end annotation
.end field

.field public static mTuneAvailable:Z

.field private static mURLstack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mfComponentTag:I

.field public static mfOriginalNetworkID:I

.field public static mfServiceID:I

.field public static mfTransportStreamID:I

.field private static nBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;


# instance fields
.field public intResult:I

.field private isWaiting:Z

.field protected volatile mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

.field private mBmlHandler:Landroid/os/Handler;

.field protected volatile mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

.field private mSetKeyMasking:I

.field private maxAudioHashNum:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    sput-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->nBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 37
    sput-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    .line 41
    sput v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfOriginalNetworkID:I

    .line 42
    sput v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfTransportStreamID:I

    .line 43
    sput v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfServiceID:I

    .line 44
    sput v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfComponentTag:I

    .line 45
    sput-boolean v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mTuneAvailable:Z

    .line 46
    const/4 v0, 0x1

    sput v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->KeyPad_mask:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    .line 53
    sput-boolean v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BMLEngineInitStatus:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/access/bml/BMLNativeCallbacks;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->maxAudioHashNum:I

    .line 39
    iput v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    .line 48
    iput-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    .line 49
    iput-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    .line 52
    iput-boolean v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    .line 85
    new-instance v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$1;

    invoke-direct {v0, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$1;-><init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;)V

    iput-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static byteArrayToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "arr"    # [B

    .prologue
    .line 1785
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1790
    .local v1, "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1786
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1787
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "BmlEngineImpl"

    const-string v3, "UnsupportedEncodingException"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/broadcast/bml/MtvNativeBmlEngineImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 75
    :cond_0
    sget-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->nBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    invoke-direct {v0, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->nBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    .line 78
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    .line 81
    :cond_1
    sget-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->nBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    iput-object p0, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mContext:Landroid/content/Context;

    .line 82
    sget-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->nBmlEngine:Landroid/broadcast/bml/MtvNativeBmlEngineImpl;

    goto :goto_0
.end method


# virtual methods
.method public BML_CB_Audio_ClosePeer(I)V
    .locals 4
    .param p1, "in_id"    # I

    .prologue
    .line 516
    const-string v1, "BmlEngineImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BML_CB_Audio_ClosePeer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    const-string v1, "BmlEngineImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BML_CB_Audio_ClosePeer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "th audio does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    .line 525
    .local v0, "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    sget-object v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    check-cast v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;

    .line 526
    .restart local v0    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    iget-object v1, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 527
    iget-object v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->streamFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 528
    sget-object v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public BML_CB_Audio_GetStatusPeer(I)I
    .locals 5
    .param p1, "in_id"    # I

    .prologue
    .line 629
    const-string v2, "BmlEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BML_CB_Audio_GetStatusPeer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v0, -0x1

    .line 631
    .local v0, "status":I
    const/4 v1, 0x0

    .line 632
    .local v1, "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    sget-object v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    check-cast v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;

    .line 633
    .restart local v1    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    if-eqz v1, :cond_0

    .line 634
    iget v0, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    .line 636
    :cond_0
    const-string v2, "BmlEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BML_CB_Audio_GetStatusPeer: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return v0
.end method

.method public BML_CB_Audio_OpenPeer([BII[B)I
    .locals 11
    .param p1, "in_data"    # [B
    .param p2, "in_mime"    # I
    .param p3, "in_status"    # I
    .param p4, "in_object_id"    # [B

    .prologue
    .line 402
    invoke-static {p4}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "object_id":Ljava/lang/String;
    const-string v8, "BmlEngineImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BML_CB_Audio_OpenPeer: mime "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", object_id st_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "addedindex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->maxAudioHashNum:I

    add-int/lit8 v8, v8, 0x1

    if-gt v5, v8, :cond_2

    .line 408
    sget-object v8, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 410
    const-string v8, "BmlEngineImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "th Sound does not exist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;-><init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;Landroid/broadcast/bml/MtvNativeBmlEngineImpl$1;)V

    .line 413
    .local v7, "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v7, v8}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->setIn_data([B)V

    .line 414
    invoke-virtual {v7, p2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->setIn_mime(I)V

    .line 415
    iput p3, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    .line 416
    invoke-static {p4}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_object_id:Ljava/lang/String;

    .line 417
    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->isReady:Z

    .line 418
    sget-object v8, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v8, "BmlEngineImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "th Sound is added to audioHash"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BMLAudio"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mp4"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->streamFileName:Ljava/lang/String;

    .line 423
    const-string v8, "BmlEngineImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing BML Audio file("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->streamFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v4, 0x0

    .line 426
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v8, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mContext:Landroid/content/Context;

    iget-object v9, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->streamFileName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 427
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    if-eqz v4, :cond_0

    .line 437
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :cond_0
    :goto_1
    const/4 v3, 0x0

    .line 449
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v8, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mContext:Landroid/content/Context;

    iget-object v9, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->streamFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 451
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    :try_start_3
    iget-object v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    :goto_2
    :try_start_4
    iget-object v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 464
    iget-object v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 466
    :try_start_5
    iget-object v8, v7, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 481
    :goto_3
    if-eqz v3, :cond_1

    .line 482
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 489
    :cond_1
    :goto_4
    move v0, v5

    .line 491
    iget v8, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->maxAudioHashNum:I

    if-lt v0, v8, :cond_2

    .line 492
    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->maxAudioHashNum:I

    .line 501
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    :cond_2
    const-string v8, "BmlEngineImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BML_CB_Audio_OpenPeer: return "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return v0

    .line 439
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 429
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 430
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 436
    if-eqz v4, :cond_0

    .line 437
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 439
    :catch_2
    move-exception v1

    .line 441
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 434
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 436
    if-eqz v4, :cond_3

    .line 437
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 442
    :cond_3
    :goto_5
    throw v8

    .line 439
    :catch_3
    move-exception v1

    .line 441
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 454
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 474
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v2

    .line 475
    .local v2, "e1":Ljava/io/FileNotFoundException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 481
    if-eqz v3, :cond_1

    .line 482
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_4

    .line 483
    :catch_6
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 456
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    .line 479
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v8

    .line 481
    if-eqz v3, :cond_4

    .line 482
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 486
    :cond_4
    :goto_6
    throw v8

    .line 458
    :catch_8
    move-exception v1

    .line 459
    .local v1, "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 467
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 469
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_a
    move-exception v1

    .line 471
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_3

    .line 483
    .end local v1    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v1

    .line 485
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 483
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 485
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 498
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    :cond_5
    const-string v8, "BmlEngineImpl"

    const-string v9, "Inside else statement2"

    invoke-static {v8, v9}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public BML_CB_Audio_SetStatusPeer(II)I
    .locals 7
    .param p1, "in_id"    # I
    .param p2, "in_status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 548
    const-string v2, "BmlEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BML_CB_Audio_SetStatusPeer: in_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",in_status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    sget-object v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    check-cast v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;

    .line 553
    .restart local v1    # "tmpBMLAudio":Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;
    if-nez v1, :cond_0

    .line 555
    const-string v2, "BmlEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "th element does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/4 v2, -0x1

    .line 613
    :goto_0
    return v2

    .line 560
    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    move v2, v3

    .line 613
    goto :goto_0

    .line 564
    :pswitch_0
    iget v2, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    if-ne v2, v6, :cond_1

    .line 566
    iget-object v2, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 567
    iput v3, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    .line 568
    const-string v2, "BmlEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": in_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  SLIM_DTV_AUDIO_STATUS_STOP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/16 v2, 0x232d

    iput v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fMediaStopped_EventType:I

    .line 571
    iget-object v2, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_object_id:Ljava/lang/String;

    iput-object v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fMediaStopped_ObjectID:Ljava/lang/String;

    .line 572
    invoke-virtual {p0, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_PostDTVBEvent_MediaStopped(I)Z

    goto :goto_1

    .line 575
    :cond_1
    const-string v2, "BmlEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": in_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not played yet! So no need to stop Media Player !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 579
    :pswitch_1
    iget-object v2, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 580
    iput v3, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    .line 581
    const-string v2, "BmlEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": in_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  SLIM_DTV_AUDIO_STATUS_STOP_NOEVENT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 586
    :pswitch_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->maxAudioHashNum:I

    if-gt v0, v2, :cond_3

    .line 588
    sget-object v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    sget-object v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;

    iget v2, v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    if-ne v2, v6, :cond_2

    .line 591
    const-string v2, "BmlEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is playing continue previous sound!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 595
    :cond_2
    const-string v2, "BmlEngineImpl"

    const-string v4, "Inside else statement3"

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 599
    :cond_3
    iget-boolean v2, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->isReady:Z

    if-nez v2, :cond_4

    .line 601
    const-string v2, "BmlEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": in_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not Ready"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const/4 v2, -0x3

    goto/16 :goto_0

    .line 605
    :cond_4
    iput v6, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->in_status:I

    .line 606
    iget-object v2, v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$BMLAudio;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 607
    const-string v2, "BmlEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": in_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  SLIM_DTV_AUDIO_STATUS_PLAY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 560
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public BML_CB_CancelModalState()I
    .locals 2

    .prologue
    .line 317
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_CancelModalState]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_Control_FinalizePeer()V
    .locals 2

    .prologue
    .line 674
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_Control_FinalizePeer SHOULD be overrided by OEM"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->audioHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 676
    const/4 v0, 0x0

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->maxAudioHashNum:I

    .line 677
    return-void
.end method

.method public BML_CB_Control_InitializePeer(I)I
    .locals 4
    .param p1, "in_profile"    # I

    .prologue
    const/4 v3, 0x0

    .line 657
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Control_InitializePeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iput v3, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->maxAudioHashNum:I

    .line 661
    return v3
.end method

.method public BML_CB_Control_NotifyDocumentPeer(II[B)V
    .locals 3
    .param p1, "in_component_tag"    # I
    .param p2, "in_module_id"    # I
    .param p3, "in_resource"    # [B

    .prologue
    .line 692
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Control_NotifyDocumentPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_component_tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_module_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_resource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public BML_CB_Control_NotifyHaltPeer(I)V
    .locals 7
    .param p1, "in_status"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 718
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Control_NotifyHaltPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    if-ne p1, v5, :cond_0

    .line 723
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    invoke-interface {v0, v5, p1, v3, v4}, Landroid/broadcast/bml/IMtvNativeBmlEngineListener;->onBmlEngineStateChange(IIILjava/lang/Object;)V

    .line 728
    :cond_0
    if-ne p1, v6, :cond_1

    .line 730
    const-string v0, "BmlEngineImpl"

    const-string v1, "need to call book bml_engine.BML_NotifyServiceChangedByBookmark"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    invoke-interface {v0, v6, p1, v3, v4}, Landroid/broadcast/bml/IMtvNativeBmlEngineListener;->onBmlEngineStateChange(IIILjava/lang/Object;)V

    .line 737
    :cond_1
    if-nez p1, :cond_2

    .line 739
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    invoke-interface {v0, v3, v3, v3, v4}, Landroid/broadcast/bml/IMtvNativeBmlEngineListener;->onBmlEngineStateChange(IIILjava/lang/Object;)V

    .line 744
    :cond_2
    return-void
.end method

.method public BML_CB_Control_NotifyLocationPeer([B)V
    .locals 3
    .param p1, "in_uri"    # [B

    .prologue
    .line 755
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Control_NotifyLocationPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_0
    return-void
.end method

.method public BML_CB_Control_NotifyServicePeer(III)V
    .locals 3
    .param p1, "in_original_network_id"    # I
    .param p2, "in_transport_stream_id"    # I
    .param p3, "in_service_id"    # I

    .prologue
    .line 773
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Control_NotifyServicePeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_original_network_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_transport_stream_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_service_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public BML_CB_Control_PlayRomSoundPeer([B)I
    .locals 9
    .param p1, "in_sound_id"    # [B

    .prologue
    .line 794
    const-string v6, "BmlEngineImpl"

    const-string v7, "[BML_CB_Control_PlayRomSoundPeer]"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v6, "BmlEngineImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Input]in_sound_id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v6, "BmlEngineImpl"

    const-string v7, "[Output] Result:0"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const/4 v4, 0x0

    .line 799
    .local v4, "sound_id":I
    const/4 v5, 0x0

    .line 800
    .local v5, "sound_id_st":Ljava/lang/String;
    const/4 v2, 0x0

    .line 801
    .local v2, "isExist":Z
    new-instance v5, Ljava/lang/String;

    .end local v5    # "sound_id_st":Ljava/lang/String;
    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    .line 802
    .restart local v5    # "sound_id_st":Ljava/lang/String;
    const-string v6, "BmlEngineImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BML_CB_Control_PlayRomSoundPeer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x10

    if-ge v1, v6, :cond_0

    .line 808
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 810
    const/4 v2, 0x1

    .line 811
    move v4, v1

    .line 817
    :cond_0
    if-nez v2, :cond_2

    .line 819
    const/16 v6, -0x3f3

    .line 859
    :goto_1
    return v6

    .line 806
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    :cond_2
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 823
    .local v3, "mMediaPlayer":Landroid/media/MediaPlayer;
    new-instance v6, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$3;

    invoke-direct {v6, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$3;-><init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;)V

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 837
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/etc/one-seg/bmlrom_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".wav"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 849
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 857
    :goto_3
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 859
    const/4 v6, 0x0

    goto :goto_1

    .line 838
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 841
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 844
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 846
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 850
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 853
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v0

    .line 855
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public BML_CB_Control_SaveImageToMemoryCardPeer(I[BZ[B)I
    .locals 1
    .param p1, "in_func"    # I
    .param p2, "in_filename"    # [B
    .param p3, "in_overwrite"    # Z
    .param p4, "in_data"    # [B

    .prologue
    .line 976
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p2, p3, p4}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_storeImage([BZ[B)I

    move-result v0

    .line 982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public BML_CB_Control_SaveImageToMemoryCard_CancelPeer()V
    .locals 2

    .prologue
    .line 997
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Control_SaveImageToMemoryCard_CancelPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 999
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    .line 1001
    :cond_1
    return-void
.end method

.method public BML_CB_Control_SetTitlePeer([B)V
    .locals 2
    .param p1, "in_title"    # [B

    .prologue
    .line 1013
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Control_SetTitlePeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public BML_CB_DTV_EVENT_DATAEVENTCHANGED(III)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1735
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1737
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_WindowNew()I

    move-result v0

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    .line 1739
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BML_CB_DTV_EVENT_DATAEVENTCHANGED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_0
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    invoke-virtual {p0, v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_SetBrowserWindow(I)V

    .line 1744
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_EscapeHalt()Z

    .line 1746
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_updateBMLSurfaceView()V

    .line 1751
    :cond_1
    return-void
.end method

.method public BML_CB_DTV_EVENT_HALT(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1758
    return-void
.end method

.method public BML_CB_DTV_EVENT_RETURNTOENTRY()V
    .locals 2

    .prologue
    .line 1765
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_GetHaltStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1770
    :goto_0
    return-void

    .line 1769
    :cond_0
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_NotifyReturnToEntry()Z

    goto :goto_0
.end method

.method public BML_CB_DTV_EVENT_SERVICECHANGED(IIII)V
    .locals 3
    .param p1, "fOriginalNetworkID"    # I
    .param p2, "fTransportStreamID"    # I
    .param p3, "fServiceID"    # I
    .param p4, "fComponentTag"    # I

    .prologue
    .line 1690
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_WindowNew()I

    move-result v0

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    .line 1692
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1693
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BML_CB_DTV_EVENT_SERVICECHANGED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :cond_0
    sput p1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfOriginalNetworkID:I

    .line 1697
    sput p2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfTransportStreamID:I

    .line 1698
    sput p3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mfServiceID:I

    .line 1701
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    invoke-virtual {p0, v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_SetBrowserWindow(I)V

    .line 1702
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_EscapeHalt()Z

    .line 1704
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1706
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_updateBMLSurfaceView()V

    .line 1709
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_NotifyServiceChanged(IIII)Z

    .line 1712
    return-void
.end method

.method public BML_CB_Engine_Halt()I
    .locals 2

    .prologue
    .line 951
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Engine_Status]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_Event_SetEventMaskPeer_MediaStopped(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1777
    return-void
.end method

.method public BML_CB_Event_SetUsedKeyListPeer(I)I
    .locals 3
    .param p1, "in_mask"    # I

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->setKeyPad_mask(I)V

    .line 1037
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_Event_SetUsedKeyListPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_mask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    sparse-switch p1, :sswitch_data_0

    .line 1053
    :goto_0
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlHandler:Landroid/os/Handler;

    new-instance v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$4;

    invoke-direct {v1, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$4;-><init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1063
    const/4 v0, 0x0

    return v0

    .line 1042
    :sswitch_0
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    or-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    .line 1044
    :sswitch_1
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    .line 1046
    :sswitch_2
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    .line 1048
    :sswitch_3
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    .line 1050
    :sswitch_4
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    goto :goto_0

    .line 1040
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public BML_CB_ExecuteHalt(I)I
    .locals 6
    .param p1, "in_halt_status"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_ExecuteHalt]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_halt_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BML_CB_ExecuteHalt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BML_CB_ExecuteHalt: BML Engine is Halted because of ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-ne p1, v5, :cond_0

    .line 274
    sput-boolean v4, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mTuneAvailable:Z

    .line 276
    :cond_0
    if-ne p1, v4, :cond_1

    .line 278
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->m_BMLView:Lcom/access/bml/BMLNativeView;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->m_BMLView:Lcom/access/bml/BMLNativeView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/access/bml/BMLNativeView;->updateCanvasColor(I)V

    .line 284
    :cond_1
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_haltExecuted(I)V

    .line 289
    :cond_2
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_WindowDelete()V

    .line 290
    invoke-virtual {p0, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_SetBrowserWindow(I)V

    .line 291
    invoke-virtual {p0, p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_CompleteHalt(I)V

    .line 293
    iput-boolean v3, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    .line 294
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->clearBMLBackLocation()V

    .line 296
    if-ne p1, v5, :cond_3

    .line 298
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_ExecuteHalt posting runnable "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlHandler:Landroid/os/Handler;

    new-instance v1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$2;

    invoke-direct {v1, p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl$2;-><init>(Landroid/broadcast/bml/MtvNativeBmlEngineImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_3
    return v3
.end method

.method public BML_CB_NotifyEnterUnload(Z)V
    .locals 3
    .param p1, "in_enter"    # Z

    .prologue
    .line 384
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_NotifyEnterUnload]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public BML_CB_NotifyTransitionDone()V
    .locals 2

    .prologue
    .line 369
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_NotifyTransitionDone"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_NotifyTransitionDone:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_NotifyTransitionDone: First drawing has been completed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public BML_CB_SetFullDataDisplayArea(II)I
    .locals 3
    .param p1, "in_mode"    # I
    .param p2, "in_by"    # I

    .prologue
    .line 335
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_SetFullDataDisplayArea]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_by:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BML_CB_SetFullDataDisplayArea(mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 343
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_setBMLFullView()V

    .line 359
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 348
    :cond_1
    if-nez p1, :cond_2

    .line 349
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_updateBMLSurfaceView()V

    goto :goto_0

    .line 356
    :cond_2
    const-string v0, "BmlEngineImpl"

    const-string v1, "Invalid DisplayMode "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public BML_CB_System_EnterStatusPeer(I)I
    .locals 3
    .param p1, "in_status"    # I

    .prologue
    .line 884
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_System_EnterStatusPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_System_LeaveStatusPeer(I)I
    .locals 3
    .param p1, "in_status"    # I

    .prologue
    .line 912
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_System_LeaveStatusPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_System_NotifyErrorPeer(I)I
    .locals 3
    .param p1, "in_status"    # I

    .prologue
    .line 937
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_System_NotifyErrorPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_XDPA_MailToPeer([B[B[B)I
    .locals 1
    .param p1, "in_subject"    # [B
    .param p2, "in_body"    # [B
    .param p3, "in_to_address"    # [B

    .prologue
    .line 1112
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_mailToPeer([B[B[B)V

    .line 1116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_XDPA_MailTo_CancelPeer()V
    .locals 2

    .prologue
    .line 1130
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_XDPA_MailTo_CancelPeer"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 1132
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    .line 1134
    :cond_1
    return-void
.end method

.method public BML_CB_XDPA_PhoneToPeer(Ljava/lang/String;)I
    .locals 2
    .param p1, "in_phone_number"    # Ljava/lang/String;

    .prologue
    .line 1151
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_XDPA_PhoneToPeer:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_phoneToPeer(Ljava/lang/String;)V

    .line 1158
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_XDPA_PhoneTo_CancelPeer()V
    .locals 2

    .prologue
    .line 1172
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_XDPA_PhoneTo_CancelPeer SHOULD be overrided by OEM"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 1174
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->intResult:I

    .line 1176
    :cond_1
    return-void
.end method

.method public BML_CB_XDPA_SaveExAppFilePeer([B[B[BZ)I
    .locals 1
    .param p1, "in_src_path"    # [B
    .param p2, "in_type"    # [B
    .param p3, "in_title"    # [B
    .param p4, "in_executable_flag"    # Z

    .prologue
    .line 1196
    const/16 v0, -0x3ea

    return v0
.end method

.method public BML_CB_XDPA_SaveExAppFile_CancelPeer()V
    .locals 2

    .prologue
    .line 1210
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_XDPA_SaveExAppFile_CancelPeer:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public BML_CB_XDPA_StartResidentAppPeer([BI[B[Ljava/lang/String;)I
    .locals 1
    .param p1, "in_app_name"    # [B
    .param p2, "in_show_av"    # I
    .param p3, "in_return_uri"    # [B
    .param p4, "in_ex_info"    # [Ljava/lang/String;

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_startResidentAppPeer([BI[B[Ljava/lang/String;)I

    .line 1242
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_XDPA_StartResidentApp_CancelPeer()V
    .locals 2

    .prologue
    .line 1256
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_XDPA_StartResidentApp_CancelPeer:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    return-void
.end method

.method public BML_CB_XDPA_TuneWithRFPeer(IIII)I
    .locals 3
    .param p1, "in_freq_channel_no"    # I
    .param p2, "in_service_id"    # I
    .param p3, "in_mode"    # I
    .param p4, "in_guard_interval"    # I

    .prologue
    .line 1085
    const-string v0, "BmlEngineImpl"

    const-string v1, "[BML_CB_XDPA_TuneWithRFPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_freq_channel_no:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_service_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Input]in_guard_interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v0, "BmlEngineImpl"

    const-string v1, "[Output] Result:0"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/16 v0, -0x3ea

    return v0
.end method

.method public BML_CB_XDPA_WriteAddressBookInfoPeer([B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "in_name"    # [B
    .param p2, "in_kana"    # [B
    .param p3, "in_tel"    # Ljava/lang/String;
    .param p4, "in_mail"    # Ljava/lang/String;

    .prologue
    .line 1275
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_writeAddressBookInfoPeer([B[BLjava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_XDPA_WriteAddressBookInfo_CancelPeer()V
    .locals 2

    .prologue
    .line 1293
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_XDPA_WriteAddressBookInfo_CancelPeer:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    return-void
.end method

.method public BML_CB_XDPA_WriteSchInfoPeer(SIIIIIIS[B[BZ)I
    .locals 12
    .param p1, "in_year"    # S
    .param p2, "in_month"    # I
    .param p3, "in_day"    # I
    .param p4, "in_dayofweek"    # I
    .param p5, "in_hour"    # I
    .param p6, "in_minute"    # I
    .param p7, "in_second"    # I
    .param p8, "millisecond"    # S
    .param p9, "in_title"    # [B
    .param p10, "in_text"    # [B
    .param p11, "in_sound_flag"    # Z

    .prologue
    .line 1320
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_writeSchInfoPeer(SIIIIIIS[B[BZ)I

    .line 1324
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public BML_CB_XDPA_WriteSchInfo_CancelPeer()V
    .locals 2

    .prologue
    .line 1338
    const-string v0, "BmlEngineImpl"

    const-string v1, "BML_CB_XDPA_WriteSchInfo_CancelPeer:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    return-void
.end method

.method public BML_CB_appExIMEStartPeer([BZZII)Z
    .locals 6
    .param p1, "text"    # [B
    .param p2, "isPassword"    # Z
    .param p3, "isMultiLine"    # Z
    .param p4, "mode"    # I
    .param p5, "maxlength"    # I

    .prologue
    .line 1567
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_appIMEStartPeer([BZZII)V

    .line 1571
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public BML_DTVNVRAMDB_DeleteAllAffiliationAreas()Z
    .locals 1

    .prologue
    .line 1806
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->DTVNVRAMDB_DeleteAllAffiliationAreas()Z

    move-result v0

    return v0
.end method

.method public BML_DTVNVRAMDB_DeleteAllCproBMInfo()Z
    .locals 1

    .prologue
    .line 1796
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->DTVNVRAMDB_DeleteAllCproBMInfo()Z

    move-result v0

    return v0
.end method

.method public BML_DTVNVRAMDB_DeleteBroadcasterArea(II)Z
    .locals 1
    .param p1, "in_affiliationID"    # I
    .param p2, "in_originalNetworkID"    # I

    .prologue
    .line 1811
    invoke-virtual {p0, p1, p2}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->DTVNVRAMDB_DeleteBroadcasterArea(II)Z

    move-result v0

    return v0
.end method

.method public BML_DTVNVRAMDB_DeleteCproBMInfo(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1801
    invoke-virtual {p0, p1}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->DTVNVRAMDB_DeleteCproBMInfo(I)Z

    move-result v0

    return v0
.end method

.method public BML_DTV_EVENT_SERVICECHANGED_BY_BOOKMARK(IIIILjava/lang/String;[I)Z
    .locals 3
    .param p1, "in_original_network_id"    # I
    .param p2, "in_transport_stream_id"    # I
    .param p3, "in_service_id"    # I
    .param p4, "in_component_tag"    # I
    .param p5, "in_dst_uri"    # Ljava/lang/String;
    .param p6, "in_affiliation_id"    # [I

    .prologue
    .line 1718
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_WindowNew()I

    move-result v0

    iput v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    .line 1720
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    const-string v0, "BmlEngineImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BML_CB_DTV_EVENT_SERVICECHANGED:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    :cond_0
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    invoke-virtual {p0, v0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_SetBrowserWindow(I)V

    .line 1724
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_EscapeHalt()Z

    .line 1726
    invoke-virtual/range {p0 .. p6}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->BML_NotifyServiceChangedByBookmark(IIIILjava/lang/String;[I)Z

    move-result v0

    return v0
.end method

.method public Browser_CB_CommandHandler_HandleCommandProc(II)I
    .locals 5
    .param p1, "in_cmd"    # I
    .param p2, "in_reply"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1354
    const-string v2, "BmlEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Browser_CB_CommandHandler_HandleCommandProc: cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-boolean v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    if-ne v2, v0, :cond_0

    .line 1544
    :goto_0
    return v0

    .line 1363
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1530
    const-string v0, "BmlEngineImpl"

    const-string v2, "UNKNOWN SLIM_BRCOMMAND"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iput-boolean v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    .line 1536
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1538
    invoke-virtual {p0}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_ReplyToCommand()V

    :goto_2
    move v0, v1

    .line 1544
    goto :goto_0

    .line 1367
    :sswitch_0
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1369
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    goto :goto_1

    .line 1376
    :sswitch_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1377
    const-string v0, "BmlEngineImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLIM_BRCOMMAND_QUERY_SETLOCATION  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fSetLocation_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_2
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1381
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_QUERY_SETLOCATION  process command"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto :goto_1

    .line 1389
    :sswitch_2
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_QUERY_REDIRECT_DIALOG"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto :goto_1

    .line 1400
    :sswitch_3
    const-string v2, "BmlEngineImpl"

    const-string v3, "SLIM_BRCOMMAND_QUERY_AUTH_DIALOG"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v2, :cond_3

    .line 1404
    iget-object v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v2, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    .line 1406
    :cond_3
    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fConfirmed_Reply:Z

    goto :goto_1

    .line 1412
    :sswitch_4
    const-string v2, "BmlEngineImpl"

    const-string v3, "SLIM_BRCOMMAND_QUERY_SERVER_CERT_CONFIRM_DIALOG"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fConfirmed_certReply:Z

    .line 1415
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1424
    :sswitch_5
    const-string v0, "BmlEngineImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLIM_BRCOMMAND_NOTIFY_STREAM_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fStreamState_State:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1428
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    goto/16 :goto_1

    .line 1435
    :sswitch_6
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_NOTIFY_CONTENT_ERROR"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1439
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1446
    :sswitch_7
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_NOTIFY_ERROR"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1450
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1458
    :sswitch_8
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_QUERY_DTV_TRANSMITTEXTDATA"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1469
    :sswitch_9
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1480
    :sswitch_a
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_QUERY_DTV_WRITEBOOKMARK"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1491
    :sswitch_b
    const-string v2, "BmlEngineImpl"

    const-string v3, "SLIM_BRCOMMAND_QUERY_DTV_WRITEPERSISTENTARRAY"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->fDoWrite:Z

    goto/16 :goto_1

    .line 1497
    :sswitch_c
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_NOTIFY_DTV_FAILUREACTION"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1508
    :sswitch_d
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_QUERY_DTV_SYSTEMCONTINUE"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1512
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1519
    :sswitch_e
    const-string v0, "BmlEngineImpl"

    const-string v2, "SLIM_BRCOMMAND_NOTIFY_DTV_DRAWERROR"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    if-eqz v0, :cond_1

    .line 1523
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/bml/IMtvNativeBmlViewListener;->cb_processCommand(II)Z

    move-result v0

    iput-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    goto/16 :goto_1

    .line 1542
    :cond_4
    const-string v0, "BmlEngineImpl"

    const-string v2, "Pop up result waiting"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1363
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x12 -> :sswitch_5
        0x15 -> :sswitch_0
        0x17 -> :sswitch_6
        0x1a -> :sswitch_7
        0x96 -> :sswitch_8
        0x98 -> :sswitch_9
        0x99 -> :sswitch_a
        0x9a -> :sswitch_b
        0x9b -> :sswitch_c
        0x9c -> :sswitch_d
        0x9d -> :sswitch_e
    .end sparse-switch
.end method

.method attachEngineListener(Landroid/broadcast/bml/IMtvNativeBmlEngineListener;)V
    .locals 0
    .param p1, "l"    # Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    goto :goto_0
.end method

.method attachViewListener(Landroid/broadcast/bml/IMtvNativeBmlViewListener;)V
    .locals 0
    .param p1, "l"    # Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    goto :goto_0
.end method

.method clearBMLBackLocation()V
    .locals 1

    .prologue
    .line 184
    sget-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_0
.end method

.method dettachEngineListener(Landroid/broadcast/bml/IMtvNativeBmlEngineListener;)V
    .locals 1
    .param p1, "l"    # Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlEngineListener:Landroid/broadcast/bml/IMtvNativeBmlEngineListener;

    .line 161
    return-void
.end method

.method dettachViewListener(Landroid/broadcast/bml/IMtvNativeBmlViewListener;)V
    .locals 1
    .param p1, "l"    # Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mBmlViewListener:Landroid/broadcast/bml/IMtvNativeBmlViewListener;

    .line 152
    return-void
.end method

.method public getAvailableKey(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1593
    const/4 v2, 0x7

    if-lt p1, v2, :cond_2

    const/16 v2, 0x10

    if-gt p1, v2, :cond_2

    .line 1595
    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 1616
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1598
    goto :goto_0

    .line 1600
    :cond_2
    const/16 v2, 0x42

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 1602
    :cond_3
    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    .line 1605
    goto :goto_0

    .line 1607
    :cond_4
    const/16 v2, 0x11

    if-eq p1, v2, :cond_5

    const/16 v2, 0x12

    if-ne p1, v2, :cond_0

    .line 1609
    :cond_5
    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    .line 1612
    goto :goto_0
.end method

.method public getBmlViewScreenHeight()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->m_BMLView:Lcom/access/bml/BMLNativeView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->m_BMLView:Lcom/access/bml/BMLNativeView;

    invoke-virtual {v0}, Lcom/access/bml/BMLNativeView;->get_scr_height()I

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBmlViewScreenWidth()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->m_BMLView:Lcom/access/bml/BMLNativeView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->m_BMLView:Lcom/access/bml/BMLNativeView;

    invoke-virtual {v0}, Lcom/access/bml/BMLNativeView;->get_scr_width()I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBmlWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    return v0
.end method

.method public getKeyMasking()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1578
    iget v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 1579
    const/4 v0, 0x4

    .line 1586
    :cond_0
    :goto_0
    return v0

    .line 1580
    :cond_1
    iget v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 1582
    iget v1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mSetKeyMasking:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 1583
    const/16 v0, 0x10

    goto :goto_0
.end method

.method getKeyPad_mask()I
    .locals 1

    .prologue
    .line 169
    sget v0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->KeyPad_mask:I

    return v0
.end method

.method public isWaiting()Z
    .locals 1

    .prologue
    .line 1548
    iget-boolean v0, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    return v0
.end method

.method public setBMLBackLocation()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1627
    sget-object v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    if-nez v3, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return v2

    .line 1632
    :cond_1
    sget-object v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1634
    const-string v3, "BmlEngineImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BML Back size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    sget-object v3, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 1642
    sget-object v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1643
    .local v0, "currentURL":Ljava/lang/String;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1644
    const-string v2, "BmlEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BML Back Pop current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_2
    sget-object v2, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->mURLstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1647
    .local v1, "previousURL":Ljava/lang/String;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1648
    const-string v2, "BmlEngineImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BML Back Pop previous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    :cond_3
    iget v2, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    const/16 v3, 0x2000

    invoke-virtual {p0, v2, v1, v3}, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->Browser_WindowSetLocation(ILjava/lang/String;I)Z

    .line 1652
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setBitMapLeft(F)V
    .locals 0
    .param p1, "left"    # F

    .prologue
    .line 1667
    return-void
.end method

.method public setBitMapTop(F)V
    .locals 0
    .param p1, "top"    # F

    .prologue
    .line 1676
    return-void
.end method

.method public setBmlWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 96
    iput p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->w:I

    .line 97
    return-void
.end method

.method setKeyPad_mask(I)V
    .locals 0
    .param p1, "keyPad_mask"    # I

    .prologue
    .line 175
    sput p1, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->KeyPad_mask:I

    .line 176
    return-void
.end method

.method public setWaiting(Z)V
    .locals 0
    .param p1, "bIsWaiting"    # Z

    .prologue
    .line 1552
    iput-boolean p1, p0, Landroid/broadcast/bml/MtvNativeBmlEngineImpl;->isWaiting:Z

    .line 1553
    return-void
.end method
