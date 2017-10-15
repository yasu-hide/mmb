.class public Lcom/samsung/sec/mtv/provider/MtvProgram;
.super Ljava/lang/Object;
.source "MtvProgram.java"


# instance fields
.field public final mLock:I

.field public final mPch:I

.field public final mPgmDetail:Ljava/lang/String;

.field public final mPgmName:Ljava/lang/String;

.field public final mTimeEnd:J

.field public final mTimeStart:J

.field public mUriId:I

.field public final mVch:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    .line 50
    iput v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    .line 51
    iput v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    .line 52
    iput v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    .line 53
    iput-wide v4, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    .line 54
    iput-wide v4, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    .line 55
    iput-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pch"    # I
    .param p2, "vch"    # I
    .param p3, "lock"    # I
    .param p4, "timeStart"    # J
    .param p6, "timeEnd"    # J
    .param p8, "pgmName"    # Ljava/lang/String;
    .param p9, "pgmDetail"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    .line 28
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    .line 29
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    .line 30
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    .line 31
    iput-wide p4, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    .line 32
    iput-wide p6, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    .line 33
    iput-object p8, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pch"    # I
    .param p2, "vch"    # I
    .param p3, "lock"    # I
    .param p4, "timeStart"    # J
    .param p6, "timeEnd"    # J
    .param p8, "pgmName"    # Ljava/lang/String;
    .param p9, "pgmDetail"    # Ljava/lang/String;
    .param p10, "uriID"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    .line 38
    iput p1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    .line 39
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    .line 40
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    .line 41
    iput-wide p4, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    .line 42
    iput-wide p6, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    .line 43
    iput-object p8, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    .line 44
    iput-object p9, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    .line 45
    iput p10, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/broadcast/helper/types/MtvOneSegProgram;I)V
    .locals 2
    .param p1, "inMtvOneSegProgram"    # Landroid/broadcast/helper/types/MtvOneSegProgram;
    .param p2, "vch"    # I

    .prologue
    const/4 v1, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mUriId:I

    .line 18
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getServiceID()I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    .line 19
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    .line 20
    iput v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    .line 21
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    .line 22
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getEndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    .line 23
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public equalsProgram(Lcom/samsung/sec/mtv/provider/MtvProgram;)Z
    .locals 6
    .param p1, "program"    # Lcom/samsung/sec/mtv/provider/MtvProgram;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    if-ne v1, v2, :cond_0

    .line 71
    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    iget-wide v4, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    iget-wide v4, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x1f

    .line 62
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 63
    .local v1, "result":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 65
    return v1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-string v0, "MtvProgram"

    .line 81
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[virtual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", physical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method
