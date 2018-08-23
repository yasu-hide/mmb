.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;
.source "MmbFwControllerBaseSv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;"
    }
.end annotation


# instance fields
.field protected mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

.field protected mCurrentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field protected final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TS;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 60
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv<TS;>;"
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceFacadeSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mStateMap:Ljava/util/Map;

    .line 67
    return-void
.end method


# virtual methods
.method public addStateObject(Ljava/lang/Object;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;)V
    .locals 2
    .param p2, "aObject"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv<TS;>;"
    .local p1, "aState":Ljava/lang/Object;, "TS;"
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    .line 90
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    .line 94
    return-void
.end method

.method public transit(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv<TS;>;"
    .local p1, "aState":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;->onLeave()V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentState:Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    .line 119
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwControllerBaseSv;->mCurrentObject:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;

    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwStateObjectSv;->onEnter()V

    .line 126
    :cond_1
    return-void
.end method
