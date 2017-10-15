.class public Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;
.super Ljava/lang/Object;
.source "MtvAppProgramComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtvAppPrgFileComponent"
.end annotation


# instance fields
.field private iface:Landroid/broadcast/IMtvOneSegFileControl;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;->init()V

    .line 508
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegFactory;->getFileControl()Landroid/broadcast/IMtvOneSegFileControl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;->iface:Landroid/broadcast/IMtvOneSegFileControl;

    .line 504
    return-void
.end method


# virtual methods
.method public renameTVFile(ILjava/lang/String;)Z
    .locals 3
    .param p1, "fileindex"    # I
    .param p2, "renameString"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v0, "MtvAppProgramComponents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " renameTVFile fileindex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " renameString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;->iface:Landroid/broadcast/IMtvOneSegFileControl;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;->iface:Landroid/broadcast/IMtvOneSegFileControl;

    invoke-interface {v0, p1, p2}, Landroid/broadcast/IMtvOneSegFileControl;->renameTVFile(ILjava/lang/String;)Z

    move-result v0

    .line 522
    :goto_0
    return v0

    .line 520
    :cond_0
    const-string v0, "MtvAppProgramComponents"

    const-string v1, " iface is null"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgFileComponent;->init()V

    .line 512
    return-void
.end method
