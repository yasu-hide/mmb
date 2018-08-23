.class Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwOpenStateWrapper;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub;
.source "MmbCoContentOperatorSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbFwOpenStateWrapper"
.end annotation


# instance fields
.field mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv$Stub;-><init>()V

    .line 746
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwOpenStateWrapper;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;

    .line 747
    return-void
.end method


# virtual methods
.method public onOpenStateChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv$MmbFwOpenStateWrapper;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;

    invoke-interface {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerSv;->onOpenStateChange(Ljava/lang/String;)V

    .line 765
    return-void
.end method
