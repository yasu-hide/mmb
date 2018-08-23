.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$7;
.super Ljava/lang/Object;
.source "MmbFcControllerSv.java"

# interfaces
.implements Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwOnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setSeekCompleteEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;)V
    .locals 0

    .prologue
    .line 2353
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$7;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;)V
    .locals 3
    .param p1, "aMp"    # Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv$7;->this$0:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResultInfo:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    return-void
.end method
