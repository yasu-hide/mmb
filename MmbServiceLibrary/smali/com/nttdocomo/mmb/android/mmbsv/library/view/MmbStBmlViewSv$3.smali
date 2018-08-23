.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$3;
.super Ljava/lang/Object;
.source "MmbStBmlViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field final synthetic val$aMode:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;I)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$3;->val$aMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$3;->val$aMode:I

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;I)V

    .line 595
    return-void
.end method
