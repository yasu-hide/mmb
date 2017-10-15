// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper.types;


public class MtvOneSegTVLink
{

    public MtvOneSegTVLink()
    {
        origNWID = -1;
        transStreamID = -1;
        servID = -1;
        compTag = -1;
        destURI = null;
        affilID = null;
    }

    public String toString()
    {
        return (new StringBuilder()).append("origNWID : ").append(origNWID).append(" transStreamID : ").append(transStreamID).append(" servID ").append(servID).append(" compTag ").append(compTag).append(" destURI ").append(destURI).toString();
    }

    public int affilID[];
    public int compTag;
    public String destURI;
    public int origNWID;
    public int servID;
    public int transStreamID;
}
