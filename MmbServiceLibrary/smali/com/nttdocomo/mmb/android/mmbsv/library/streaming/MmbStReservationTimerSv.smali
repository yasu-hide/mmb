.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;
.super Ljava/lang/Object;
.source "MmbStReservationTimerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;
    }
.end annotation


# instance fields
.field private reservationTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;JI)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;
    .param p2, "aMilliSeconds"    # J
    .param p4, "aUserParam"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;->reservationTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;->timer:Ljava/util/Timer;

    .line 50
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;

    invoke-direct {v1, p0, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;I)V

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;->reservationTimerListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;->timer:Ljava/util/Timer;

    return-object v0
.end method
