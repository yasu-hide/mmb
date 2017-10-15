// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk.look.writingbuddy;

import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.samsung.android.sdk.look.Slook;
import com.samsung.android.writingbuddy.WritingBuddyImpl;

public final class SlookWritingBuddy
{
    public static interface ImageWritingListener
    {

        public abstract void onImageReceived(Bitmap bitmap);
    }

    public static interface TextWritingListener
    {

        public abstract void onTextReceived(CharSequence charsequence);
    }


    public SlookWritingBuddy(ViewGroup viewgroup)
    {
        mSlook = new Slook();
        if(!isSupport(1))
        {
            Log.e("WritingBuddy", "This is not supported in device");
            return;
        } else
        {
            mParentView = viewgroup;
            mWritingBuddyImpl = new WritingBuddyImpl(viewgroup);
            return;
        }
    }

    public SlookWritingBuddy(EditText edittext)
    {
        mSlook = new Slook();
        if(!isSupport(1))
        {
            Log.e("WritingBuddy", "This is not supported in device");
            return;
        } else
        {
            mParentView = edittext;
            mWritingBuddyImpl = new WritingBuddyImpl(edittext);
            return;
        }
    }

    private boolean isSupport(int i)
    {
        return mSlook.isFeatureEnabled(3);
    }

    public int getEditorType()
    {
        if(!isSupport(1))
            return 0;
        else
            return mWritingBuddyImpl.getEditorType();
    }

    public boolean isEnabled()
    {
        if(!isSupport(1))
            return false;
        if(mParentView == null)
            throw new IllegalStateException("mParentView is null.");
        else
            return mParentView.isWritingBuddyEnabled();
    }

    public void setEditorType(int i)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mWritingBuddyImpl.setEditorType(i);
            return;
        }
    }

    public void setEnabled(boolean flag)
    {
        if(!isSupport(1))
            return;
        if(mParentView == null)
            throw new IllegalStateException("mParentView is null.");
        if(mParentView instanceof EditText)
        {
            mParentView.setWritingBuddyEnabled(flag);
            return;
        }
        if(mParentView.getWritingBuddy(false) != null)
        {
            mParentView.setWritingBuddyEnabled(flag);
            return;
        } else
        {
            throw new IllegalStateException("WritingBuddy was not enabled.");
        }
    }

    public void setImageWritingListener(ImageWritingListener imagewritinglistener)
    {
        if(!isSupport(1))
            return;
        mImageWritingListener = imagewritinglistener;
        if(imagewritinglistener == null)
        {
            mWritingBuddyImpl.setImageWritingEnabled(false);
            mWritingBuddyImpl.setOnImageWritingListener(null);
            return;
        } else
        {
            mWritingBuddyImpl.setImageWritingEnabled(true);
            mWritingBuddyImpl.setOnImageWritingListener(new com.samsung.android.writingbuddy.WritingBuddyImpl.OnImageWritingListener() {

                public void onImageReceived(Bitmap bitmap)
                {
                    mImageWritingListener.onImageReceived(bitmap);
                }

                final SlookWritingBuddy this$0;

            
            {
                this$0 = SlookWritingBuddy.this;
                super();
            }
            }
);
            return;
        }
    }

    public void setTextWritingListener(TextWritingListener textwritinglistener)
    {
        if(!isSupport(1))
        {
            return;
        } else
        {
            mTextWritingListener = textwritinglistener;
            mWritingBuddyImpl.setOnTextWritingListener(new com.samsung.android.writingbuddy.WritingBuddyImpl.OnTextWritingListener() {

                public void onTextReceived(CharSequence charsequence)
                {
                    mTextWritingListener.onTextReceived(charsequence);
                }

                final SlookWritingBuddy this$0;

            
            {
                this$0 = SlookWritingBuddy.this;
                super();
            }
            }
);
            return;
        }
    }

    private static final String TAG = "WritingBuddy";
    public static final int TYPE_EDITOR_NUMBER = 1;
    public static final int TYPE_EDITOR_TEXT = 2;
    private ImageWritingListener mImageWritingListener;
    private View mParentView;
    private Slook mSlook;
    private TextWritingListener mTextWritingListener;
    private WritingBuddyImpl mWritingBuddyImpl;


}
