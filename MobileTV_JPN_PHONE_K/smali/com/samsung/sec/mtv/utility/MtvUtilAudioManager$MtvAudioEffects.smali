.class public Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;
.super Landroid/media/audiofx/SoundAlive;
.source "MtvUtilAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvAudioEffects"
.end annotation


# static fields
.field private static mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;


# instance fields
.field private mAudioSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "mAudioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/SoundAlive;-><init>(II)V

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mAudioSessionId:I

    .line 677
    iput p2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mAudioSessionId:I

    .line 678
    return-void
.end method

.method public static getInstance(I)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;
    .locals 2
    .param p0, "mAudioSessionId"    # I

    .prologue
    .line 682
    const/4 v0, -0x1

    if-gt p0, v0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Audio Session !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->getAudioSessionId()I

    move-result v0

    if-eq v0, p0, :cond_2

    .line 689
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->resetResources()V

    .line 690
    const-string v0, "MtvUtilAudioManager"

    const-string v1, "creating a new AudioEffect for the new AudioSession..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;-><init>(II)V

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    .line 692
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->setEnabled(Z)I

    .line 695
    :cond_2
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    return-object v0
.end method

.method public static resetResources()V
    .locals 2

    .prologue
    .line 700
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "MtvUtilAudioManager"

    const-string v1, "releasing Old AudioEffect resources..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->setEnabled(Z)I

    .line 704
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->release()V

    .line 705
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mSinleTonInstance:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    .line 707
    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mAudioSessionId:I

    return v0
.end method

.method public setPreset(I)V
    .locals 4
    .param p1, "preset"    # I

    .prologue
    .line 716
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreset... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mAudioSessionId..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->mAudioSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    int-to-short v1, p1

    :try_start_0
    invoke-super {p0, v1}, Landroid/media/audiofx/SoundAlive;->usePreset(S)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 727
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 723
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
