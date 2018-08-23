.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$2;
.super Ljava/lang/Object;
.source "MmbStBaseViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeEcoDispSurfaceView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

.field final synthetic val$aMode:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;I)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$2;->val$aMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$2;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$2;->val$aMode:I

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;I)V

    .line 763
    return-void
.end method
