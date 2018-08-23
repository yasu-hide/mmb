.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$2;
.super Ljava/lang/Object;
.source "MmbStBmlTouchControlSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->scrollBML(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

.field final synthetic val$postvelocity:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;I)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$2;->val$postvelocity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv$2;->val$postvelocity:I

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->scrollTo(II)V

    .line 997
    return-void
.end method
