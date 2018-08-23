.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;
.super Ljava/util/TimerTask;
.source "MmbStReservationTimerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MmbReservationTimererTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;

.field userparam:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;I)V
    .locals 0
    .param p2, "aUserParam"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 78
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;->userparam:I

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;->userparam:I

    invoke-interface {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;->onJudgmentReservationReschedule(I)V

    .line 99
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbReservationTimererTask;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 103
    return-void
.end method
