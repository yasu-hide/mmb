.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;
.super Ljava/lang/Object;
.source "MmbStParentViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestReflectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

.field final synthetic val$addlist:Ljava/util/ArrayList;

.field final synthetic val$removelist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;->val$addlist:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;->val$removelist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;->val$addlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;->val$removelist:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 722
    return-void
.end method
