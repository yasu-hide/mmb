.class public Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;
.super Ljava/lang/Object;
.source "MtvUtilConfigSetting.java"


# static fields
.field public static final DEFAULT_BML_HEIGHT:I = 0x140

.field public static final DEFAULT_BML_WIDTH:I = 0x384

.field public static final DEFAULT_SCREEN_HEIGHT:I = 0xb4

.field public static final DEFAULT_SCREEN_WIDTH:I = 0x140

.field public static final DEVICE_VOLUME_MAX_VAL:I = 0xf

.field public static final DTV_CHANNEL_MAX_VALUE:I = 0x34

.field public static final DTV_CHANNEL_MIN_VALUE:I = 0xd

.field public static final DTV_LOW_BATTERY_LEVEL:I = 0xf

.field public static final DTV_MULTICHANNELNUMBER_MAX_VALUE:I = 0xf9

.field public static final DTV_MULTICHANNELNUMBER_MIN_VALUE:I = 0xb

.field public static final DTV_VCHANNEL_MAX_VALUE:I = 0x18

.field public static final DTV_VCHANNEL_MIN_VALUE:I = 0x1

.field public static ENABLE_SCREEN_CAPTURE:Z = false

.field public static EPGAPP_ENABLED:Z = false

.field public static final LCD_BMLBAR_HEIGHT:F = 72.0f

.field public static final LCD_CAPTION_HEIGHT:F = 99.0f

.field public static final LCD_CONTROLBAR_HEIGHT:F = 53.0f

.field public static final LCD_FULLSEG_BML_CONTROLBAR_WIDTH:F = 144.0f

.field public static final LCD_HORIZONTAL_HEIGHT:F = 360.0f

.field public static final LCD_HORIZONTAL_WIDTH:F = 640.0f

.field public static final LCD_INDICATOR_HEIGHT:F = 25.0f

.field public static final LCD_STATUSBAR_HEIGHT:F = 60.0f

.field public static final LCD_VERTICAL_HEIGHT:F = 203.0f

.field public static final LCD_VERTICAL_NORMAL_WIDTH:F = 240.0f

.field public static final LCD_VERTICAL_WIDTH:F = 360.0f

.field public static final NAME_TS_CAPTURE:Ljava/lang/String; = "CONFIG_TSCAPTURE"

.field public static final NAME_TS_FILE_SIMUL:Ljava/lang/String; = "CONFIG_TSFILESIMUL"

.field public static final PROG_INFO_BOTTOM_MARGIN_LAND:I = 0x1d

.field public static final PROG_INFO_BOTTOM_MARGIN_PORT:I = 0x46

.field public static final PROG_INFO_BOTTOM_MARGIN_PORT_LIVE:I = 0xc8

.field public static final PROG_INFO_HEIGHT:I = 0x148

.field public static final PROG_INFO_WIDTH:I = 0x142

.field public static final SCMS_T_SUPPORTED:Z = true

.field public static final SCREEN_MODE_NORMAL:I = 0x0

.field public static final SVIEW_VERTICAL_HEIGHT:F = 228.0f

.field public static final SVIEW_VERTICAL_WIDTH:F = 318.0f


# instance fields
.field public iTsCapture:Z

.field public iTsFileSimul:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->EPGAPP_ENABLED:Z

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsCapture:Z

    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)F
    .locals 4
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 94
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, p0

    return v2
.end method
