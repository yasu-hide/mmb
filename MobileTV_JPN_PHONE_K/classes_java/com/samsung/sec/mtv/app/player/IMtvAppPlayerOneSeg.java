// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.player;

import android.broadcast.helper.MtvURI;
import android.broadcast.helper.types.MtvOneSegTVLink;
import android.content.Context;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContext;

public interface IMtvAppPlayerOneSeg
{

    public abstract boolean cancelRecord(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean cancelScanChannels(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean captFrame(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean create(MtvAppPlaybackContext mtvappplaybackcontext, Context context, int i);

    public abstract void delete(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean deleteAllAffililiationAreas(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean deleteAllTvLink(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean deleteBroadCasterArea(MtvAppPlaybackContext mtvappplaybackcontext, int i, int j);

    public abstract boolean deleteTVFile(MtvAppPlaybackContext mtvappplaybackcontext, int i);

    public abstract boolean deleteTvLink(MtvAppPlaybackContext mtvappplaybackcontext, int i);

    public abstract long getPlaybackTime(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean open(MtvAppPlaybackContext mtvappplaybackcontext, MtvURI mtvuri);

    public abstract boolean open(MtvAppPlaybackContext mtvappplaybackcontext, MtvURI mtvuri, Context context);

    public abstract boolean pause(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean reposition(MtvAppPlaybackContext mtvappplaybackcontext, int i);

    public abstract boolean resume(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean scanChannels(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract void screwupCleanup();

    public abstract boolean startRecord(MtvAppPlaybackContext mtvappplaybackcontext, String s, int i, boolean flag);

    public abstract boolean startTVLink(MtvAppPlaybackContext mtvappplaybackcontext, MtvOneSegTVLink mtvonesegtvlink, Context context);

    public abstract boolean stopRecord(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean stopTVLink(MtvAppPlaybackContext mtvappplaybackcontext);

    public abstract boolean trickmode(MtvAppPlaybackContext mtvappplaybackcontext, int i, int j, int k);

    public static final int CMD_BASE = 20480;
    public static final int CMD_CANCEL_SCAN = 20486;
    public static final int CMD_CAPTURE = 20488;
    public static final int CMD_CLOSE = 20494;
    public static final int CMD_CREATE = 20481;
    public static final int CMD_DELETE = 20495;
    public static final int CMD_MAX = 20497;
    public static final int CMD_NONE = 20480;
    public static final int CMD_OPEN = 20482;
    public static final int CMD_OPEN_WAIT = 20496;
    public static final int CMD_PAUSE = 20489;
    public static final int CMD_PLAY = 20484;
    public static final int CMD_RECORD = 20487;
    public static final int CMD_REPOSITION = 20492;
    public static final int CMD_RESUME = 20490;
    public static final int CMD_SCAN = 20485;
    public static final int CMD_STATUS_UPDT = 20483;
    public static final int CMD_TRICKMODE = 20491;
    public static final int CMD_TVLINK = 20493;
    public static final int STAT_BASE = 24576;
    public static final int STAT_BG_REC_CHNL_NAME = 24601;
    public static final int STAT_BG_REC_PROG_NAME = 24600;
    public static final int STAT_BUFFERING_BEGIN = 24582;
    public static final int STAT_BUFFERING_END = 24584;
    public static final int STAT_BUFFERING_PROGRESS = 24583;
    public static final int STAT_CAPTION_AVAIL = 24589;
    public static final int STAT_CAPT_FRAME = 24596;
    public static final int STAT_CHNL_DETECTED = 24597;
    public static final int STAT_CHNL_NOTDETECTED = 24598;
    public static final int STAT_COMPLETED = 24581;
    public static final int STAT_DEL_FILE = 24599;
    public static final int STAT_END_OF_FILE = 24592;
    public static final int STAT_FAILURE = 24580;
    public static final int STAT_INSUFF_MEM = 24595;
    public static final int STAT_LOW_SIGNAL = 24588;
    public static final int STAT_MEDIA_ERROR = 24585;
    public static final int STAT_OUT_OF_MEM = 24594;
    public static final int STAT_PMT_CHANGE = 24602;
    public static final int STAT_PROGINFO_UPDT = 24586;
    public static final int STAT_PROGRESS = 24578;
    public static final int STAT_STARTED = 24577;
    public static final int STAT_STREAMTIME_UPDT = 24603;
    public static final int STAT_SUCCESS = 24579;
    public static final int STAT_TIME_UPDT = 24590;
    public static final int STAT_UNKNOWN = 24593;
    public static final int STAT_VIDEO_RATIO_UPDT = 24591;
}
