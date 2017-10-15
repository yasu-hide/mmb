// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast;


public interface IMtvOneSegAudioControl
{

    public abstract boolean disableAudio();

    public abstract boolean enableAudio();

    public abstract int getAudioSessionId();

    public abstract boolean muteAudio();

    public abstract boolean setAudioMode(int i);

    public abstract boolean setSoundEffect(int i, int j);

    public abstract boolean setVolume(int i);

    public abstract boolean unmuteAudio();

    public static final int AUDIOEFFECT_FIVECHANNEL = 6;
    public static final int AUDIOEFFECT_MOVIES = 4;
    public static final int AUDIOEFFECT_MUSIC = 2;
    public static final int AUDIOEFFECT_NEWS = 3;
    public static final int AUDIOEFFECT_NORMAL = 0;
    public static final int AUDIOEFFECT_SPORTS = 5;
    public static final int AUDIOMODE_ALL = 0;
    public static final int AUDIOMODE_MAIN = 1;
    public static final int AUDIOMODE_SUB = 2;
    public static final int AUDIOOUT_EARPHONE = 1;
    public static final int AUDIOOUT_SPEAKER = 0;
    public static final int AUDIO_MUTE = 1;
    public static final int AUDIO_UNMUTE = 0;
}
