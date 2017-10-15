// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.smartclip;

import android.view.View;
import com.samsung.android.sdk.look.Slook;
import com.samsung.android.smartclip.SmartClipDataExtractionListener;
import com.samsung.android.smartclip.SmartClipMetaUtils;

// Referenced classes of package com.samsung.android.sdk.look.smartclip:
//            SlookSmartClipMetaTag, SlookSmartClipDataElement, SlookSmartClipCroppedArea

public final class SlookSmartClip
{
    public static interface DataExtractionListener
    {

        public abstract int onExtractSmartClipData(View view, SlookSmartClipDataElement slooksmartclipdataelement, SlookSmartClipCroppedArea slooksmartclipcroppedarea);

        public static final int EXTRACTION_DEFAULT = 1;
        public static final int EXTRACTION_DISCARD = 0;
    }


    public SlookSmartClip(View view)
    {
        mSlook = new Slook();
        mView = null;
        mDataExtractionListener = null;
        mView = view;
    }

    private boolean isSupport(int i)
    {
        return mSlook.isFeatureEnabled(2);
    }

    public void addMetaTag(SlookSmartClipMetaTag slooksmartclipmetatag)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            SmartClipMetaUtils.addMetaTag(mView, slooksmartclipmetatag);
            return;
        }
    }

    public void clearAllMetaTag()
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            SmartClipMetaUtils.clearAllMetaTag(mView);
            return;
        }
    }

    public int extractDefaultSmartClipData(SlookSmartClipDataElement slooksmartclipdataelement, SlookSmartClipCroppedArea slooksmartclipcroppedarea)
    {
        if(!isSupport(1))
            return 0;
        else
            return SmartClipMetaUtils.extractDefaultSmartClipData(mView, slooksmartclipdataelement, slooksmartclipcroppedarea);
    }

    public void removeMetaTag(String s)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            SmartClipMetaUtils.removeMetaTag(mView, s);
            return;
        }
    }

    public void setDataExtractionListener(DataExtractionListener dataextractionlistener)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mDataExtractionListener = dataextractionlistener;
            SmartClipMetaUtils.setDataExtractionListener(mView, new SmartClipDataExtractionListener() {

                public int onExtractSmartClipData(View view, SlookSmartClipDataElement slooksmartclipdataelement, SlookSmartClipCroppedArea slooksmartclipcroppedarea)
                {
                    return mDataExtractionListener.onExtractSmartClipData(view, slooksmartclipdataelement, slooksmartclipcroppedarea);
                }

                final SlookSmartClip this$0;

            
            {
                this$0 = SlookSmartClip.this;
                super();
            }
            }
);
            return;
        }
    }

    private static final String TAG = "SmartClip";
    private DataExtractionListener mDataExtractionListener;
    private Slook mSlook;
    private View mView;

}
