.class public interface abstract Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
.super Ljava/lang/Object;
.source "IMtvAppPlayerOneSeg.java"


# static fields
.field public static final CMD_BASE:I = 0x5000

.field public static final CMD_CANCEL_SCAN:I = 0x5006

.field public static final CMD_CAPTURE:I = 0x5008

.field public static final CMD_CLOSE:I = 0x500e

.field public static final CMD_CREATE:I = 0x5001

.field public static final CMD_DELETE:I = 0x500f

.field public static final CMD_MAX:I = 0x5011

.field public static final CMD_NONE:I = 0x5000

.field public static final CMD_OPEN:I = 0x5002

.field public static final CMD_OPEN_WAIT:I = 0x5010

.field public static final CMD_PAUSE:I = 0x5009

.field public static final CMD_PLAY:I = 0x5004

.field public static final CMD_RECORD:I = 0x5007

.field public static final CMD_REPOSITION:I = 0x500c

.field public static final CMD_RESUME:I = 0x500a

.field public static final CMD_SCAN:I = 0x5005

.field public static final CMD_STATUS_UPDT:I = 0x5003

.field public static final CMD_TRICKMODE:I = 0x500b

.field public static final CMD_TVLINK:I = 0x500d

.field public static final STAT_BASE:I = 0x6000

.field public static final STAT_BG_REC_CHNL_NAME:I = 0x6019

.field public static final STAT_BG_REC_PROG_NAME:I = 0x6018

.field public static final STAT_BUFFERING_BEGIN:I = 0x6006

.field public static final STAT_BUFFERING_END:I = 0x6008

.field public static final STAT_BUFFERING_PROGRESS:I = 0x6007

.field public static final STAT_CAPTION_AVAIL:I = 0x600d

.field public static final STAT_CAPT_FRAME:I = 0x6014

.field public static final STAT_CHNL_DETECTED:I = 0x6015

.field public static final STAT_CHNL_NOTDETECTED:I = 0x6016

.field public static final STAT_COMPLETED:I = 0x6005

.field public static final STAT_DEL_FILE:I = 0x6017

.field public static final STAT_END_OF_FILE:I = 0x6010

.field public static final STAT_FAILURE:I = 0x6004

.field public static final STAT_INSUFF_MEM:I = 0x6013

.field public static final STAT_LOW_SIGNAL:I = 0x600c

.field public static final STAT_MEDIA_ERROR:I = 0x6009

.field public static final STAT_OUT_OF_MEM:I = 0x6012

.field public static final STAT_PMT_CHANGE:I = 0x601a

.field public static final STAT_PROGINFO_UPDT:I = 0x600a

.field public static final STAT_PROGRESS:I = 0x6002

.field public static final STAT_STARTED:I = 0x6001

.field public static final STAT_STREAMTIME_UPDT:I = 0x601b

.field public static final STAT_SUCCESS:I = 0x6003

.field public static final STAT_TIME_UPDT:I = 0x600e

.field public static final STAT_UNKNOWN:I = 0x6011

.field public static final STAT_VIDEO_RATIO_UPDT:I = 0x600f


# virtual methods
.method public abstract cancelRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract cancelScanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract captFrame(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z
.end method

.method public abstract delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V
.end method

.method public abstract deleteAllAffililiationAreas(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract deleteAllTvLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract deleteBroadCasterArea(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;II)Z
.end method

.method public abstract deleteTVFile(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z
.end method

.method public abstract deleteTvLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z
.end method

.method public abstract getPlaybackTime(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)J
.end method

.method public abstract open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z
.end method

.method public abstract open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;Landroid/content/Context;)Z
.end method

.method public abstract pause(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract reposition(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z
.end method

.method public abstract resume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract scanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract screwupCleanup()V
.end method

.method public abstract startRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Ljava/lang/String;IZ)Z
.end method

.method public abstract startTVLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/types/MtvOneSegTVLink;Landroid/content/Context;)Z
.end method

.method public abstract stopRecord(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract stopTVLink(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z
.end method

.method public abstract trickmode(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;III)Z
.end method
