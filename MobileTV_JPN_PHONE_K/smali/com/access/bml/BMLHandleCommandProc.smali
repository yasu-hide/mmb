.class public Lcom/access/bml/BMLHandleCommandProc;
.super Ljava/lang/Object;
.source "BMLHandleCommandProc.java"


# static fields
.field public static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "HandleCommandProc"


# instance fields
.field private handler:Landroid/os/Handler;

.field locationListener:Landroid/location/LocationListener;

.field private mAlertDial:Landroid/app/AlertDialog;

.field private mBmlView:Lcom/access/bml/BMLView;

.field private mContext:Landroid/content/Context;

.field private mLocationInfo:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNotifyConnection:I

.field private mPackageName:Ljava/lang/String;

.field private mPopupPrevent:Z

.field private mPosProvider:Ljava/lang/String;

.field private mPos_Info:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsSettings:Landroid/content/SharedPreferences;

.field private mToast:Landroid/widget/Toast;

.field private posProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/access/bml/BMLView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bmlView"    # Lcom/access/bml/BMLView;

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mToast:Landroid/widget/Toast;

    .line 78
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPackageName:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefs:Landroid/content/SharedPreferences;

    .line 80
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mAlertDial:Landroid/app/AlertDialog;

    .line 82
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPos_Info:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPosProvider:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefsSettings:Landroid/content/SharedPreferences;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->posProvider:Ljava/lang/String;

    .line 93
    iput v3, p0, Lcom/access/bml/BMLHandleCommandProc;->mNotifyConnection:I

    .line 94
    iput v3, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationInfo:I

    .line 96
    iput-boolean v2, p0, Lcom/access/bml/BMLHandleCommandProc;->mPopupPrevent:Z

    .line 1616
    new-instance v0, Lcom/access/bml/BMLHandleCommandProc$1;

    invoke-direct {v0, p0}, Lcom/access/bml/BMLHandleCommandProc$1;-><init>(Lcom/access/bml/BMLHandleCommandProc;)V

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->locationListener:Landroid/location/LocationListener;

    .line 717
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    .line 718
    iput-object p2, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    .line 719
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPackageName:Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefs:Landroid/content/SharedPreferences;

    .line 721
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.sec.mtv.utility"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefsSettings:Landroid/content/SharedPreferences;

    .line 722
    return-void
.end method

.method private GetConnectionSettingPref()I
    .locals 4

    .prologue
    .line 1501
    const/4 v0, 0x0

    .line 1502
    .local v0, "val":I
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefsSettings:Landroid/content/SharedPreferences;

    const-string v2, "pref_broadcast_notify"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1506
    return v0
.end method

.method private GetIRDIDSettingPref()I
    .locals 4

    .prologue
    .line 1510
    const/4 v0, 0x0

    .line 1511
    .local v0, "val":I
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefsSettings:Landroid/content/SharedPreferences;

    const-string v2, "pref_broadcast_manufacture"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1515
    return v0
.end method

.method private GetLocationSettingPref()I
    .locals 4

    .prologue
    .line 1492
    const/4 v0, 0x0

    .line 1493
    .local v0, "val":I
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefsSettings:Landroid/content/SharedPreferences;

    const-string v2, "pref_broadcast_location"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1497
    return v0
.end method

.method private NotifyContentError(ILcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;)V
    .locals 4
    .param p1, "cmdID"    # I
    .param p2, "in_cmd"    # Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;

    .prologue
    const/4 v3, 0x0

    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, "msg":Ljava/lang/String;
    iget v1, p2, Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;->fErrorCode:I

    sparse-switch v1, :sswitch_data_0

    .line 694
    const-string v1, "unknown_error"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    :goto_0
    :sswitch_0
    if-eqz v0, :cond_0

    .line 699
    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 702
    :cond_0
    iget v1, p2, Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;->fErrorCode:I

    const/16 v2, -0x44b

    if-ne v1, v2, :cond_2

    .line 703
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    .line 707
    :goto_1
    return-void

    .line 539
    :sswitch_1
    const-string v1, "unknown_error"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    goto :goto_0

    .line 545
    :sswitch_2
    const-string v1, "unknown_error"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    goto :goto_0

    .line 554
    :sswitch_3
    const-string v1, "connection_failed"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    goto :goto_0

    .line 564
    :sswitch_4
    const-string v1, "connection_interrupted"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    goto :goto_0

    .line 573
    :sswitch_5
    const-string v1, "error_ssl_connect"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    goto :goto_0

    .line 576
    :sswitch_6
    const-string v1, "timeout"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    goto :goto_0

    .line 579
    :sswitch_7
    const-string v1, "error_cache_none"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    goto :goto_0

    .line 582
    :sswitch_8
    const-string v1, "error_cache_expire"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    goto :goto_0

    .line 587
    :sswitch_9
    const-string v1, "error_auth_unknown"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    goto :goto_0

    .line 592
    :sswitch_a
    iget v1, p2, Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;->fStatusCode:I

    packed-switch v1, :pswitch_data_0

    .line 600
    const-string v1, "syntax_error"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    goto :goto_0

    .line 594
    :pswitch_0
    const-string v1, "error_invalid_data_301"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    goto :goto_0

    .line 597
    :pswitch_1
    const-string v1, "error_invalid_data_302"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    goto :goto_0

    .line 606
    :sswitch_b
    const-string v1, "loading_canceled"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    goto :goto_0

    .line 610
    :sswitch_c
    const-string v1, "error_sizeover"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    goto :goto_0

    .line 613
    :sswitch_d
    iget v1, p2, Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;->fStatusCode:I

    sparse-switch v1, :sswitch_data_1

    .line 654
    const-string v1, "syntax_error"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    goto/16 :goto_0

    .line 615
    :sswitch_e
    const-string v1, "error_no_content_204"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    goto/16 :goto_0

    .line 618
    :sswitch_f
    const-string v1, "error_no_content_205"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    goto/16 :goto_0

    .line 621
    :sswitch_10
    const-string v1, "error_bad_request"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    goto/16 :goto_0

    .line 627
    :sswitch_11
    const-string v1, "error_auth_connection"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    goto/16 :goto_0

    .line 630
    :sswitch_12
    const-string v1, "error_content_notfound"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    goto/16 :goto_0

    .line 633
    :sswitch_13
    const-string v1, "error_method_notallowed"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    goto/16 :goto_0

    .line 636
    :sswitch_14
    const-string v1, "error_no_response"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    goto/16 :goto_0

    .line 639
    :sswitch_15
    const-string v1, "error_length_required"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    goto/16 :goto_0

    .line 642
    :sswitch_16
    const-string v1, "error_precondition_failed"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    goto/16 :goto_0

    .line 645
    :sswitch_17
    const-string v1, "error_too_large"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    goto/16 :goto_0

    .line 648
    :sswitch_18
    const-string v1, "error_gateway_timeout"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    goto/16 :goto_0

    .line 651
    :sswitch_19
    const-string v1, "error_http_version"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    goto/16 :goto_0

    .line 660
    :sswitch_1a
    const-string v1, "error_too_many_auth"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    goto/16 :goto_0

    .line 663
    :sswitch_1b
    const-string v1, "error_total_sizeover"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    goto/16 :goto_0

    .line 669
    :sswitch_1c
    const-string v1, "error_aribdc_open"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    goto/16 :goto_0

    .line 672
    :sswitch_1d
    const-string v1, "error_aribdc_read"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    goto/16 :goto_0

    .line 675
    :sswitch_1e
    const-string v1, "timeout"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    goto/16 :goto_0

    .line 678
    :sswitch_1f
    const-string v1, "error_domain"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    goto/16 :goto_0

    .line 681
    :sswitch_20
    const-string v1, "error_crossmedia"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    goto/16 :goto_0

    .line 684
    :sswitch_21
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1}, Lcom/access/bml/BMLView;->BML_IsTuneByBookmark()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    const-string v1, "error_broadcast_transition_tvlink"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    goto/16 :goto_0

    .line 687
    :cond_1
    const-string v1, "error_broadcast_transition"

    invoke-direct {p0, v1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    goto/16 :goto_0

    .line 705
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v3}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_1

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b0 -> :sswitch_20
        -0x4af -> :sswitch_1f
        -0x4ae -> :sswitch_21
        -0x44c -> :sswitch_1c
        -0x44b -> :sswitch_1d
        -0x44a -> :sswitch_1e
        -0x258 -> :sswitch_1b
        -0x257 -> :sswitch_d
        -0x256 -> :sswitch_a
        -0x255 -> :sswitch_1a
        -0x254 -> :sswitch_0
        -0xc8 -> :sswitch_3
        -0xc7 -> :sswitch_3
        -0xc6 -> :sswitch_3
        -0xc5 -> :sswitch_3
        -0xc4 -> :sswitch_4
        -0xc3 -> :sswitch_4
        -0xc2 -> :sswitch_4
        -0xc1 -> :sswitch_4
        -0xc0 -> :sswitch_5
        -0xbf -> :sswitch_5
        -0xbe -> :sswitch_5
        -0xbd -> :sswitch_5
        -0xbc -> :sswitch_6
        -0xbb -> :sswitch_4
        -0xba -> :sswitch_7
        -0xb9 -> :sswitch_8
        -0xb8 -> :sswitch_9
        -0xb7 -> :sswitch_9
        -0xb6 -> :sswitch_9
        -0xb5 -> :sswitch_a
        -0xb4 -> :sswitch_b
        -0xb3 -> :sswitch_c
        -0xb2 -> :sswitch_c
        -0xb0 -> :sswitch_a
        -0x6 -> :sswitch_2
        -0x1 -> :sswitch_1
    .end sparse-switch

    .line 592
    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 613
    :sswitch_data_1
    .sparse-switch
        0xcc -> :sswitch_e
        0xcd -> :sswitch_f
        0x190 -> :sswitch_10
        0x191 -> :sswitch_0
        0x193 -> :sswitch_11
        0x194 -> :sswitch_12
        0x195 -> :sswitch_13
        0x198 -> :sswitch_14
        0x19b -> :sswitch_15
        0x19c -> :sswitch_16
        0x19d -> :sswitch_17
        0x1f8 -> :sswitch_18
        0x1f9 -> :sswitch_19
    .end sparse-switch
.end method

.method private Reply_Popup(IZLjava/lang/Object;)V
    .locals 3
    .param p1, "cmdID"    # I
    .param p2, "result"    # Z
    .param p3, "param1"    # Ljava/lang/Object;

    .prologue
    .line 1330
    sparse-switch p1, :sswitch_data_0

    .line 1472
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReplyType;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReplyType;-><init>()V

    .line 1473
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReplyType;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReplyType;->fCommandID:I

    .line 1474
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    .line 1478
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReplyType;
    .end local p3    # "param1":Ljava/lang/Object;
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/access/bml/BMLHandleCommandProc;->setAlertDialogToNull()V

    .line 1479
    return-void

    .line 1334
    .restart local p3    # "param1":Ljava/lang/Object;
    :sswitch_1
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;-><init>()V

    .line 1335
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;->fCommandID:I

    .line 1336
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;->fDoRequestContent:Z

    .line 1337
    invoke-direct {p0, p2}, Lcom/access/bml/BMLHandleCommandProc;->SetNotifyConnectUsersSelection(Z)V

    .line 1338
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 1344
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;
    :sswitch_2
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_RedirectDialog;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_RedirectDialog;-><init>()V

    .line 1345
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_RedirectDialog;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_RedirectDialog;->fCommandID:I

    .line 1346
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_RedirectDialog;->fDoRedirect:Z

    .line 1347
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 1352
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_RedirectDialog;
    :sswitch_3
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;-><init>()V

    .line 1353
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;
    const-string v1, "HandleCommandProc"

    const-string v2, "Reply_Popup - PermitFunction.\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string v1, "X_DPA_getCurPos"

    check-cast p3, Ljava/lang/String;

    .end local p3    # "param1":Ljava/lang/Object;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1355
    invoke-direct {p0, p2}, Lcom/access/bml/BMLHandleCommandProc;->SetLocationInfo(Z)V

    .line 1356
    invoke-direct {p0}, Lcom/access/bml/BMLHandleCommandProc;->StartLocationService()V

    .line 1358
    :cond_0
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 1359
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 1360
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 1365
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;
    .restart local p3    # "param1":Ljava/lang/Object;
    :sswitch_4
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_WritePersistentArray;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_WritePersistentArray;-><init>()V

    .line 1366
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_WritePersistentArray;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_WritePersistentArray;->fCommandID:I

    .line 1367
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_WritePersistentArray;->fDoWrite:Z

    .line 1368
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 1375
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_WritePersistentArray;
    :sswitch_5
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 1376
    check-cast v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;

    .line 1383
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;
    :goto_1
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 1379
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;
    :cond_1
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;-><init>()V

    .line 1380
    .restart local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;->fCommandID:I

    .line 1381
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;->fConfirmed:Z

    goto :goto_1

    .line 1388
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_AuthDialog;
    :sswitch_6
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;-><init>()V

    .line 1389
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;->fCommandID:I

    .line 1390
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;->fDoWrite:Z

    .line 1391
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 1397
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;
    :sswitch_7
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_JSConfirmDialog;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_JSConfirmDialog;-><init>()V

    .line 1398
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_JSConfirmDialog;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_JSConfirmDialog;->fCommandID:I

    .line 1399
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_JSConfirmDialog;->fConfirmed:Z

    .line 1400
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1405
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_JSConfirmDialog;
    :sswitch_8
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_JSPromptDialog;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_JSPromptDialog;-><init>()V

    .line 1406
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_JSPromptDialog;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_JSPromptDialog;->fCommandID:I

    .line 1407
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_JSPromptDialog;->fConfirmed:Z

    .line 1408
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1413
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_JSPromptDialog;
    :sswitch_9
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_CookieDialog;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_CookieDialog;-><init>()V

    .line 1414
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_CookieDialog;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_CookieDialog;->fCommandID:I

    .line 1415
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_CookieDialog;->fAcceptCookie:Z

    .line 1416
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1429
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_CookieDialog;
    :sswitch_a
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_ServerCertConfirmDialog;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_ServerCertConfirmDialog;-><init>()V

    .line 1430
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_ServerCertConfirmDialog;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_ServerCertConfirmDialog;->fCommandID:I

    .line 1431
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_ServerCertConfirmDialog;->fConfirmed:Z

    .line 1432
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1437
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_ServerCertConfirmDialog;
    :sswitch_b
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_HistoryBackForw;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_HistoryBackForw;-><init>()V

    .line 1438
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_HistoryBackForw;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_HistoryBackForw;->fCommandID:I

    .line 1439
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_HistoryBackForw;->fDoHistoryBackForw:Z

    .line 1440
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1445
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_HistoryBackForw;
    :sswitch_c
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_SystemRecover;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_SystemRecover;-><init>()V

    .line 1446
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_SystemRecover;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_SystemRecover;->fCommandID:I

    .line 1447
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_SystemRecover;->fSelectedAction:Z

    .line 1448
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1454
    .end local v0    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_SystemRecover;
    :sswitch_d
    new-instance v0, Lcom/access/bml/BMLCommandType$TBrowserReply_ContentError;

    invoke-direct {v0}, Lcom/access/bml/BMLCommandType$TBrowserReply_ContentError;-><init>()V

    .line 1455
    .local v0, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_ContentError;
    iput p1, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_ContentError;->fCommandID:I

    .line 1456
    iput-boolean p2, v0, Lcom/access/bml/BMLCommandType$TBrowserReply_ContentError;->fErrorRecovery:Z

    .line 1457
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v1, p1, v0}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1330
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_b
        0x3 -> :sswitch_9
        0x4 -> :sswitch_2
        0x6 -> :sswitch_5
        0x7 -> :sswitch_a
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0x17 -> :sswitch_d
        0x1b -> :sswitch_0
        0x97 -> :sswitch_c
        0x98 -> :sswitch_3
        0x99 -> :sswitch_6
        0x9a -> :sswitch_4
    .end sparse-switch
.end method

.method private SetLocationInfo(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1674
    invoke-direct {p0}, Lcom/access/bml/BMLHandleCommandProc;->GetLocationSettingPref()I

    move-result v0

    .line 1675
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    .line 1676
    if-eqz p1, :cond_1

    :goto_0
    iput v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationInfo:I

    .line 1678
    :cond_0
    return-void

    .line 1676
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private SetNotifyConnectUsersSelection(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1666
    invoke-direct {p0}, Lcom/access/bml/BMLHandleCommandProc;->GetConnectionSettingPref()I

    move-result v0

    .line 1667
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    .line 1668
    if-eqz p1, :cond_1

    :goto_0
    iput v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mNotifyConnection:I

    .line 1670
    :cond_0
    return-void

    .line 1668
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ShowAuthPopup(ILjava/lang/String;Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;)V
    .locals 2
    .param p1, "cmdID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cmd"    # Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 439
    const-string v0, "HandleCommandProc"

    const-string v1, "[ShowAuthPopup] handler is NULL\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    .line 532
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/access/bml/BMLHandleCommandProc$7;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/access/bml/BMLHandleCommandProc$7;-><init>(Lcom/access/bml/BMLHandleCommandProc;Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private ShowOkCancelPopup(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cmdID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "button_ok"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "button_cancel"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/access/bml/BMLHandleCommandProc;->ShowTwoButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private ShowProgressPopup(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "HandleCommandProc"

    const-string v1, "[ShowProgressPopup] handler is NULL\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/access/bml/BMLHandleCommandProc$3;

    invoke-direct {v1, p0, p1}, Lcom/access/bml/BMLHandleCommandProc$3;-><init>(Lcom/access/bml/BMLHandleCommandProc;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private ShowThreeButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "cmdID"    # I
    .param p2, "permissionID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "positiveBtn"    # Ljava/lang/String;
    .param p6, "negativeBtn"    # Ljava/lang/String;
    .param p7, "neutralBtn"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 349
    const-string v0, "HandleCommandProc"

    const-string v1, "[ShowThreeButtonPopup] handler is NULL\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    .line 400
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v9, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/access/bml/BMLHandleCommandProc$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/access/bml/BMLHandleCommandProc$6;-><init>(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private ShowTwoButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "cmdID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "positiveBtn"    # Ljava/lang/String;
    .param p5, "negativeBtn"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 227
    const-string v0, "HandleCommandProc"

    const-string v1, "[ShowTwoButtonPopup] handler is NULL\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    .line 268
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v7, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/access/bml/BMLHandleCommandProc$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/access/bml/BMLHandleCommandProc$4;-><init>(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private ShowTwoButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cmdID"    # I
    .param p2, "permissionID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "positiveBtn"    # Ljava/lang/String;
    .param p6, "negativeBtn"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 285
    const-string v0, "HandleCommandProc"

    const-string v1, "[ShowTwoButtonPopup] handler is NULL\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    .line 326
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v8, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/access/bml/BMLHandleCommandProc$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/access/bml/BMLHandleCommandProc$5;-><init>(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cmdID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string v0, "button_yes"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "button_no"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/access/bml/BMLHandleCommandProc;->ShowTwoButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "cmdID"    # I
    .param p2, "permissionID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 427
    const-string v0, "button_yes"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "button_no"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "button_alwaysyes"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/access/bml/BMLHandleCommandProc;->ShowThreeButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method private ShowYesNoPopupEX(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "cmdID"    # I
    .param p2, "permissionID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string v0, "button_yes"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "button_no"

    invoke-direct {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/access/bml/BMLHandleCommandProc;->ShowTwoButtonPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private StartLocationService()V
    .locals 7

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPos_Info:Ljava/lang/String;

    const-string v1, "CB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1520
    const-string v0, "network"

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPosProvider:Ljava/lang/String;

    .line 1529
    :goto_0
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/access/bml/BMLView;->mPosCount:D

    .line 1533
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationManager:Landroid/location/LocationManager;

    .line 1534
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v6

    .line 1535
    .local v6, "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPosProvider:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1537
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPosProvider:Ljava/lang/String;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/access/bml/BMLHandleCommandProc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1538
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc;->mPosProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    .line 1539
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    iget-object v0, v0, Lcom/access/bml/BMLView;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    .line 1560
    .end local v6    # "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 1521
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPos_Info:Ljava/lang/String;

    const-string v1, "GPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    const-string v0, "gps"

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPosProvider:Ljava/lang/String;

    goto :goto_0

    .line 1551
    .restart local v6    # "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    const/4 v1, -0x2

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    .line 1552
    const-string v0, "HandleCommandProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init(location info not found) : posResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    iget v2, v2, Lcom/access/bml/BMLView;->mPosResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1558
    :cond_3
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/access/bml/BMLView;->mPosResult:I

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/access/bml/BMLHandleCommandProc;)Lcom/access/bml/BMLView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/access/bml/BMLHandleCommandProc;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/access/bml/BMLHandleCommandProc;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4(Lcom/access/bml/BMLHandleCommandProc;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$5(Lcom/access/bml/BMLHandleCommandProc;IZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1328
    invoke-direct {p0, p1, p2, p3}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6(Lcom/access/bml/BMLHandleCommandProc;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc;->mAlertDial:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/access/bml/BMLHandleCommandProc;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$8(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strId"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    iget-object v3, p0, Lcom/access/bml/BMLHandleCommandProc;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "resId":I
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private noti(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    iget-boolean v0, v0, Lcom/access/bml/BMLView;->m_bSuppressNotiPopup:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 114
    const-string v0, "HandleCommandProc"

    const-string v1, "[noti] handler is NULL\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/access/bml/BMLHandleCommandProc$2;

    invoke-direct {v1, p0, p1}, Lcom/access/bml/BMLHandleCommandProc$2;-><init>(Lcom/access/bml/BMLHandleCommandProc;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setAlertDialogToNull()V
    .locals 1

    .prologue
    .line 1488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mAlertDial:Landroid/app/AlertDialog;

    .line 1489
    return-void
.end method


# virtual methods
.method public CommandHandler_HandleCommandProc(Lcom/access/bml/BMLCommandType$TBrowserCmdType;Lcom/access/bml/BMLCommandType$TBrowserReplyType;Landroid/os/Handler;)I
    .locals 15
    .param p1, "in_cmd"    # Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    .param p2, "in_reply"    # Lcom/access/bml/BMLCommandType$TBrowserReplyType;
    .param p3, "Activityhandler"    # Landroid/os/Handler;

    .prologue
    .line 752
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v11}, Lcom/access/bml/BMLView;->getHandler()Landroid/os/Handler;

    move-result-object v11

    iput-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->handler:Landroid/os/Handler;

    .line 754
    const/4 v7, 0x0

    .line 757
    .local v7, "ret":I
    const/4 v10, 0x0

    .line 759
    .local v10, "value":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    move v11, v7

    .line 1325
    :goto_1
    return v11

    .line 763
    :sswitch_1
    new-instance v6, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;

    invoke-direct {v6}, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;-><init>()V

    .line 764
    .local v6, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;
    invoke-direct {p0}, Lcom/access/bml/BMLHandleCommandProc;->GetConnectionSettingPref()I

    move-result v10

    .line 766
    const-string v11, "HandleCommandProc"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " SLIM_BRCOMMAND_QUERY_SETLOCATION value: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " UserSelection: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/access/bml/BMLHandleCommandProc;->mNotifyConnection:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 768
    iget v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mNotifyConnection:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 769
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;->fCommandID:I

    .line 770
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;->fDoRequestContent:Z

    .line 771
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 773
    :cond_1
    const-string v11, "query_noti_connect"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "message":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    const-string v12, "X_DPA_writeCproBM"

    const-string v13, "title_noti_connect"

    invoke-direct {p0, v13}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v12, v13, v4}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopupEX(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/4 v7, -0x3

    .line 777
    goto :goto_0

    .end local v4    # "message":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 778
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;->fCommandID:I

    .line 779
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;->fDoRequestContent:Z

    .line 780
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto :goto_0

    .line 782
    :cond_3
    const-string v11, "query_noti_connect"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 783
    .restart local v4    # "message":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    const-string v12, "X_DPA_writeCproBM"

    const-string v13, "title_noti_connect"

    invoke-direct {p0, v13}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v12, v13, v4}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopupEX(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v7, -0x3

    .line 786
    goto/16 :goto_0

    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_SetLocation;
    :sswitch_2
    move-object/from16 v1, p1

    .line 790
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_WindowState;

    .line 791
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_WindowState;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_WindowState;->fState:I

    packed-switch v11, :pswitch_data_0

    .line 818
    :cond_4
    :goto_2
    :pswitch_0
    new-instance v6, Lcom/access/bml/BMLCommandType$TBrowserReplyType;

    invoke-direct {v6}, Lcom/access/bml/BMLCommandType$TBrowserReplyType;-><init>()V

    .line 819
    .local v6, "reply":Lcom/access/bml/BMLCommandType$TBrowserReplyType;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReplyType;->fCommandID:I

    .line 820
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 794
    .end local v6    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReplyType;
    :pswitch_1
    if-eqz p3, :cond_4

    .line 795
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 796
    .local v4, "message":Landroid/os/Message;
    const/4 v11, 0x0

    iput v11, v4, Landroid/os/Message;->what:I

    .line 797
    const/4 v11, 0x0

    iput v11, v4, Landroid/os/Message;->arg1:I

    .line 798
    const/4 v11, 0x0

    iput v11, v4, Landroid/os/Message;->arg2:I

    .line 799
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 800
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 807
    .end local v4    # "message":Landroid/os/Message;
    :pswitch_2
    if-eqz p3, :cond_4

    .line 808
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 809
    .restart local v4    # "message":Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v4, Landroid/os/Message;->what:I

    .line 810
    const/4 v11, 0x0

    iput v11, v4, Landroid/os/Message;->arg1:I

    .line 811
    const/4 v11, 0x0

    iput v11, v4, Landroid/os/Message;->arg2:I

    .line 812
    const/4 v11, 0x0

    iput-object v11, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_WindowState;
    .end local v4    # "message":Landroid/os/Message;
    :sswitch_3
    move-object/from16 v1, p1

    .line 825
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;

    .line 826
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;->fCommandID:I

    invoke-direct {p0, v11, v1}, Lcom/access/bml/BMLHandleCommandProc;->NotifyContentError(ILcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;)V

    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_ContentError;
    :sswitch_4
    move-object/from16 v1, p1

    .line 834
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;

    .line 836
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;
    new-instance v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;

    invoke-direct {v6}, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;-><init>()V

    .line 837
    .local v6, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fFuncName:Ljava/lang/String;

    const-string v12, "X_DPA_writeCproBM"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 838
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "X_DPA_writeCproBM"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 840
    .local v5, "noCheck":Z
    if-eqz v5, :cond_5

    .line 841
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 842
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 843
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 845
    :cond_5
    iget-boolean v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mPopupPrevent:Z

    if-nez v11, :cond_6

    .line 846
    const-string v11, "query_tvlink_save"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 847
    .local v4, "message":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fCommandID:I

    const-string v12, "X_DPA_writeCproBM"

    const-string v13, "caption_tvlink"

    invoke-direct {p0, v13}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v12, v13, v4}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v7, -0x3

    .line 849
    goto/16 :goto_0

    .line 850
    .end local v4    # "message":Ljava/lang/String;
    :cond_6
    const-string v11, "HandleCommandProc"

    const-string v12, "SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION - Popup Skip."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 852
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 853
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 857
    .end local v5    # "noCheck":Z
    :cond_7
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fFuncName:Ljava/lang/String;

    const-string v12, "X_DPA_getCurPos"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 858
    invoke-direct {p0}, Lcom/access/bml/BMLHandleCommandProc;->GetLocationSettingPref()I

    move-result v10

    .line 859
    const-string v11, "HandleCommandProc"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, " SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION value: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " UserSelection: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationInfo:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 861
    iget v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationInfo:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 862
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fArgStr:[B

    array-length v11, v11

    if-lez v11, :cond_0

    .line 863
    new-instance v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fArgStr:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mPos_Info:Ljava/lang/String;

    .line 864
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    iget-object v12, p0, Lcom/access/bml/BMLHandleCommandProc;->mPos_Info:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/access/bml/BMLView;->startLocationService(Ljava/lang/String;)V

    .line 865
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 866
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 867
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 870
    :cond_8
    const-string v11, "query_location"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 871
    .restart local v4    # "message":Ljava/lang/String;
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fArgStr:[B

    array-length v11, v11

    if-lez v11, :cond_9

    .line 872
    new-instance v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fArgStr:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mPos_Info:Ljava/lang/String;

    .line 874
    :cond_9
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fCommandID:I

    const-string v12, "X_DPA_getCurPos"

    const-string v13, "title_noti_location"

    invoke-direct {p0, v13}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v12, v13, v4}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopupEX(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 v7, -0x3

    .line 877
    goto/16 :goto_0

    .end local v4    # "message":Ljava/lang/String;
    :cond_a
    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 878
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 879
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 880
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 882
    :cond_b
    const-string v11, "query_location"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 883
    .restart local v4    # "message":Ljava/lang/String;
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fArgStr:[B

    array-length v11, v11

    if-lez v11, :cond_c

    .line 884
    new-instance v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fArgStr:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mPos_Info:Ljava/lang/String;

    .line 886
    :cond_c
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fCommandID:I

    const-string v12, "X_DPA_getCurPos"

    const-string v13, "title_noti_location"

    invoke-direct {p0, v13}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v12, v13, v4}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopupEX(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v7, -0x3

    .line 889
    goto/16 :goto_0

    .end local v4    # "message":Ljava/lang/String;
    :cond_d
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fFuncName:Ljava/lang/String;

    const-string v12, "X_DPA_getRcvCond"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 890
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    const/16 v12, 0x101

    invoke-virtual {v11, v12}, Lcom/access/bml/BMLView;->startTelephonyService(I)V

    .line 892
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 893
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 894
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 895
    :cond_e
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;->fFuncName:Ljava/lang/String;

    const-string v12, "X_DPA_getIRDID"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 896
    invoke-direct {p0}, Lcom/access/bml/BMLHandleCommandProc;->GetIRDIDSettingPref()I

    move-result v10

    .line 897
    const/4 v2, 0x0

    .line 898
    .local v2, "dopermit":Z
    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 899
    const/4 v2, 0x1

    .line 901
    :cond_f
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 902
    iput-boolean v2, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 903
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 905
    .end local v2    # "dopermit":Z
    :cond_10
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fCommandID:I

    .line 906
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;->fDoPermit:Z

    .line 907
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_PermitFunction;
    .end local v6    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_PermitFunction;
    :sswitch_5
    move-object/from16 v1, p1

    .line 915
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_RedirectDialog;

    .line 917
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_RedirectDialog;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_RedirectDialog;->fStatusCode:I

    const/16 v12, 0x12d

    if-ne v11, v12, :cond_11

    .line 918
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_RedirectDialog;->fContentBy:I

    and-int/lit16 v11, v11, 0x1000

    if-nez v11, :cond_11

    .line 920
    const-string v11, "address_changed"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 922
    :cond_11
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_RedirectDialog;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_RedirectDialog;
    :sswitch_6
    move-object/from16 v1, p1

    .line 928
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;

    .line 929
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;->fCommandID:I

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12, v1}, Lcom/access/bml/BMLHandleCommandProc;->ShowAuthPopup(ILjava/lang/String;Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;)V

    .line 930
    const/4 v7, -0x3

    .line 931
    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_AuthDialog;
    :sswitch_7
    move-object/from16 v1, p1

    .line 936
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_DrawError;

    .line 938
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_DrawError;
    const/4 v9, 0x0

    .line 939
    .local v9, "strMsg":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_DrawError;->fErrorCode:I

    packed-switch v11, :pswitch_data_1

    .line 954
    :goto_3
    if-eqz v9, :cond_12

    .line 955
    invoke-direct {p0, v9}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 957
    :cond_12
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_DrawError;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 942
    :pswitch_3
    const-string v11, "drawerror_toomany_nests"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 943
    goto :goto_3

    .line 945
    :pswitch_4
    const-string v11, "drawerror_timeout"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 946
    goto :goto_3

    .line 963
    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_DrawError;
    .end local v9    # "strMsg":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v1, p1

    .line 964
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    const-string v11, "query_system_continue"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 965
    .restart local v9    # "strMsg":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    const-string v12, "data_broadcasting"

    invoke-direct {p0, v12}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12, v9}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;)V

    .line 967
    const/4 v7, -0x3

    .line 968
    goto/16 :goto_0

    .line 972
    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    .end local v9    # "strMsg":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v1, p1

    .line 973
    .restart local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    const-string v11, "query_ssl_transmit"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 974
    .restart local v9    # "strMsg":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    const-string v12, "data_broadcasting"

    invoke-direct {p0, v12}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12, v9}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;)V

    .line 976
    const/4 v7, -0x3

    .line 977
    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    .end local v9    # "strMsg":Ljava/lang/String;
    :sswitch_a
    move-object/from16 v1, p1

    .line 981
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_CookieDialog;

    .line 989
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_CookieDialog;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_CookieDialog;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_CookieDialog;
    :sswitch_b
    move-object/from16 v1, p1

    .line 995
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_Error;

    .line 997
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_Error;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_Error;->fErrorCode:I

    packed-switch v11, :pswitch_data_2

    .line 1013
    :pswitch_5
    const-string v11, "unknown_error"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1017
    .local v8, "str":Ljava/lang/String;
    :goto_4
    invoke-direct {p0, v8}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 1018
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_Error;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1001
    .end local v8    # "str":Ljava/lang/String;
    :pswitch_6
    const-string v11, "error_memory_shortage"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1002
    .restart local v8    # "str":Ljava/lang/String;
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Lcom/access/bml/BMLView;->BML_RequestHalt(I)Z

    goto :goto_4

    .line 1005
    .end local v8    # "str":Ljava/lang/String;
    :pswitch_7
    const-string v11, "error_total_sizeover"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1006
    .restart local v8    # "str":Ljava/lang/String;
    goto :goto_4

    .line 1008
    .end local v8    # "str":Ljava/lang/String;
    :pswitch_8
    const-string v11, "error_bad_mimetype"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1009
    .restart local v8    # "str":Ljava/lang/String;
    goto :goto_4

    .line 1023
    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_Error;
    .end local v8    # "str":Ljava/lang/String;
    :sswitch_c
    new-instance v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PostDialog;

    invoke-direct {v6}, Lcom/access/bml/BMLCommandType$TBrowserReply_PostDialog;-><init>()V

    .line 1024
    .local v6, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_PostDialog;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PostDialog;->fCommandID:I

    .line 1025
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_PostDialog;->fDoPost:Z

    .line 1026
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .line 1054
    .end local v6    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_PostDialog;
    :sswitch_d
    new-instance v6, Lcom/access/bml/BMLCommandType$TBrowserReply_RequestInclusion;

    invoke-direct {v6}, Lcom/access/bml/BMLCommandType$TBrowserReply_RequestInclusion;-><init>()V

    .line 1055
    .local v6, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_RequestInclusion;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_RequestInclusion;->fCommandID:I

    .line 1056
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_RequestInclusion;->fDoRequestContent:Z

    .line 1057
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    goto/16 :goto_0

    .end local v6    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_RequestInclusion;
    :sswitch_e
    move-object/from16 v1, p1

    .line 1062
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_ServerCertConfirmDialog;

    .line 1063
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_ServerCertConfirmDialog;
    const/4 v8, 0x0

    .line 1064
    .restart local v8    # "str":Ljava/lang/String;
    iget v3, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_ServerCertConfirmDialog;->fVerifyResult:I

    .line 1066
    .local v3, "in_errors":I
    const/high16 v11, 0x10000

    and-int/2addr v11, v3

    if-lez v11, :cond_13

    .line 1067
    const-string v11, "error_cert_session_failed"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1086
    :goto_5
    invoke-direct {p0, v8}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 1087
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_ServerCertConfirmDialog;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1068
    :cond_13
    const/high16 v11, 0x20000

    and-int/2addr v11, v3

    if-lez v11, :cond_14

    .line 1069
    const-string v11, "error_cert_session_failed"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1070
    goto :goto_5

    :cond_14
    const/high16 v11, 0x8000000

    and-int/2addr v11, v3

    if-lez v11, :cond_15

    .line 1071
    const-string v11, "error_cert_verify"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1072
    goto :goto_5

    :cond_15
    const/high16 v11, 0x10000000

    and-int/2addr v11, v3

    if-lez v11, :cond_16

    .line 1073
    const-string v11, "error_cert_invalid"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1074
    goto :goto_5

    :cond_16
    and-int/lit8 v11, v3, 0x1

    if-lez v11, :cond_17

    .line 1075
    const-string v11, "error_cert_no_issure"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1076
    goto :goto_5

    :cond_17
    and-int/lit8 v11, v3, 0x8

    if-lez v11, :cond_18

    .line 1077
    const-string v11, "error_cert_root_expired"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1078
    goto :goto_5

    :cond_18
    and-int/lit8 v11, v3, 0x2

    if-lez v11, :cond_19

    .line 1079
    const-string v11, "error_cert_invalid_cn"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1080
    goto :goto_5

    :cond_19
    and-int/lit8 v11, v3, 0x4

    if-lez v11, :cond_1a

    .line 1081
    const-string v11, "error_cert_expired"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1082
    goto :goto_5

    .line 1083
    :cond_1a
    const-string v11, "error_cert_session_failed"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_ServerCertConfirmDialog;
    .end local v3    # "in_errors":I
    .end local v8    # "str":Ljava/lang/String;
    :sswitch_f
    move-object/from16 v1, p1

    .line 1093
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;

    .line 1095
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;
    iget-boolean v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;->before_is_https:Z

    if-nez v11, :cond_1b

    iget-boolean v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;->after_is_https:Z

    if-eqz v11, :cond_1b

    .line 1096
    const-string v11, "msg_enter_ssl"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 1097
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1098
    :cond_1b
    iget-boolean v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;->before_is_https:Z

    if-eqz v11, :cond_1c

    iget-boolean v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;->after_is_https:Z

    if-nez v11, :cond_1c

    .line 1099
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;->fCommandID:I

    const-string v12, "data_broadcasting"

    invoke-direct {p0, v12}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "msg_leave_ssl"

    invoke-direct {p0, v13}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/4 v7, -0x3

    .line 1101
    goto/16 :goto_0

    .line 1102
    :cond_1c
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1110
    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_HistoryBackForw;
    :sswitch_10
    move-object/from16 v1, p1

    .line 1111
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    const-string v11, "query_system_recover"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1112
    .restart local v9    # "strMsg":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    const-string v12, "data_broadcasting"

    invoke-direct {p0, v12}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12, v9}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;)V

    .line 1113
    const/4 v7, -0x3

    .line 1114
    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCmdType;
    .end local v9    # "strMsg":Ljava/lang/String;
    :sswitch_11
    move-object/from16 v1, p1

    .line 1119
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_FailureAction;

    .line 1120
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_FailureAction;
    const/4 v9, 0x0

    .line 1122
    .restart local v9    # "strMsg":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_FailureAction;->fStatus:I

    packed-switch v11, :pswitch_data_3

    .line 1145
    :goto_6
    :pswitch_9
    if-eqz v9, :cond_1d

    .line 1146
    invoke-direct {p0, v9}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 1148
    :cond_1d
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_FailureAction;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .line 1124
    :pswitch_a
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v11}, Lcom/access/bml/BMLView;->BML_IsTuneByBookmark()Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 1125
    const-string v11, "msg_invalid_transition_return_tvlink"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1126
    goto :goto_6

    .line 1127
    :cond_1e
    const-string v11, "msg_invalid_transition_return"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1129
    goto :goto_6

    .line 1131
    :pswitch_b
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    invoke-virtual {v11}, Lcom/access/bml/BMLView;->BML_IsTuneByBookmark()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 1132
    const-string v11, "msg_invalid_script_return_tvlink"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1133
    goto :goto_6

    .line 1134
    :cond_1f
    const-string v11, "msg_invalid_script_return"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1136
    goto :goto_6

    .line 1138
    :pswitch_c
    const-string v11, "msg_failureaction_invalid_suffix"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1139
    goto :goto_6

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_FailureAction;
    .end local v9    # "strMsg":Ljava/lang/String;
    :sswitch_12
    move-object/from16 v1, p1

    .line 1153
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSAlertDialog;

    .line 1158
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_JSAlertDialog;
    iget-object v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSAlertDialog;->fMessage:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    .line 1159
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSAlertDialog;->fCommandID:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->Reply_Popup(IZLjava/lang/Object;)V

    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_JSAlertDialog;
    :sswitch_13
    move-object/from16 v1, p1

    .line 1165
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSConfirmDialog;

    .line 1166
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_JSConfirmDialog;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSConfirmDialog;->fCommandID:I

    const-string v12, "data_broadcasting"

    invoke-direct {p0, v12}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSConfirmDialog;->fMessage:Ljava/lang/String;

    invoke-direct {p0, v11, v12, v13}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;)V

    .line 1167
    const/4 v7, -0x3

    .line 1168
    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_JSConfirmDialog;
    :sswitch_14
    move-object/from16 v1, p1

    .line 1173
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSPromptDialog;

    .line 1174
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_JSPromptDialog;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSPromptDialog;->fMessage:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSPromptDialog;->fValue:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1175
    .restart local v4    # "message":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_JSPromptDialog;->fCommandID:I

    const-string v12, "data_broadcasting"

    invoke-direct {p0, v12}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12, v4}, Lcom/access/bml/BMLHandleCommandProc;->ShowOkCancelPopup(ILjava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/4 v7, -0x3

    .line 1177
    goto/16 :goto_0

    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_JSPromptDialog;
    .end local v4    # "message":Ljava/lang/String;
    :sswitch_15
    move-object/from16 v1, p1

    .line 1182
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_StreamState;

    .line 1183
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_StreamState;
    const/4 v9, 0x0

    .line 1184
    .restart local v9    # "strMsg":Ljava/lang/String;
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_StreamState;->fState:I

    sparse-switch v11, :sswitch_data_1

    .line 1201
    :goto_7
    :sswitch_16
    invoke-direct {p0, v9}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1188
    :sswitch_17
    const-string v11, "ssl_handshaking"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1189
    goto :goto_7

    .line 1191
    :sswitch_18
    const-string v11, "ssl_loading"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1192
    goto :goto_7

    .line 1247
    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_StreamState;
    .end local v9    # "strMsg":Ljava/lang/String;
    :sswitch_19
    const-string v4, ""

    .restart local v4    # "message":Ljava/lang/String;
    move-object/from16 v1, p1

    .line 1248
    check-cast v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_WriteBookmark;

    .line 1249
    .local v1, "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_WriteBookmark;
    new-instance v6, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;

    invoke-direct {v6}, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;-><init>()V

    .line 1250
    .local v6, "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    iput v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;->fCommandID:I

    .line 1251
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_WriteBookmark;->fAction:I

    packed-switch v11, :pswitch_data_4

    .line 1275
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;->fDoWrite:Z

    .line 1276
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    .line 1277
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1253
    :pswitch_d
    const-string v11, "query_tvlink_overwrite_expired"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1279
    :goto_8
    iget-boolean v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mPopupPrevent:Z

    if-nez v11, :cond_20

    .line 1280
    iget v11, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_WriteBookmark;->fCommandID:I

    const-string v12, "caption_tvlink"

    invoke-direct {p0, v12}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12, v4}, Lcom/access/bml/BMLHandleCommandProc;->ShowYesNoPopup(ILjava/lang/String;Ljava/lang/String;)V

    .line 1281
    const/4 v7, -0x3

    .line 1282
    goto/16 :goto_0

    .line 1256
    :pswitch_e
    const-string v11, "query_tvlink_overwrite_oldest"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1258
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_WriteBookmark;->fReplacedBookmarkTitle:[B

    const-string v14, "SJIS"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_8

    .line 1270
    :pswitch_f
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;->fDoWrite:Z

    .line 1271
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    .line 1272
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1283
    :cond_20
    const-string v11, "HandleCommandProc"

    const-string v12, "SLIM_BRCOMMAND_QUERY_DTV_WRITEBOOKMARK - Popup Skip."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;->fDoWrite:Z

    .line 1285
    iget-object v11, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/access/bml/BMLCommandType$TBrowserCmdType;->fCommandID:I

    invoke-virtual {v11, v12, v6}, Lcom/access/bml/BMLView;->Browser_ReplyToCommand(ILcom/access/bml/BMLCommandType$TBrowserReplyType;)Z

    .line 1286
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1312
    .end local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_WriteBookmark;
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;
    :sswitch_1a
    const-string v11, "error_input_format"

    invoke-direct {p0, v11}, Lcom/access/bml/BMLHandleCommandProc;->getAppResString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1314
    .restart local v4    # "message":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/access/bml/BMLHandleCommandProc;->noti(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1259
    .restart local v1    # "cmd":Lcom/access/bml/BMLCommandType$TBrowserCommand_DTV_WriteBookmark;
    .restart local v6    # "reply":Lcom/access/bml/BMLCommandType$TBrowserReply_WriteBookmark;
    :catch_0
    move-exception v11

    goto :goto_8

    .line 759
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_d
        0x2 -> :sswitch_f
        0x3 -> :sswitch_a
        0x4 -> :sswitch_5
        0x5 -> :sswitch_c
        0x6 -> :sswitch_6
        0x7 -> :sswitch_e
        0x9 -> :sswitch_12
        0xa -> :sswitch_13
        0xb -> :sswitch_14
        0x12 -> :sswitch_15
        0x15 -> :sswitch_2
        0x17 -> :sswitch_3
        0x1a -> :sswitch_b
        0x1b -> :sswitch_1a
        0x96 -> :sswitch_9
        0x97 -> :sswitch_10
        0x98 -> :sswitch_4
        0x99 -> :sswitch_19
        0x9a -> :sswitch_0
        0x9b -> :sswitch_11
        0x9c -> :sswitch_8
        0x9d -> :sswitch_7
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
    .end sparse-switch

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 939
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 997
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch

    .line 1122
    :pswitch_data_3
    .packed-switch -0xc
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 1184
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_16
        0x400 -> :sswitch_17
        0x800 -> :sswitch_18
        0x200000 -> :sswitch_16
    .end sparse-switch

    .line 1251
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public DialogDestroy()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mAlertDial:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1482
    const-string v0, "HandleCommandProc"

    const-string v1, "DialogDestroy\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mAlertDial:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mAlertDial:Landroid/app/AlertDialog;

    .line 1486
    :cond_0
    return-void
.end method

.method public ResetContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "new_context"    # Landroid/content/Context;

    .prologue
    .line 711
    const-string v0, "HandleCommandProc"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResetContext PREV: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NEW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/access/bml/BMLHandleCommandProc;->SetPreventPopup(Z)V

    .line 713
    iput-object p1, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    .line 714
    return-void
.end method

.method public SetPreventPopup(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 1681
    iput-boolean p1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPopupPrevent:Z

    .line 1682
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 725
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    .line 726
    iput-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mBmlView:Lcom/access/bml/BMLView;

    .line 727
    iput v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mNotifyConnection:I

    .line 728
    iput v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationInfo:I

    .line 729
    return-void
.end method

.method public resetBMLPref()V
    .locals 3

    .prologue
    .line 735
    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 738
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "X_DPA_writeCproBM"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    return-void
.end method

.method public stopLocationService()V
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationManager:Landroid/location/LocationManager;

    .line 1570
    iget-object v0, p0, Lcom/access/bml/BMLHandleCommandProc;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/access/bml/BMLHandleCommandProc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1576
    return-void
.end method
