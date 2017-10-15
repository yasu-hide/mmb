.class Lcom/access/bml/BMLNativeCallbacks$2;
.super Ljava/lang/Object;
.source "BMLNativeCallbacks.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLNativeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLNativeCallbacks;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLNativeCallbacks;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 411
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "locationListener : Location Changed!!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz p1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    new-instance v1, Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    new-instance v1, Ljava/lang/Double;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    const/4 v1, 0x0

    iput v1, v0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    .line 417
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location info found: fLatitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v2, v2, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fLongitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v2, v2, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", posResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget v2, v2, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    const-string v1, "0"

    iput-object v1, v0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    const-string v1, "0"

    iput-object v1, v0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    const/4 v1, -0x2

    iput v1, v0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    .line 426
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location info not found : fLatitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v2, v2, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fLongitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v2, v2, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", posResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget v2, v2, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 434
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 442
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "locationListener : Status Changed!!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v0, v0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v1, v1, Lcom/access/bml/BMLNativeCallbacks;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 444
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v0, v0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/access/bml/BMLNativeCallbacks$2;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v5, v1, Lcom/access/bml/BMLNativeCallbacks;->locationListener:Landroid/location/LocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 445
    return-void
.end method
