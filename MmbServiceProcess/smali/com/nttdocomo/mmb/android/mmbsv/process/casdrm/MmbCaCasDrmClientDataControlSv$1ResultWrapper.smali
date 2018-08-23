.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$1ResultWrapper;
.super Ljava/lang/Object;
.source "MmbCaCasDrmClientDataControlSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryPurchaseHistoryAll()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultWrapper"
.end annotation


# instance fields
.field result:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;)V
    .locals 1

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$1ResultWrapper;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv$1ResultWrapper;->result:Ljava/util/HashSet;

    return-void
.end method
