.class public Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
.source "ServiceReserveMaxException.java"


# static fields
.field private static final serialVersionUID:J = -0x7f85a5b3d9a1137fL


# instance fields
.field private fcExecutionState:I

.field private scheduleType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>()V

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 43
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aDetailMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 43
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aScheduleType"    # I

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 43
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    .line 153
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aScheduleType"    # I
    .param p3, "aExecutionState"    # I

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 43
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    .line 182
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 183
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aDetailMessage"    # Ljava/lang/String;
    .param p2, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 43
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "aThrowable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    .line 43
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    .line 132
    return-void
.end method


# virtual methods
.method public getFcExecutionState()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->fcExecutionState:I

    return v0
.end method

.method public getScheduleType()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->scheduleType:I

    return v0
.end method
