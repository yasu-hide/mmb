.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$3;
.super Ljava/lang/Object;
.source "MmbStBaseViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

.field final synthetic val$aSurfaceRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$3;->val$aSurfaceRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$3;->val$aSurfaceRegion:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 838
    return-void
.end method
