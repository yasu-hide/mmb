.class Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;
.super Ljava/lang/Object;
.source "MmbStParentViewSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->addViewFromService(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

.field final synthetic val$aViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;->val$aViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;->val$aViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V

    .line 314
    return-void
.end method
