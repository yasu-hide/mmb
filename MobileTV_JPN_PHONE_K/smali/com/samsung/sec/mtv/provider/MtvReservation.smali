.class public Lcom/samsung/sec/mtv/provider/MtvReservation;
.super Lcom/samsung/sec/mtv/provider/MtvProgram;
.source "MtvReservation.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/sec/mtv/provider/MtvProgram;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/sec/mtv/provider/MtvReservation;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final RESERVATION_EXTRA_DB_ID:Ljava/lang/String; = "dbId"

.field public static final RESERVATION_EXTRA_REMINDER_DB_ID:Ljava/lang/String; = "reminderDbId"

.field public static final STATUS_CANCELLED:I = 0x7

.field public static final STATUS_DONE:I = 0x1

.field public static final STATUS_FAIL:I = 0x2

.field public static final STATUS_FAIL_DUE_TO_LOW_MEMORY_TO_LAUNCH:I = 0xc

.field public static final STATUS_FAIL_DUE_TO_MISMATCH_OF_SERVICEID:I = 0xa

.field public static final STATUS_FAIL_MEMORY_ERROR:I = 0x5

.field public static final STATUS_FAIL_MEMORY_PARTIALLY_RECORDED:I = 0x9

.field public static final STATUS_FAIL_OFF:I = 0x3

.field public static final STATUS_FAIL_SIGNAL_ERROR:I = 0x4

.field public static final STATUS_FAIL_SIGNAL_PARTIALLY_RECORDED:I = 0x8

.field public static final STATUS_FAIL_WATCH_DUE_TO_CALL:I = 0xb

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_ON_GOING:I = 0x6

.field public static final TYPE_PLAY:I = 0x1

.field public static final TYPE_REC:I = 0x0

.field public static final TYPE_REC_FULLSEG:I = 0x0

.field public static final TYPE_REC_ONESEG:I = 0x1

.field private static final serialVersionUID:J = -0x78432932773fde08L


# instance fields
.field public mPgmServiceID:I

.field public mPgmStatus:I

.field public mPgmType:I


# direct methods
.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "pch"    # I
    .param p2, "vch"    # I
    .param p3, "lock"    # I
    .param p4, "timeStart"    # J
    .param p6, "timeEnd"    # J
    .param p8, "pgmName"    # Ljava/lang/String;
    .param p9, "pgmDetail"    # Ljava/lang/String;
    .param p10, "pgmType"    # I
    .param p11, "pgmStatus"    # I
    .param p12, "pgmServiceID"    # I

    .prologue
    .line 39
    invoke-direct/range {p0 .. p9}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;)V

    .line 40
    iput p10, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    .line 41
    iput p11, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    .line 42
    iput p12, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    .line 43
    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;IIII)V
    .locals 14
    .param p1, "pch"    # I
    .param p2, "vch"    # I
    .param p3, "lock"    # I
    .param p4, "timeStart"    # J
    .param p6, "timeEnd"    # J
    .param p8, "pgmName"    # Ljava/lang/String;
    .param p9, "pgmDetail"    # Ljava/lang/String;
    .param p10, "pgmType"    # I
    .param p11, "pgmStatus"    # I
    .param p12, "pgmServiceID"    # I
    .param p13, "uriID"    # I

    .prologue
    .line 46
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p13

    invoke-direct/range {v2 .. v12}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;I)V

    .line 47
    move/from16 v0, p10

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    .line 48
    move/from16 v0, p11

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    .line 49
    move/from16 v0, p12

    iput v0, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/samsung/sec/mtv/provider/MtvProgram;III)V
    .locals 10
    .param p1, "program"    # Lcom/samsung/sec/mtv/provider/MtvProgram;
    .param p2, "pgmType"    # I
    .param p3, "pgmStatus"    # I
    .param p4, "pmgServiceID"    # I

    .prologue
    .line 53
    iget v1, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    iget v2, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mVch:I

    iget v3, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mLock:I

    iget-wide v4, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    iget-wide v6, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    iget-object v8, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    iget-object v9, p1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/sec/mtv/provider/MtvProgram;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;)V

    .line 54
    iput p2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    .line 55
    iput p3, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    .line 56
    iput p4, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    .line 57
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/sec/mtv/provider/MtvReservation;)I
    .locals 6
    .param p1, "obj"    # Lcom/samsung/sec/mtv/provider/MtvReservation;

    .prologue
    .line 64
    move-object v0, p1

    .line 65
    .local v0, "reserve":Lcom/samsung/sec/mtv/provider/MtvReservation;
    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 66
    const/4 v1, -0x1

    .line 69
    :goto_0
    return v1

    .line 67
    :cond_0
    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    iget-wide v4, v0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5
    check-cast p1, Lcom/samsung/sec/mtv/provider/MtvReservation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/provider/MtvReservation;->compareTo(Lcom/samsung/sec/mtv/provider/MtvReservation;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string v0, "MtvReservation"

    .line 75
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[uriId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mUriId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", virtual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mVch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", physical="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mTimeEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pgmType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPgmStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPgmServiceID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/sec/mtv/provider/MtvReservation;->mPgmServiceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method
