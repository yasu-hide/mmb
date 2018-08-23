.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$1;
.super Ljava/lang/Object;
.source "MmbStBmlViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field final synthetic val$aSurfaceRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$1;->val$aSurfaceRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$1;->val$aSurfaceRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 460
    return-void
.end method
