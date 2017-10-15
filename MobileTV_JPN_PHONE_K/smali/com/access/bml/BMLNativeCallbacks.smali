.class public abstract Lcom/access/bml/BMLNativeCallbacks;
.super Ljava/lang/Object;
.source "BMLNativeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/access/bml/BMLNativeCallbacks$Timer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BMLNativeCallbacks"

.field private static final TIMER_PERIOD:D = 324638.0


# instance fields
.field public BaseStationLatitude:Ljava/lang/String;

.field public BaseStationLongitude:Ljava/lang/String;

.field public final available:Ljava/util/concurrent/Semaphore;

.field public bQuit:Z

.field public fAction:I

.field public fAffiliationID:I

.field public fAppDetail:Ljava/lang/String;

.field public fAppDetailLen:I

.field public fAppName:Ljava/lang/String;

.field public fArgStr:[B

.field public fAudioStream_Channel:I

.field public fAudioStream_ComponentTag:I

.field public fAudioStream_EventType:I

.field public fAudioStream_Status:S

.field public fAuth_Challenge:[B

.field public fAuth_KeepPassword:Z

.field public fAuth_KeepUserName:Z

.field public fAuth_Password:Ljava/lang/String;

.field public fAuth_ProxyHost:Ljava/lang/String;

.field public fAuth_ProxyPort:I

.field public fAuth_Realm:[B

.field public fAuth_Target:I

.field public fAuth_Type:I

.field public fAuth_URL:Ljava/lang/String;

.field public fAuth_UserName:[B

.field public fBaseURIDirectory:Ljava/lang/String;

.field public fBlock:I

.field public fBookmarkBlockNo:I

.field public fBookmarkTitle:[B

.field public fCategory:I

.field public fConfirmed_Reply:Z

.field public fConfirmed_certReply:Z

.field public fContent_By:I

.field public fContent_ErrorCode:I

.field public fContent_Inclusion:Z

.field public fContent_StatusCode:I

.field public fContent_URL:Ljava/lang/String;

.field public fCurrentURI:Ljava/lang/String;

.field public fDoContinue:Z

.field public fDoPermit:Z

.field public fDoRedirect_Reply:Z

.field public fDoRequestContent:Z

.field public fDoRequestContent_Reply:Z

.field public fDoWrite:Z

.field public fDraw_ErrorCode:I

.field public fErrorCode:I

.field public fErrorRange:I

.field public fEventChanged_ComponentTag:I

.field public fEventChanged_EventType:I

.field public fEventChanged_Status:S

.field public fFailureAction_ArgStr:[B

.field public fFailureAction_FuncName:Ljava/lang/String;

.field public fFuncName:Ljava/lang/String;

.field public fGeodeticSystem:I

.field public fInputFormatError_Format:Ljava/lang/String;

.field public fInputFormatError_Value:[B

.field public fKeepPassword_Reply:Z

.field public fKeepUserName_Reply:Z

.field public fLatitude:Ljava/lang/String;

.field public fLongitude:Ljava/lang/String;

.field public fMajorNo:Ljava/lang/String;

.field public fMakerId:Ljava/lang/String;

.field public fMediaStopped_EventType:I

.field public fMediaStopped_ObjectID:Ljava/lang/String;

.field public fMediaStopped_Status:S

.field public fMessageFired_ComponentTag:I

.field public fMessageFired_EventType:I

.field public fMessageFired_MessageGroupID:S

.field public fMessageFired_MessageID:S

.field public fMessageFired_MessageVersion:S

.field public fMessageFired_PrivateData:Ljava/lang/String;

.field public fMessageFired_Status:S

.field public fMessageFired_TimeMode:I

.field public fMessageFired_fDay:I

.field public fMessageFired_fDayOfWeek:I

.field public fMessageFired_fHour:I

.field public fMessageFired_fMillisecond:S

.field public fMessageFired_fMinute:I

.field public fMessageFired_fMonth:I

.field public fMessageFired_fSecond:I

.field public fMessageFired_fYear:S

.field public fMinorNo:Ljava/lang/String;

.field public fModuleLocked_ComponentTag:I

.field public fModuleLocked_EventType:I

.field public fModuleLocked_ModuleID:I

.field public fModuleLocked_Status:S

.field public fModuleUpdated_ComponentTag:I

.field public fModuleUpdated_EventType:I

.field public fModuleUpdated_ModuleID:I

.field public fModuleUpdated_Status:S

.field public fPassword_Reply:Ljava/lang/String;

.field public fRedirectDialog_Method:I

.field public fRedirectDialog_NewURL:Ljava/lang/String;

.field public fRedirectDialog_URL:Ljava/lang/String;

.field public fReplacedBookmarkTitle:[B

.field public fRequestID:I

.field public fRequestURI:Ljava/lang/String;

.field public fServerCert_VerifyResult:I

.field public fSetLocation_URL:Ljava/lang/String;

.field public fStatus:I

.field public fStreamState_State:I

.field public fStreamState_URL:Ljava/lang/String;

.field public fSubID:I

.field public fUserName_Reply:[B

.field public fWindowState_State:I

.field public handler:Landroid/os/Handler;

.field public location:Landroid/location/Location;

.field locationListener:Landroid/location/LocationListener;

.field public locationManager:Landroid/location/LocationManager;

.field protected mContext:Landroid/content/Context;

.field protected m_BMLView:Lcom/access/bml/BMLNativeView;

.field protected m_selected_surf_holder:Landroid/view/SurfaceHolder;

.field public nativeEngine:I

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private posCount:D

.field public posResult:I

.field public rStrength:I

.field private rcvCount:D

.field public telephonyManager:Landroid/telephony/TelephonyManager;

.field public timers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/access/bml/BMLNativeCallbacks$Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->bQuit:Z

    .line 230
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->available:Ljava/util/concurrent/Semaphore;

    .line 352
    new-instance v1, Lcom/access/bml/BMLNativeCallbacks$1;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLNativeCallbacks$1;-><init>(Lcom/access/bml/BMLNativeCallbacks;)V

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 409
    new-instance v1, Lcom/access/bml/BMLNativeCallbacks$2;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLNativeCallbacks$2;-><init>(Lcom/access/bml/BMLNativeCallbacks;)V

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->locationListener:Landroid/location/LocationListener;

    .line 454
    iput-wide v4, p0, Lcom/access/bml/BMLNativeCallbacks;->rcvCount:D

    .line 456
    iput-wide v4, p0, Lcom/access/bml/BMLNativeCallbacks;->posCount:D

    .line 458
    const-string v1, "0"

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->BaseStationLatitude:Ljava/lang/String;

    .line 460
    const-string v1, "0"

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->BaseStationLongitude:Ljava/lang/String;

    .line 462
    iput v2, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    .line 544
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fSetLocation_URL:Ljava/lang/String;

    .line 546
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fDoRequestContent_Reply:Z

    .line 551
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fRedirectDialog_URL:Ljava/lang/String;

    .line 553
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fRedirectDialog_NewURL:Ljava/lang/String;

    .line 555
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fDoRedirect_Reply:Z

    .line 568
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fAuth_Password:Ljava/lang/String;

    .line 570
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fAuth_URL:Ljava/lang/String;

    .line 572
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fAuth_ProxyHost:Ljava/lang/String;

    .line 576
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fAuth_KeepUserName:Z

    .line 578
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fAuth_KeepPassword:Z

    .line 580
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fConfirmed_Reply:Z

    .line 584
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fPassword_Reply:Ljava/lang/String;

    .line 586
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fKeepUserName_Reply:Z

    .line 588
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fKeepPassword_Reply:Z

    .line 595
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fConfirmed_certReply:Z

    .line 598
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fStreamState_URL:Ljava/lang/String;

    .line 610
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fContent_URL:Ljava/lang/String;

    .line 620
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fInputFormatError_Format:Ljava/lang/String;

    .line 625
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fDoRequestContent:Z

    .line 627
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fFuncName:Ljava/lang/String;

    .line 629
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fDoPermit:Z

    .line 642
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fDoWrite:Z

    .line 656
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fBaseURIDirectory:Ljava/lang/String;

    .line 658
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fCurrentURI:Ljava/lang/String;

    .line 660
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fFailureAction_FuncName:Ljava/lang/String;

    .line 664
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fRequestURI:Ljava/lang/String;

    .line 667
    iput-boolean v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fDoContinue:Z

    .line 673
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fMakerId:Ljava/lang/String;

    .line 675
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fAppName:Ljava/lang/String;

    .line 677
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fMajorNo:Ljava/lang/String;

    .line 679
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fMinorNo:Ljava/lang/String;

    .line 681
    const-string v1, ""

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fAppDetail:Ljava/lang/String;

    .line 683
    iput v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fAppDetailLen:I

    .line 686
    const-string v1, "0"

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    .line 688
    const-string v1, "0"

    iput-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    .line 690
    iput v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fGeodeticSystem:I

    .line 692
    const/4 v1, 0x4

    iput v1, p0, Lcom/access/bml/BMLNativeCallbacks;->fErrorRange:I

    .line 694
    iput v2, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    .line 45
    iput-object p1, p0, Lcom/access/bml/BMLNativeCallbacks;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/access/bml/BMLNativeCallbacks;->init_timer()V

    .line 50
    :try_start_0
    const-string v1, "BMLJNI"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BMLNativeCallbacks"

    const-string v2, "can\'t find <BMLJNI> library file !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init_timer()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->handler:Landroid/os/Handler;

    .line 234
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    .line 235
    return-void
.end method

.method private setLocationProviderState(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 193
    return-void
.end method


# virtual methods
.method public abstract BML_CB_Audio_ClosePeer(I)V
.end method

.method public abstract BML_CB_Audio_GetStatusPeer(I)I
.end method

.method public abstract BML_CB_Audio_OpenPeer([BII[B)I
.end method

.method public abstract BML_CB_Audio_SetStatusPeer(II)I
.end method

.method public abstract BML_CB_CancelModalState()I
.end method

.method public abstract BML_CB_Control_FinalizePeer()V
.end method

.method public BML_CB_Control_GetResidentAppVersionPeer(Ljava/lang/String;)V
    .locals 1
    .param p1, "in_app_name"    # Ljava/lang/String;

    .prologue
    .line 1402
    const-string v0, "3F"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fMakerId:Ljava/lang/String;

    .line 1403
    const-string v0, "NetFrontFOrDTV/WE"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fAppName:Ljava/lang/String;

    .line 1404
    const-string v0, "0320"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fMajorNo:Ljava/lang/String;

    .line 1405
    const-string v0, "0150"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fMinorNo:Ljava/lang/String;

    .line 1406
    const-string v0, "2010/07/15"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fAppDetail:Ljava/lang/String;

    .line 1407
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fAppDetail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fAppDetailLen:I

    .line 1408
    return-void
.end method

.method public abstract BML_CB_Control_InitializePeer(I)I
.end method

.method public abstract BML_CB_Control_NotifyDocumentPeer(II[B)V
.end method

.method public abstract BML_CB_Control_NotifyHaltPeer(I)V
.end method

.method public abstract BML_CB_Control_NotifyLocationPeer([B)V
.end method

.method public abstract BML_CB_Control_NotifyServicePeer(III)V
.end method

.method public abstract BML_CB_Control_PlayRomSoundPeer([B)I
.end method

.method public abstract BML_CB_Control_SaveImageToMemoryCardPeer(I[BZ[B)I
.end method

.method public abstract BML_CB_Control_SaveImageToMemoryCard_CancelPeer()V
.end method

.method public abstract BML_CB_Control_SetTitlePeer([B)V
.end method

.method public abstract BML_CB_DTV_EVENT_DATAEVENTCHANGED(III)V
.end method

.method public abstract BML_CB_DTV_EVENT_HALT(I)V
.end method

.method public abstract BML_CB_DTV_EVENT_RETURNTOENTRY()V
.end method

.method public abstract BML_CB_DTV_EVENT_SERVICECHANGED(IIII)V
.end method

.method public abstract BML_CB_Engine_Halt()I
.end method

.method public abstract BML_CB_Event_SetEventMaskPeer_MediaStopped(I)V
.end method

.method public abstract BML_CB_Event_SetUsedKeyListPeer(I)I
.end method

.method public abstract BML_CB_ExecuteHalt(I)I
.end method

.method public abstract BML_CB_NotifyEnterUnload(Z)V
.end method

.method public abstract BML_CB_NotifyTransitionDone()V
.end method

.method public abstract BML_CB_SetFullDataDisplayArea(II)I
.end method

.method public abstract BML_CB_System_EnterStatusPeer(I)I
.end method

.method public abstract BML_CB_System_LeaveStatusPeer(I)I
.end method

.method public abstract BML_CB_System_NotifyErrorPeer(I)I
.end method

.method public BML_CB_XDPA_GetCurPosCancelPeer()V
    .locals 3

    .prologue
    .line 1329
    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 1330
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    .line 1331
    const-string v0, "0"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    .line 1332
    const/4 v0, -0x1

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    .line 1334
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1336
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BML_CB_XDPA_GetCurPosCancelPeer]Latitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", posResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeCallbacks;->stopLocationService()V

    .line 1343
    return-void

    .line 1339
    :cond_2
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BML_CB_XDPA_GetCurPosCancelPeer]posResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "[Status] Outter Cancel routine!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public BML_CB_XDPA_GetCurPosPeer(I)I
    .locals 4
    .param p1, "in_pos_info"    # I

    .prologue
    .line 1305
    iget-wide v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posCount:D

    const-wide v2, 0x4113d07800000000L    # 324638.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posCount:D

    .line 1306
    iget-wide v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posCount:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, -0x3

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    .line 1308
    :cond_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1310
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BML_CB_XDPA_GetCurPosPeer] posCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/access/bml/BMLNativeCallbacks;->posCount:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", in_pos_info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BML_CB_XDPA_GetCurPosPeer] Latitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Longitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", posResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BML_CB_XDPA_GetCurPosPeer] BaseStationLatitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->BaseStationLatitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BaseStationLongitude : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->BaseStationLongitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_1
    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    if-nez v0, :cond_2

    .line 1316
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "Got location information successfully, stop service"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeCallbacks;->stopLocationService()V

    .line 1319
    :cond_2
    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    return v0
.end method

.method public BML_CB_XDPA_GetRcvCondCancelPeer()V
    .locals 3

    .prologue
    .line 1383
    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 1384
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    .line 1385
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "[BML_CB_XDPA_GetRcvCondCancelPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Output] Result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "[Status] Inner Cancel routine!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :goto_0
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeCallbacks;->stopTelephonyService()V

    .line 1394
    return-void

    .line 1389
    :cond_1
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "[BML_CB_XDPA_GetRcvCondCancelPeer]"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Output] Result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "[Status] Outter Cancel routine!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public BML_CB_XDPA_GetRcvCondPeer()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1359
    iget-wide v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rcvCount:D

    const-wide v2, 0x4113d07800000000L    # 324638.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rcvCount:D

    .line 1360
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcvCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/access/bml/BMLNativeCallbacks;->rcvCount:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget-wide v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rcvCount:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, -0x3

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    .line 1362
    :cond_0
    const-string v0, "BMLNativeCallbacks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BML_CB_XDPA_GetRcvCondPeer]Result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    if-ne v0, v4, :cond_2

    .line 1370
    :cond_1
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "Got cell strength information successfully, stop service"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Lcom/access/bml/BMLNativeCallbacks;->stopTelephonyService()V

    .line 1373
    :cond_2
    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    return v0
.end method

.method public abstract BML_CB_XDPA_MailToPeer([B[B[B)I
.end method

.method public abstract BML_CB_XDPA_MailTo_CancelPeer()V
.end method

.method public abstract BML_CB_XDPA_PhoneToPeer(Ljava/lang/String;)I
.end method

.method public abstract BML_CB_XDPA_PhoneTo_CancelPeer()V
.end method

.method public abstract BML_CB_XDPA_SaveExAppFilePeer([B[B[BZ)I
.end method

.method public abstract BML_CB_XDPA_SaveExAppFile_CancelPeer()V
.end method

.method public abstract BML_CB_XDPA_StartResidentAppPeer([BI[B[Ljava/lang/String;)I
.end method

.method public abstract BML_CB_XDPA_StartResidentApp_CancelPeer()V
.end method

.method public abstract BML_CB_XDPA_TuneWithRFPeer(IIII)I
.end method

.method public abstract BML_CB_XDPA_WriteAddressBookInfoPeer([B[BLjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract BML_CB_XDPA_WriteAddressBookInfo_CancelPeer()V
.end method

.method public abstract BML_CB_XDPA_WriteSchInfoPeer(SIIIIIIS[B[BZ)I
.end method

.method public abstract BML_CB_XDPA_WriteSchInfo_CancelPeer()V
.end method

.method public abstract BML_CB_appExIMEStartPeer([BZZII)Z
.end method

.method public native BML_CompleteHalt(I)V
.end method

.method public native BML_CustomizeEngine(I)Z
.end method

.method public native BML_EscapeHalt()Z
.end method

.method public native BML_Finalize()V
.end method

.method public native BML_GetApplicationMode()I
.end method

.method public native BML_GetBufferingKeyEventCount()I
.end method

.method public native BML_GetDTVEvent()Z
.end method

.method public native BML_GetHaltStatus()I
.end method

.method public native BML_GetLinkStatus()I
.end method

.method public native BML_HasFocusOrBlurEventInQueue()Z
.end method

.method public native BML_Initialize(I)Z
.end method

.method public native BML_IsHalt()Z
.end method

.method public native BML_NotifyBroadcastStatus(I)Z
.end method

.method public native BML_NotifyReturnToEntry()Z
.end method

.method public native BML_NotifyServiceChanged(IIII)Z
.end method

.method public native BML_NotifyServiceChangedByBookmark(IIIILjava/lang/String;[I)Z
.end method

.method public native BML_PostDTVBEvent_DataEventChanged(I)Z
.end method

.method public native BML_PostDTVBEvent_EventMessageFired(I)Z
.end method

.method public native BML_PostDTVBEvent_MainAudioStreamChanged(I)Z
.end method

.method public native BML_PostDTVBEvent_MediaStopped(I)Z
.end method

.method public native BML_PostDTVBEvent_ModuleLocked(I)Z
.end method

.method public native BML_PostDTVBEvent_ModuleUpdated(I)Z
.end method

.method public native BML_RequestHalt(I)Z
.end method

.method public native BML_RestoreEngine()V
.end method

.method public native BML_SetBrowserWindow(I)V
.end method

.method public native BML_SetResolution(II)V
.end method

.method public native BML_WindowDisplayImage(I)Z
.end method

.method public native BML_WindowRenovate(I)V
.end method

.method public native BML_WindowSetDisplayImage(IZ)V
.end method

.method public native BML_appExIMEEndPeer(Z[B)V
.end method

.method public abstract Browser_CB_CommandHandler_HandleCommandProc(II)I
.end method

.method public native Browser_MainRun()Z
.end method

.method public native Browser_RefreshCanvas()V
.end method

.method public native Browser_ReplyToCommand()V
.end method

.method public native Browser_SetNativeRect(IIFF)V
.end method

.method public Browser_SetRect(IIFF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 1846
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    iput p1, v0, Lcom/access/bml/BMLNativeView;->screenWidth:I

    .line 1851
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    iput p2, v0, Lcom/access/bml/BMLNativeView;->screenHeight:I

    .line 1854
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/access/bml/BMLNativeCallbacks;->Browser_SetNativeRect(IIFF)V

    .line 1855
    return-void
.end method

.method public native Browser_StandardFinalize()V
.end method

.method public native Browser_StandardInitialize()Z
.end method

.method public native Browser_UpdateCanvasColor(I)V
.end method

.method public native Browser_WindowAbort()V
.end method

.method public native Browser_WindowDelete()V
.end method

.method public native Browser_WindowNew()I
.end method

.method public native Browser_WindowSetLocation(ILjava/lang/String;I)Z
.end method

.method public native Browser_processKeyEvent(IIZ)I
.end method

.method public native Browser_processMouseEvent(III)V
.end method

.method public native DTVNVRAMDB_DeleteAllAffiliationAreas()Z
.end method

.method public native DTVNVRAMDB_DeleteAllCproBMInfo()Z
.end method

.method public native DTVNVRAMDB_DeleteBroadcasterArea(II)Z
.end method

.method public native DTVNVRAMDB_DeleteCproBMInfo(I)Z
.end method

.method public getLastMouseX()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    invoke-virtual {v0}, Lcom/access/bml/BMLNativeView;->getLastMouseX()I

    move-result v0

    return v0
.end method

.method public getLastMouseY()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    invoke-virtual {v0}, Lcom/access/bml/BMLNativeView;->getLastMouseY()I

    move-result v0

    return v0
.end method

.method public getTimer(I)I
    .locals 2
    .param p1, "in_id"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml/BMLNativeCallbacks$Timer;

    invoke-virtual {v1}, Lcom/access/bml/BMLNativeCallbacks$Timer;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 242
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 238
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public get_scr_height()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    invoke-virtual {v0}, Lcom/access/bml/BMLNativeView;->get_scr_height()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x320

    goto :goto_0
.end method

.method public get_scr_width()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    invoke-virtual {v0}, Lcom/access/bml/BMLNativeView;->get_scr_width()I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e0

    goto :goto_0
.end method

.method public initView(Lcom/access/bml/BMLNativeView;)V
    .locals 1
    .param p1, "nativeView"    # Lcom/access/bml/BMLNativeView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    .line 64
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->m_BMLView:Lcom/access/bml/BMLNativeView;

    invoke-virtual {v0}, Lcom/access/bml/BMLNativeView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/access/bml/BMLNativeCallbacks;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 65
    return-void
.end method

.method public killTimer(I)V
    .locals 4
    .param p1, "in_id"    # I

    .prologue
    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 277
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLNativeCallbacks;->getTimer(I)I

    move-result v1

    .line 278
    .local v1, "i":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/access/bml/BMLNativeCallbacks$Timer;

    invoke-virtual {v2}, Lcom/access/bml/BMLNativeCallbacks$Timer;->stop()V

    .line 280
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 286
    :goto_0
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 294
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 284
    .restart local v1    # "i":I
    :cond_0
    const-string v2, "BMLNativeCallbacks"

    const-string v3, "Invalid timer index"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public native onTimer(I)V
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/access/bml/BMLNativeCallbacks;->bQuit:Z

    .line 337
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/access/bml/BMLNativeCallbacks;->bQuit:Z

    if-eqz v0, :cond_0

    .line 333
    :cond_0
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "selected_surf_holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/access/bml/BMLNativeCallbacks;->m_selected_surf_holder:Landroid/view/SurfaceHolder;

    .line 60
    return-void
.end method

.method public setTimer(II)I
    .locals 3
    .param p1, "in_id"    # I
    .param p2, "in_delay"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/access/bml/BMLNativeCallbacks;->getTimer(I)I

    move-result v0

    .line 256
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 257
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/access/bml/BMLNativeCallbacks$Timer;

    .line 258
    .local v1, "t":Lcom/access/bml/BMLNativeCallbacks$Timer;
    invoke-virtual {v1}, Lcom/access/bml/BMLNativeCallbacks$Timer;->stop()V

    .line 263
    :goto_0
    invoke-virtual {v1, p2}, Lcom/access/bml/BMLNativeCallbacks$Timer;->start(I)V

    .line 265
    const/4 v2, 0x1

    return v2

    .line 260
    .end local v1    # "t":Lcom/access/bml/BMLNativeCallbacks$Timer;
    :cond_0
    new-instance v1, Lcom/access/bml/BMLNativeCallbacks$Timer;

    invoke-direct {v1, p0, p1}, Lcom/access/bml/BMLNativeCallbacks$Timer;-><init>(Lcom/access/bml/BMLNativeCallbacks;I)V

    .line 261
    .restart local v1    # "t":Lcom/access/bml/BMLNativeCallbacks$Timer;
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->timers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startLocationService()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 115
    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fArgStr:[B

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 116
    .local v6, "arg":Ljava/lang/String;
    const-string v1, ""

    .line 117
    .local v1, "provider":Ljava/lang/String;
    const-string v0, "CB"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const-string v1, "network"

    .line 125
    :goto_0
    const-string v0, "BMLNativeCallbacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLocationService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/access/bml/BMLNativeCallbacks;->posCount:D

    .line 129
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    .line 130
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/access/bml/BMLNativeCallbacks;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 131
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->location:Landroid/location/Location;

    .line 132
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->location:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 133
    new-instance v0, Ljava/lang/Double;

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/Double;

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    .line 136
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const-string v0, "BMLNativeCallbacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init(location info found) : fLatitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fLongitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", posResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    .line 157
    :cond_1
    :goto_1
    return-void

    .line 119
    :cond_2
    const-string v0, "GPS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 120
    const-string v1, "gps"

    goto/16 :goto_0

    .line 122
    :cond_3
    const-string v0, "BMLNativeCallbacks"

    const-string v2, "Invalid provider!"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v7, :cond_5

    .line 143
    const-string v0, "BMLNativeCallbacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_2
    const-string v0, "0"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    .line 149
    const-string v0, "0"

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    .line 150
    const/4 v0, -0x2

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    .line 152
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string v0, "BMLNativeCallbacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init(location info not found) : fLatitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/access/bml/BMLNativeCallbacks;->fLatitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fLongitude:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/access/bml/BMLNativeCallbacks;->fLongitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", posResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/access/bml/BMLNativeCallbacks;->posResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_5
    const-string v0, "BMLNativeCallbacks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled, try to start service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, v7}, Lcom/access/bml/BMLNativeCallbacks;->setLocationProviderState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public startTelephonyService(I)V
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 201
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "startTelephonyService"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 203
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 206
    const/4 v0, -0x2

    iput v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rStrength:I

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/access/bml/BMLNativeCallbacks;->rcvCount:D

    .line 208
    return-void
.end method

.method public stopLocationService()V
    .locals 5

    .prologue
    .line 165
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->fArgStr:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v0, "argStr":Ljava/lang/String;
    const-string v1, ""

    .line 167
    .local v1, "provider":Ljava/lang/String;
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    .line 168
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->locationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/access/bml/BMLNativeCallbacks;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 170
    const-string v2, "CB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const-string v1, "network"

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/access/bml/BMLNativeCallbacks;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/access/bml/BMLNativeCallbacks;->setLocationProviderState(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 179
    const-string v2, "BMLNativeCallbacks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to stopLocationService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_1
    return-void

    .line 172
    :cond_0
    const-string v2, "GPS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 173
    const-string v1, "gps"

    goto :goto_0

    .line 175
    :cond_1
    const-string v2, "BMLNativeCallbacks"

    const-string v3, "Invalid provider!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopTelephonyService()V
    .locals 3

    .prologue
    .line 216
    const-string v0, "BMLNativeCallbacks"

    const-string v1, "stopTelephonyService"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 218
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/access/bml/BMLNativeCallbacks;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 219
    return-void
.end method
