.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;
.super Ljava/lang/Object;
.source "MmbFcBrowMwGeolocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbFcBrowMwGeolocationService"

.field private static final WEBKIT_GEOLOCATION_ENABLE_GPS:I = 0x67

.field private static final WEBKIT_GEOLOCATION_INIT:I = 0x64

.field private static final WEBKIT_GEOLOCATION_START:I = 0x65

.field private static final WEBKIT_GEOLOCATION_STOP:I = 0x66


# instance fields
.field mContext:Landroid/content/Context;

.field private mGeolocationHandler:Landroid/os/Handler;

.field private mIsGpsEnabled:Z

.field private mIsGpsProviderAvailable:Z

.field private mIsNetworkProviderAvailable:Z

.field private mIsRunning:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNativeNotify:I

.field private mNativeObject:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    .line 46
    iput v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeNotify:I

    .line 48
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsEnabled:Z

    .line 49
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsRunning:Z

    .line 50
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsNetworkProviderAvailable:Z

    .line 51
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsProviderAvailable:Z

    .line 66
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->createGeolocationHandler()V

    .line 68
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->nativeGeolocationInit()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    .prologue
    .line 38
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$002(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;
    .param p1, "x1"    # Landroid/location/LocationManager;

    .prologue
    .line 38
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mLocationManager:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    .prologue
    .line 38
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->registerForLocationUpdates()V

    return-void
.end method

.method static synthetic access$200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)Z
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    .prologue
    .line 38
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;Z)Z
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$300(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    .prologue
    .line 38
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->unregisterFromLocationUpdates()V

    return-void
.end method

.method private createGeolocationHandler()V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    .line 314
    return-void
.end method

.method static initMmbFcBrowMwGeolocationService(Landroid/content/Context;)V
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 73
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;-><init>(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private maybeReportError(Ljava/lang/String;)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsNetworkProviderAvailable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsProviderAvailable:Z

    if-nez v0, :cond_0

    .line 271
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeNotify:I

    invoke-direct {p0, v0, v1, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->nativeNewErrorAvailable(IILjava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method private native nativeGeolocationInit()V
.end method

.method private native nativeNewErrorAvailable(IILjava/lang/String;)V
.end method

.method private native nativeNewLocationAvailable(IILandroid/location/Location;)V
.end method

.method private registerForLocationUpdates()V
    .locals 7

    .prologue
    .line 220
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "registerForLocationUpdates"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsNetworkProviderAvailable:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsEnabled:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    .line 233
    :try_start_2
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsProviderAvailable:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v6

    .line 236
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeNotify:I

    const-string v2, "Unable to get GPS location provider."

    invoke-direct {p0, v0, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->nativeNewErrorAvailable(IILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 239
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 241
    .local v6, "e":Ljava/lang/SecurityException;
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeNotify:I

    const-string v2, "Caught security exception registering for location updates from system. This should only happen in DumpRenderTree."

    invoke-direct {p0, v0, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->nativeNewErrorAvailable(IILjava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v6

    .line 229
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeNotify:I

    const-string v2, "Unable to get network location provider."

    invoke-direct {p0, v0, v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->nativeNewErrorAvailable(IILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private unregisterFromLocationUpdates()V
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "unregisterFromLocationUpdates"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 257
    :cond_0
    return-void
.end method

.method private webkitGeolocationInit(II)V
    .locals 5
    .param p1, "aNativeObject"    # I
    .param p2, "aNativeNotify"    # I

    .prologue
    const/4 v4, 0x0

    .line 85
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitGeolocationInit"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 86
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    .line 87
    iput p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeNotify:I

    .line 89
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method

.method private webkitGeolocationSetEnableGps(Z)V
    .locals 5
    .param p1, "aEnable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 131
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitGeolocationSetEnableGps"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 132
    iget-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsEnabled:Z

    if-eq v1, p1, :cond_0

    .line 134
    iput-boolean p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsEnabled:Z

    .line 135
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private webkitGeolocationStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitGeolocationStart"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 102
    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "mNativeObject is null"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private webkitGeolocationStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "webkitGeolocationStop"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mGeolocationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "aLocation"    # Landroid/location/Location;

    .prologue
    .line 152
    iget-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 153
    iget v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeObject:I

    iget v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mNativeNotify:I

    invoke-direct {p0, v0, v1, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->nativeNewLocationAvailable(IILandroid/location/Location;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "aProviderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 204
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsNetworkProviderAvailable:Z

    .line 209
    :cond_0
    :goto_0
    const-string v0, "The last location provider was disabled"

    invoke-direct {p0, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->maybeReportError(Ljava/lang/String;)V

    .line 210
    return-void

    .line 206
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_0
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "aProviderName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 188
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsNetworkProviderAvailable:Z

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iput-boolean v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "aProviderName"    # Ljava/lang/String;
    .param p2, "aStatus"    # I
    .param p3, "aExtras"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 169
    .local v0, "isavailable":Z
    :goto_0
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsNetworkProviderAvailable:Z

    .line 174
    :cond_0
    :goto_1
    const-string v1, "The last location provider is no longer available"

    invoke-direct {p0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->maybeReportError(Ljava/lang/String;)V

    .line 175
    return-void

    .line 168
    .end local v0    # "isavailable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    .restart local v0    # "isavailable":Z
    :cond_2
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iput-boolean v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwGeolocationService;->mIsGpsProviderAvailable:Z

    goto :goto_1
.end method
