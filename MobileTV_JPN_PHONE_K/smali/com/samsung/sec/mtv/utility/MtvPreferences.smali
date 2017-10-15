.class public final Lcom/samsung/sec/mtv/utility/MtvPreferences;
.super Ljava/util/Observable;
.source "MtvPreferences.java"


# static fields
.field public static final AUDIO_OUTPUT_MODE:Ljava/lang/String; = "audio_output_mode"

.field public static final PREF_KEY_AUDIO_51:Ljava/lang/String; = "pref_audio_51"

.field public static final PREF_KEY_AUDIO_EFFECT:Ljava/lang/String; = "pref_audio_effect"

.field public static final PREF_KEY_AUDIO_LANGUAGE:Ljava/lang/String; = "pref_audio_language"

.field private static final PREF_KEY_AUTO_PLAY_NEXT:Ljava/lang/String; = "pref_auto_play_next"

.field private static final PREF_KEY_AUTO_POWER_OFF_TIME:Ljava/lang/String; = "pref_auto_power_off_time"

.field public static final PREF_KEY_BRIGHTNESS_LEVEL:Ljava/lang/String; = "pref_brightness_level"

.field public static final PREF_KEY_BROADCAST_LOCATION:Ljava/lang/String; = "pref_broadcast_location"

.field public static final PREF_KEY_BROADCAST_MANUFACTURE:Ljava/lang/String; = "pref_broadcast_manufacture"

.field public static final PREF_KEY_BROADCAST_NOTIFY:Ljava/lang/String; = "pref_broadcast_notify"

.field public static final PREF_KEY_BROADCAST_SET_RECORDING:Ljava/lang/String; = "pref_broadcast_set_recording"

.field public static final PREF_KEY_CAPTION:Ljava/lang/String; = "pref_caption"

.field private static final PREF_KEY_COMING_RESERVATION_ID:Ljava/lang/String; = "pref_coming_reserveration_id"

.field public static final PREF_KEY_CURRENT_SLOT:Ljava/lang/String; = "pref_current_slot"

.field public static final PREF_KEY_DISPLAY_SIZE:Ljava/lang/String; = "pref_display_size"

.field private static final PREF_KEY_DTV_STARTED_FROM_MINIMODE:Ljava/lang/String; = "dtv_statred_from_mini_mode"

.field public static final PREF_KEY_FILE_FORMAT:Ljava/lang/String; = "pref_file_format"

.field public static final PREF_KEY_FILE_PLAYBACK_MODE:Ljava/lang/String; = "pref_file_playback_mode"

.field public static final PREF_KEY_FRAMEIP:Ljava/lang/String; = "pref_frameip"

.field public static final PREF_KEY_IMAGE_LOCATION_STORAGE:Ljava/lang/String; = "pref_image_location_storage"

.field public static final PREF_KEY_IS_ANTENA_DIALOG_REQUIRED:Ljava/lang/String; = "is_antena_dialog_required"

.field public static final PREF_KEY_IS_FILE_MINI_MODE:Ljava/lang/String; = "file_play_mini_mode"

.field private static final PREF_KEY_IS_LAUNCH_ANTENNA:Ljava/lang/String; = "pref_launch_antenna"

.field private static final PREF_KEY_IS_LAUNCH_ANTENNA_INT:Ljava/lang/String; = "pref_launch_antenna_int"

.field public static final PREF_KEY_IS_LIVE_MINI_MODE:Ljava/lang/String; = "live_play_mini_mode"

.field public static final PREF_KEY_IS_LIVE_MODE:Ljava/lang/String; = "live_play_mode"

.field private static final PREF_KEY_LAST_LIVE_PLAYBACK_DESTROY:Ljava/lang/String; = "pref_last_live_playback_destroy"

.field public static final PREF_KEY_LATEST_FILE_INDEX:Ljava/lang/String; = "pref_latest_file_index"

.field public static final PREF_KEY_LATEST_MULTICHANNELNO:Ljava/lang/String; = "pref_latest_multichannelNo"

.field public static final PREF_KEY_LATEST_PCHANNEL:Ljava/lang/String; = "pref_latest_pchannel"

.field public static final PREF_KEY_LATEST_PCHSERVICEID:Ljava/lang/String; = "pref_latest_pchannelServiceId"

.field public static final PREF_KEY_LATEST_PCHSERVICENAME:Ljava/lang/String; = "pref_latest_pchannelServiceName"

.field public static final PREF_KEY_LATEST_VCHANNEL:Ljava/lang/String; = "pref_latest_vchannel"

.field private static final PREF_KEY_NEXT_CHANNEL:Ljava/lang/String; = "nextChannel"

.field private static final PREF_KEY_NEXT_FILE:Ljava/lang/String; = "nextFile"

.field public static final PREF_KEY_OUTDOOR_VISIBILITY:Ljava/lang/String; = "pref_outdoor_visibility"

.field private static final PREF_KEY_PRE_CHANNEL:Ljava/lang/String; = "preChannel"

.field private static final PREF_KEY_PRE_FILE:Ljava/lang/String; = "preFile"

.field private static final PREF_KEY_RESERVE_ALERT_FROM:Ljava/lang/String; = "pref_reserve_alert_from"

.field private static final PREF_KEY_RESERVE_ALERT_ID:Ljava/lang/String; = "pref_reserve_alert_id"

.field private static final PREF_KEY_RESERVE_REMINDER_ALERT_DTV_STARTED:Ljava/lang/String; = "pref_reserve_dtv_started"

.field public static final PREF_KEY_SAVE_TO_STORAGE:Ljava/lang/String; = "pref_save_to_storage"

.field public static final PREF_KEY_SCREEN_COLORTONE:Ljava/lang/String; = "pref_screen_colortone"

.field private static final PREF_KEY_SELECT_FILE_INDEX:Ljava/lang/String; = "pref_select_file_index"

.field public static final PREF_KEY_SOUND:Ljava/lang/String; = "pref_sound"

.field public static final PREF_KEY_SUPERIMPOSE:Ljava/lang/String; = "pref_super_impose"

.field private static final PREF_KEY_S_VIEW_COVER_CLOSED:Ljava/lang/String; = "s_view_cover_closed"

.field private static final PREF_KEY_S_VIEW_RUNNING:Ljava/lang/String; = "s_view_running"

.field private static final PREF_KEY_WHILE_RESERVE_PROGRAM:Ljava/lang/String; = "pref_while_scheduled_program"

.field public static final SHARED_PREFERENCES:Ljava/lang/String; = "com.samsung.sec.mtv.utility"

.field public static final TAG:Ljava/lang/String; = "MtvPreferences"


# instance fields
.field private mBrightnessTable:[F

.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 115
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mBrightnessTable:[F

    .line 119
    iput-object p1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    .line 120
    const-string v0, "com.samsung.sec.mtv.utility"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 121
    return-void

    .line 115
    nop

    :array_0
    .array-data 4
        0x3df5c28f    # 0.12f
        0x3e23d70a    # 0.16f
        0x3eb33333    # 0.35f
        0x3ef0a3d7    # 0.47f
        0x3f400000    # 0.75f
        0x3f7ae148    # 0.98f
    .end array-data
.end method


# virtual methods
.method public getAntennaOnOff()I
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_launch_antenna_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAudioEffect()I
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_audio_effect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAudioLanguage()I
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_audio_language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAutoPlayNext()Z
    .locals 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_play_next"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAutoPowerOffTime()I
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_auto_power_off_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBrightnessLevel()I
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_brightness_level"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBrightnessValue()F
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mBrightnessTable:[F

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getBrightnessLevel()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getBroadcastDataLocationMode()I
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_broadcast_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBroadcastDataManufactureMode()I
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_broadcast_manufacture"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBroadcastDataNotifyMode()I
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_broadcast_notify"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBroadcastImageLocationStorage()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 554
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setBroadcastImageLocationStorage(I)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_image_location_storage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBroadcastSetRecordingMode()I
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_broadcast_set_recording"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getColorTone()I
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_screen_colortone"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getComingReservationID()I
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_coming_reserveration_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentSlot()I
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_current_slot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDisplaySize()I
    .locals 3

    .prologue
    .line 393
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_display_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFrameIPEnabled()Z
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_frameip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsAntenaDialogRequired()Z
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_antena_dialog_required"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsDtvStartedByFromMiniMode()Z
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "dtv_statred_from_mini_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsDtvStartedByReminderAlert()Z
    .locals 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_reserve_dtv_started"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsFileFormatImage()Z
    .locals 4

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "editor":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_file_format"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 801
    return v0
.end method

.method public getIsFilePlayMiniMode()Z
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "file_play_mini_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsLivePlayMiniMode()Z
    .locals 4

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "live_play_mini_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 773
    return v0
.end method

.method public getIsLivePlayMode()Z
    .locals 4

    .prologue
    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "live_play_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 786
    return v0
.end method

.method public getLastLivePlayBackDestroyTime()J
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_last_live_playback_destroy"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLatestChannelNameForDisplay(Z)Ljava/lang/String;
    .locals 5
    .param p1, "appendCH"    # Z

    .prologue
    const/4 v4, -0x1

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "chName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 363
    .local v0, "ch":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v2

    .line 364
    .local v2, "chNum":I
    if-lez v2, :cond_1

    const/16 v3, 0x19

    if-ge v2, v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 371
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 377
    iget-object v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    .line 387
    :goto_1
    return-object v1

    .line 367
    :cond_1
    if-le v2, v4, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v2

    .line 369
    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v2

    .line 382
    if-eqz p1, :cond_3

    if-le v2, v4, :cond_3

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 385
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method public getLatestChannelNumberForDisplay()I
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v0

    .line 348
    .local v0, "chNum":I
    if-lez v0, :cond_0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v0

    .line 351
    :cond_1
    return v0
.end method

.method public getLatestFileIndex()I
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_latest_file_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLatestPChannel()I
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_latest_pchannel"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLatestPChannelFromVChannel()I
    .locals 4

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "ChannelNumber":I
    const/4 v1, 0x0

    .line 316
    .local v1, "mtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v0

    .line 317
    if-lez v0, :cond_3

    const/16 v2, 0x19

    if-ge v0, v2, :cond_3

    .line 318
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByVChannel(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    iget v0, v1, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    .line 325
    :cond_0
    :goto_0
    const/16 v2, 0xd

    if-lt v0, v2, :cond_1

    const/16 v2, 0x34

    if-le v0, v2, :cond_2

    .line 327
    :cond_1
    const-string v2, "MtvPreferences"

    const-string v3, "Channel Nunber not in range ! Returning Default Channel"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/16 v0, 0xd

    .line 330
    :cond_2
    return v0

    .line 323
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v0

    goto :goto_0
.end method

.method public getLatestPchservicename()Ljava/lang/String;
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_latest_pchannelServiceName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestServiceID()I
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_latest_pchannelServiceId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLatestVChannel()I
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_latest_vchannel"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLatestVChannelMultiChannel()I
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_latest_multichannelNo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLaunchAntennaAlert()Z
    .locals 4

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "editor":Z
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_launch_antenna"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 807
    return v0
.end method

.method public getLivePlayerMode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextChannelInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    const-string v0, "MtvPreferences"

    const-string v1, "setNextChannelInfo is called....getNextChannelInfo :"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "nextChannel"

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextFileInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "nextFile"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreChannelInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preChannel"

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreFileInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "preFile"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReservationAlertID()I
    .locals 4

    .prologue
    .line 639
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_reserve_alert_id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 640
    .local v0, "reserveId":I
    const-string v1, "MtvPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReservationAlertID() - reserve Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return v0
.end method

.method public getReserveAlertFrom()I
    .locals 3

    .prologue
    .line 664
    const-string v0, "MtvPreferences"

    const-string v1, "getReserveAlertFrom()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_reserve_alert_from"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSaveToStorage()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 500
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilMemoryStatus;->isExternalMemoryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSaveToStorage(I)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_save_to_storage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSelectedFileIndex()I
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_select_file_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudio51Enabled()Z
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_audio_51"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCaptionEnabled()Z
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_caption"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOutdoorVisibility()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 417
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_outdoor_visibility"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isReservationProgram()Z
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_while_scheduled_program"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSViewCoverClosed()Z
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_view_cover_closed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSViewRunning()Z
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "s_view_running"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isframeIPEnabled()Z
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "pref_frameip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAntennaOnOff(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 523
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 524
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_launch_antenna_int"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 525
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 527
    return-void
.end method

.method public setAudio51Enabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 465
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_audio_51"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    return-void
.end method

.method public setAudioEffect(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 478
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 479
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_audio_effect"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 480
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 482
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setChanged()V

    .line 483
    const-string v1, "pref_audio_effect"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->notifyObservers(Ljava/lang/Object;)V

    .line 484
    return-void
.end method

.method public setAudioLanguage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 491
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 492
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_audio_language"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    return-void
.end method

.method public setAutoPlayNext(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 826
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 827
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_auto_play_next"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 828
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 829
    return-void
.end method

.method public setAutoPowerOffTime(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 531
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 532
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_auto_power_off_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 534
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 138
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public setBrightnessLevel(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 411
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 412
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_brightness_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    return-void
.end method

.method public setBroadcastDataLocationMode(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 585
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 586
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_broadcast_location"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 588
    return-void
.end method

.method public setBroadcastDataManufactureMode(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 595
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 596
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_broadcast_manufacture"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 597
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 598
    return-void
.end method

.method public setBroadcastDataNotifyMode(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 575
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 576
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_broadcast_notify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 578
    return-void
.end method

.method public setBroadcastImageLocationStorage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 562
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_image_location_storage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 566
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setChanged()V

    .line 567
    const-string v1, "pref_image_location_storage"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->notifyObservers(Ljava/lang/Object;)V

    .line 568
    return-void
.end method

.method public setBroadcastSetRecordingMode(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 548
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 549
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_broadcast_set_recording"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 551
    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 455
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_caption"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    return-void
.end method

.method public setColorTone(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_screen_colortone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 433
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    return-void
.end method

.method public setComingReservationID(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 692
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 693
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_coming_reserveration_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 694
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 695
    return-void
.end method

.method public setCurrentSlot(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 608
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 609
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_current_slot"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 610
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    return-void
.end method

.method public setDisplaySize(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 397
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 398
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_display_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    return-void
.end method

.method public setFrameIPEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 441
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_frameip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method

.method public setIsAntenaDialogRequired(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 216
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_antena_dialog_required"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method public setIsDtvStartedByFromMiniMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 707
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dtv_statred_from_mini_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 710
    return-void
.end method

.method public setIsDtvStartedByReminderAlert(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 680
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 681
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_reserve_dtv_started"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 683
    return-void
.end method

.method public setIsFileFormatImage(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 792
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 793
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_file_format"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 794
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 795
    return-void
.end method

.method public setIsFilePlayMiniMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 751
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 752
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "file_play_mini_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 753
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    return-void
.end method

.method public setIsLivePlayMiniMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 764
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 765
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "live_play_mini_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 766
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 767
    return-void
.end method

.method public setIsLivePlayMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 777
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 778
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "live_play_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 779
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 780
    return-void
.end method

.method public setIsReservationProgram(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 654
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 655
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_while_scheduled_program"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 656
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 657
    return-void
.end method

.method public setLastLivePlayBackDestroyTime(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 226
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_last_live_playback_destroy"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 229
    return-void
.end method

.method public setLatestFileIndex(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 619
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 620
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_latest_file_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 622
    return-void
.end method

.method public setLatestPChannel(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_latest_pchannel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    return-void
.end method

.method public setLatestPchservicename(Ljava/lang/String;)V
    .locals 2
    .param p1, "servName"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_latest_pchannelServiceName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void
.end method

.method public setLatestServiceID(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 180
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_latest_pchannelServiceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-void
.end method

.method public setLatestVChannel(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_latest_vchannel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method

.method public setLatestVChannelMultiChannel(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_latest_multichannelNo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method

.method public setLaunchAntennaAlert(Z)V
    .locals 2
    .param p1, "val"    # Z

    .prologue
    .line 811
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 812
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_launch_antenna"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 813
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 814
    return-void
.end method

.method public setNextChannelInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "nextChannel"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v1, "MtvPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNextChannelInfo is called....nextChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "nextChannel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    return-void
.end method

.method public setNextFileInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "nextFile"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 240
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "nextFile"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    return-void
.end method

.method public setOutdoorVisibility(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 421
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 422
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_outdoor_visibility"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    return-void

    .line 422
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPreChannelInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "preChannel"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "preChannel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    return-void
.end method

.method public setPreFileInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "preFile"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "preFile"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method

.method public setReservAlertFrom(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 668
    const-string v1, "MtvPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReservAlertFrom() :VALUE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 670
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_reserve_alert_from"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 671
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    return-void
.end method

.method public setReservationAlertID(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 644
    const-string v1, "MtvPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setReservationAlertID() - reserve Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 646
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_reserve_alert_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 647
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 648
    return-void
.end method

.method public setSViewCoverClosed(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 718
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 719
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "s_view_cover_closed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 721
    return-void
.end method

.method public setSViewRunning(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 728
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 729
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "s_view_running"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 730
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 731
    return-void
.end method

.method public setSaveToStorage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 509
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 510
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_save_to_storage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    return-void
.end method

.method public setSelectedFileIndex(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 629
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 630
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_select_file_index"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 632
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method
