// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.bml;


interface IMtvNativeBmlViewListener
{

    public abstract void cb_KeyPadTypeChanged();

    public abstract void cb_appIMEStartPeer(byte abyte0[], boolean flag, boolean flag1, int i, int j);

    public abstract void cb_haltExecuted(int i);

    public abstract void cb_mailToPeer(byte abyte0[], byte abyte1[], byte abyte2[]);

    public abstract void cb_phoneToPeer(String s);

    public abstract boolean cb_processCommand(int i, int j);

    public abstract void cb_setBMLFullView();

    public abstract int cb_startResidentAppPeer(byte abyte0[], int i, byte abyte1[], String as[]);

    public abstract int cb_storeImage(byte abyte0[], boolean flag, byte abyte1[]);

    public abstract void cb_updateBMLSurfaceView();

    public abstract int cb_writeAddressBookInfoPeer(byte abyte0[], byte abyte1[], String s, String s1);

    public abstract int cb_writeSchInfoPeer(short word0, int i, int j, int k, int l, int i1, int j1, 
            short word1, byte abyte0[], byte abyte1[], boolean flag);
}
