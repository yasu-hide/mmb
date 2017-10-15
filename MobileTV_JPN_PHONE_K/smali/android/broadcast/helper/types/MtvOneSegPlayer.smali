.class public Landroid/broadcast/helper/types/MtvOneSegPlayer;
.super Ljava/lang/Object;
.source "MtvOneSegPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MtvOneSegPlayer"

.field private static final mPlayerLinker:Ljava/lang/String; = "/?"

.field private static final mPlayerStringSeperator:Ljava/lang/String; = ";"

.field private static final mURILinker:Ljava/lang/String; = "://"


# instance fields
.field private audioPID:I

.field private captPID:I

.field private chnlName:Ljava/lang/String;

.field private mPlayerURI:Ljava/lang/String;

.field private memLoc:Ljava/lang/String;

.field private progName:Ljava/lang/String;

.field private recDate:Ljava/util/Date;

.field private recType:I

.field private servName:Ljava/lang/String;

.field private serviceID:I

.field private storeType:I

.field private videoPID:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Date;I)V
    .locals 3
    .param p1, "recType"    # I
    .param p2, "memLoc"    # Ljava/lang/String;
    .param p3, "storeType"    # I
    .param p4, "chnlName"    # Ljava/lang/String;
    .param p5, "progName"    # Ljava/lang/String;
    .param p6, "recDate"    # Ljava/util/Date;
    .param p7, "serviceID"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recType:I

    .line 42
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->storeType:I

    .line 43
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->audioPID:I

    .line 44
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->videoPID:I

    .line 45
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->captPID:I

    .line 47
    const-string v0, "MTV"

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->mPlayerURI:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->memLoc:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->chnlName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->progName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recDate:Ljava/util/Date;

    .line 59
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->servName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->serviceID:I

    .line 80
    if-eqz p4, :cond_0

    if-nez p6, :cond_1

    .line 81
    :cond_0
    const-string v0, "MtvOneSegPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Parameters chnlName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] progName = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] recDate = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    iput p1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recType:I

    .line 84
    iput-object p2, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->memLoc:Ljava/lang/String;

    .line 85
    iput p3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->storeType:I

    .line 86
    iput-object p4, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->chnlName:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->progName:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recDate:Ljava/util/Date;

    .line 89
    iput p7, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->serviceID:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2
    .param p1, "servName"    # Ljava/lang/String;
    .param p2, "videoPID"    # I
    .param p3, "audioPID"    # I
    .param p4, "captPID"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recType:I

    .line 42
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->storeType:I

    .line 43
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->audioPID:I

    .line 44
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->videoPID:I

    .line 45
    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->captPID:I

    .line 47
    const-string v0, "MTV"

    iput-object v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->mPlayerURI:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->memLoc:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->chnlName:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->progName:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recDate:Ljava/util/Date;

    .line 59
    iput-object v1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->servName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->serviceID:I

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v0, "MtvOneSegPlayer"

    const-string v1, "Invalid Service Name [null]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    iput-object p1, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->servName:Ljava/lang/String;

    .line 70
    iput p2, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->videoPID:I

    .line 71
    iput p3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->audioPID:I

    .line 72
    iput p4, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->captPID:I

    .line 73
    return-void
.end method


# virtual methods
.method public getOpenURI(I)Ljava/lang/String;
    .locals 6
    .param p1, "pbType"    # I

    .prologue
    const/4 v5, 0x1

    .line 99
    const/4 v1, 0x0

    .local v1, "retOpenURI":Ljava/lang/String;
    const/4 v0, 0x0

    .line 101
    .local v0, "mPIDURI":Ljava/lang/String;
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-ne p1, v5, :cond_a

    .line 102
    :cond_0
    iget-object v2, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->servName:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 103
    iget v2, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->videoPID:I

    if-lez v2, :cond_1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->videoPID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_1
    iget v2, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->audioPID:I

    if-lez v2, :cond_2

    .line 108
    if-eqz v0, :cond_6

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->audioPID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_2
    :goto_0
    iget v2, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->captPID:I

    if-lez v2, :cond_3

    .line 117
    if-eqz v0, :cond_7

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subtitlePid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->captPID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    .line 127
    const-string v2, "MtvOneSegPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PBType: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-ne p1, v5, :cond_4

    .line 129
    const-string v2, "FILE"

    iput-object v2, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->mPlayerURI:Ljava/lang/String;

    .line 131
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->mPlayerURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->servName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "audioMode=1;IsLATMAudio=0;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_2
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 144
    const-string v2, "MtvOneSegPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returning Open URI as ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_5
    return-object v1

    .line 111
    :cond_6
    const-string v2, "MtvOneSegPlayer"

    const-string v3, "Video doesnt exist - Looks like A+ CLIP!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->audioPID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :cond_7
    const-string v2, "MtvOneSegPlayer"

    const-string v3, "Only Caption PID exists - Audio/Video doesnt exist"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subtitlePid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->captPID:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 133
    :cond_8
    const-string v2, "MtvOneSegPlayer"

    const-string v3, "A/V/C PIDs doesnt exist - Cannot construct URI:: Returning NULL"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 136
    :cond_9
    const-string v2, "MtvOneSegPlayer"

    const-string v3, "servName = [null] Cannot construct Channel URI "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    :cond_a
    const-string v2, "MtvOneSegPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current PBType is ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Failure in getChannelURI() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getRecordURI()Ljava/lang/String;
    .locals 7

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .local v0, "dateFormat":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "fPath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 162
    .local v3, "recordURI":Ljava/lang/String;
    iget v4, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recType:I

    if-lez v4, :cond_2

    iget-object v4, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->chnlName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->memLoc:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recDate:Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 163
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v2    # "formatter":Ljava/text/SimpleDateFormat;
    if-eqz v2, :cond_0

    .line 166
    iget-object v4, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recDate:Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->memLoc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recType:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; CRPM=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; channelName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->chnlName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; programName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->progName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; creationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; storageType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->storeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; serviceID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->serviceID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    :cond_0
    :goto_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    const-string v4, "MtvOneSegPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returning recordURI as ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    return-object v3

    .line 175
    :cond_2
    const-string v4, "MtvOneSegPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid input parameters recType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] memLoc ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->memLoc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] storeType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->storeType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] chnlName ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->chnlName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] progName ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->progName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Date ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->recDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] serviceID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/broadcast/helper/types/MtvOneSegPlayer;->serviceID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
