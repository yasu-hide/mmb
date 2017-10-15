// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.bml;

import android.broadcast.IMtvOneSegBmlEngineListener;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegTVLink;
import android.broadcast.oneseg.MtvOneSegService;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

// Referenced classes of package android.broadcast.bml:
//            IMtvNativeBmlEngineListener, MtvNativeBmlEngineImpl

public class MtvOneSegBmlEngineControl
    implements IMtvNativeBmlEngineListener
{

    private MtvOneSegBmlEngineControl()
    {
        isBMLEngineCreated = false;
    }

    public static int convertDpToPixel(float f, Context context)
    {
        return (int)(((float)context.getResources().getDisplayMetrics().densityDpi / 160F) * f);
    }

    public static MtvOneSegBmlEngineControl getInstance(Context context)
    {
        if(context == null)
            return null;
        if(mBmlEngInf == null)
            mBmlEngInf = new MtvOneSegBmlEngineControl();
        mContext = context;
        return mBmlEngInf;
    }

    public boolean DeleteAllAffililiationAreas()
    {
        return mBmlEngine.BML_DTVNVRAMDB_DeleteAllAffiliationAreas();
    }

    public boolean DeleteAllTvLink()
    {
        return mBmlEngine.BML_DTVNVRAMDB_DeleteAllCproBMInfo();
    }

    public boolean DeleteBroadCasterArea(int i, int j)
    {
        return mBmlEngine.BML_DTVNVRAMDB_DeleteBroadcasterArea(i, j);
    }

    public boolean DeleteTvLink(int i)
    {
        return mBmlEngine.BML_DTVNVRAMDB_DeleteCproBMInfo(i);
    }

    public void close(int i)
    {
        if(mBmlEngine != null && mBmlEngine.BML_GetHaltStatus() == -1)
        {
            MtvUtilDebug.Low("MtvOneSegBmlEngineControl", "close: BML engine request halt");
            mBmlEngine.BML_RequestHalt(i);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegBmlEngineControl", "close: BML engine already halted..");
            MtvOneSegService.sendSVCThreadMessage(0, 0, 0, null);
            return;
        }
    }

    public boolean closeTVLink(int i)
    {
        MtvUtilDebug.Low("MtvOneSegBmlEngineControl", "closeTVLink: entered ");
        if(mBmlEngine != null && mBmlEngine.BML_GetHaltStatus() == -1)
        {
            MtvUtilDebug.Mid("MtvOneSegBmlEngineControl", "closeTVLink: closing TV LINK");
            mBmlEngine.BML_RequestHalt(1);
            return true;
        } else
        {
            MtvUtilDebug.Error("MtvOneSegBmlEngineControl", "closeTVLink: BML engine already halted ");
            MtvOneSegService.sendSVCThreadMessage(32769, 0, 0, null);
            return true;
        }
    }

    public boolean create()
    {
        mBmlEngine = MtvNativeBmlEngineImpl.getInstance(mContext);
        if(mBmlEngine == null)
            return false;
        mBmlEngine.attachEngineListener(this);
        boolean flag = init();
        MtvNativeBmlEngineImpl mtvnativebmlengineimpl = mBmlEngine;
        MtvNativeBmlEngineImpl.BMLEngineInitStatus = flag;
        if(mBmlEngine.BML_GetHaltStatus() == -1)
            mBmlEngine.BML_RequestHalt(1);
        else
            MtvUtilDebug.High("MtvOneSegBmlEngineControl", (new StringBuilder()).append("create: BML already Halted : ").append(flag).toString());
        isBMLEngineCreated = flag;
        MtvUtilDebug.Low("MtvOneSegBmlEngineControl", (new StringBuilder()).append("create: BML_Initialize : ").append(flag).toString());
        return flag;
    }

    public void destroy()
    {
        MtvUtilDebug.Low("MtvOneSegBmlEngineControl", "close: BML_RestoreEngine");
        isBMLEngineCreated = false;
        mBmlEngInf = null;
        mContext = null;
        mOneSegBmlEngineListener = null;
        if(mBmlEngine != null)
        {
            mBmlEngine.dettachEngineListener(this);
            mBmlEngine.BML_RestoreEngine();
            mBmlEngine.BML_Finalize();
            MtvNativeBmlEngineImpl mtvnativebmlengineimpl = mBmlEngine;
            MtvNativeBmlEngineImpl.BMLEngineInitStatus = false;
            mBmlEngine.Browser_StandardFinalize();
            mBmlEngine = null;
        }
    }

    public android.broadcast.oneseg.MtvOneSegBmlParams.state getHaltStatus()
    {
        if(mBmlEngine != null)
            switch(mBmlEngine.BML_GetHaltStatus())
            {
            default:
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_NONE;

            case 3: // '\003'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_TUNEDBYKERNEL;

            case 4: // '\004'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_QUIT;

            case 6: // '\006'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_EMPTY_CAROUSEL;

            case 7: // '\007'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_ERROR;

            case 8: // '\b'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_APPBYKERNEL;

            case 9: // '\t'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_CRITICAL_ABORT;

            case 10: // '\n'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_DORMANT;

            case 100: // 'd'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_USER;

            case 0: // '\0'
                return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_NONE;
            }
        else
            return android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_NONE;
    }

    public boolean init()
    {
        boolean flag = false;
        if(mBmlEngine != null)
        {
            mBmlEngine.Browser_StandardInitialize();
            mBmlEngine.BML_Initialize(0);
            mBmlEngine.BML_CustomizeEngine(0);
            flag = mBmlEngine.Browser_MainRun();
            mBmlEngine.setBmlWidth(mBmlEngine.Browser_WindowNew());
            mBmlEngine.BML_SetBrowserWindow(mBmlEngine.getBmlWidth());
        }
        return flag;
    }

    public boolean isBMLEngineCreated()
    {
        return isBMLEngineCreated;
    }

    public void onBmlEngineStateChange(int i, int j, int k, Object obj)
    {
        android.broadcast.oneseg.MtvOneSegBmlParams.state state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_NONE;
        i;
        JVM INSTR tableswitch 1 9: default 56
    //                   1 71
    //                   2 56
    //                   3 56
    //                   4 141
    //                   5 149
    //                   6 56
    //                   7 157
    //                   8 82
    //                   9 165;
           goto _L1 _L2 _L1 _L1 _L3 _L4 _L1 _L5 _L6 _L7
_L1:
        state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_NONE;
_L9:
        MtvOneSegService.sendSVCThreadMessage(i, j, k, obj);
        return;
_L2:
        state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_PEER;
        i = 32769;
        continue; /* Loop/switch isn't completed */
_L6:
        state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_HALT_APPBYKERNEL;
        mBmlEngine.BML_DTV_EVENT_SERVICECHANGED_BY_BOOKMARK(mOnesegTvLink.origNWID, mOnesegTvLink.transStreamID, mOnesegTvLink.servID, mOnesegTvLink.compTag, mOnesegTvLink.destURI, mOnesegTvLink.affilID);
        MtvUtilDebug.Low("MtvOneSegBmlEngineControl", "onBmlEngineStateChange: MTV_STAT_BML_HALT_APPBYKERNEL");
        continue; /* Loop/switch isn't completed */
_L3:
        state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_BML_QUIT;
        continue; /* Loop/switch isn't completed */
_L4:
        state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_APPLICATION;
        continue; /* Loop/switch isn't completed */
_L5:
        state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_ERROR;
        continue; /* Loop/switch isn't completed */
_L7:
        state = android.broadcast.oneseg.MtvOneSegBmlParams.state.MTV_STAT_HALT_CRITICAL_ABORT;
        if(true) goto _L9; else goto _L8
_L8:
    }

    public boolean open()
    {
        MtvUtilDebug.Mid("MtvOneSegBmlEngineControl", "open: entered ");
        boolean flag = false;
        mBmlEngine = MtvNativeBmlEngineImpl.getInstance(mContext);
        if(mBmlEngine != null)
        {
            flag = true;
            mBmlEngine.Browser_SetRect(mBmlEngine.getBmlViewScreenWidth(), mBmlEngine.getBmlViewScreenHeight(), 0.0F, 0.0F);
            mBmlEngine.BML_SetResolution(convertDpToPixel(240F, mContext), convertDpToPixel(640F, mContext));
        }
        return flag;
    }

    public boolean openTvLink(MtvOneSegTVLink mtvonesegtvlink)
    {
        MtvUtilDebug.Low("MtvOneSegBmlEngineControl", "openTvLink: entered");
        mBmlEngine = MtvNativeBmlEngineImpl.getInstance(mContext);
        if(mBmlEngine != null && mtvonesegtvlink != null)
        {
            mOnesegTvLink = mtvonesegtvlink;
            if(mBmlEngine.BML_GetHaltStatus() == -1)
            {
                MtvUtilDebug.Mid("MtvOneSegBmlEngineControl", "openTvLink: change BML service to TVLINKS");
                mBmlEngine.BML_RequestHalt(8);
                return true;
            } else
            {
                MtvUtilDebug.Mid("MtvOneSegBmlEngineControl", "openTvLink: BML already halted open TVLINKS");
                return mBmlEngine.BML_DTV_EVENT_SERVICECHANGED_BY_BOOKMARK(mOnesegTvLink.origNWID, mOnesegTvLink.transStreamID, mOnesegTvLink.servID, mOnesegTvLink.compTag, mOnesegTvLink.destURI, mOnesegTvLink.affilID);
            }
        } else
        {
            MtvOneSegService.sendSVCThreadMessage(8, 0, 0, null);
            MtvUtilDebug.Error("MtvOneSegBmlEngineControl", "openTvLink: Cannt open TVLINK");
            return false;
        }
    }

    public void registerListener(IMtvOneSegBmlEngineListener imtvonesegbmlenginelistener)
    {
        if(imtvonesegbmlenginelistener == null)
        {
            return;
        } else
        {
            mOneSegBmlEngineListener = imtvonesegbmlenginelistener;
            return;
        }
    }

    private static final String TAG = "MtvOneSegBmlEngineControl";
    private static MtvOneSegBmlEngineControl mBmlEngInf = null;
    private static MtvNativeBmlEngineImpl mBmlEngine = null;
    private static Context mContext = null;
    private static IMtvOneSegBmlEngineListener mOneSegBmlEngineListener = null;
    private static MtvOneSegTVLink mOnesegTvLink = null;
    private boolean isBMLEngineCreated;

}
