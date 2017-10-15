.class Lcom/access/bml/BMLHandleCommandProc$1;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLHandleCommandProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLHandleCommandProc;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLHandleCommandProc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1622
    if-eqz p1, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v0

    iput-object p1, v0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    .line 1624
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    .line 1635
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    .line 1630
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1642
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1649
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$1(Lcom/access/bml/BMLHandleCommandProc;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    iget-object v1, v1, Lcom/access/bml/BMLHandleCommandProc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1658
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    invoke-static {v0}, Lcom/access/bml/BMLHandleCommandProc;->access$1(Lcom/access/bml/BMLHandleCommandProc;)Landroid/location/LocationManager;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc$1;->this$0:Lcom/access/bml/BMLHandleCommandProc;

    iget-object v5, v1, Lcom/access/bml/BMLHandleCommandProc;->locationListener:Landroid/location/LocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1659
    return-void
.end method
