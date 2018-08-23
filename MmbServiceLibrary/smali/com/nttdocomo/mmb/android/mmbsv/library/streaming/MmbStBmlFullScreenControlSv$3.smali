.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$3;
.super Ljava/lang/Object;
.source "MmbStBmlFullScreenControlSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

.field final synthetic val$fulldispinfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$3;->val$fulldispinfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$3;->val$fulldispinfo:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V

    .line 807
    return-void
.end method
