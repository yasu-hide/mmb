.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$MmbBmlRunnableRes;
.super Ljava/lang/Object;
.source "MmbStBmlBrowserControllerSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MmbBmlRunnableRes"
.end annotation


# instance fields
.field protected mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

.field protected mResult:Z


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;Z)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .param p2, "aResult"    # Z

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$MmbBmlRunnableRes;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$MmbBmlRunnableRes;->mResult:Z

    .line 180
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$MmbBmlRunnableRes;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 181
    iput-boolean p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv$MmbBmlRunnableRes;->mResult:Z

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method
