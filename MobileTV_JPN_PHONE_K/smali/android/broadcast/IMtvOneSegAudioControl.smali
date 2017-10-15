.class public interface abstract Landroid/broadcast/IMtvOneSegAudioControl;
.super Ljava/lang/Object;
.source "IMtvOneSegAudioControl.java"


# static fields
.field public static final AUDIOEFFECT_FIVECHANNEL:I = 0x6

.field public static final AUDIOEFFECT_MOVIES:I = 0x4

.field public static final AUDIOEFFECT_MUSIC:I = 0x2

.field public static final AUDIOEFFECT_NEWS:I = 0x3

.field public static final AUDIOEFFECT_NORMAL:I = 0x0

.field public static final AUDIOEFFECT_SPORTS:I = 0x5

.field public static final AUDIOMODE_ALL:I = 0x0

.field public static final AUDIOMODE_MAIN:I = 0x1

.field public static final AUDIOMODE_SUB:I = 0x2

.field public static final AUDIOOUT_EARPHONE:I = 0x1

.field public static final AUDIOOUT_SPEAKER:I = 0x0

.field public static final AUDIO_MUTE:I = 0x1

.field public static final AUDIO_UNMUTE:I


# virtual methods
.method public abstract disableAudio()Z
.end method

.method public abstract enableAudio()Z
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract muteAudio()Z
.end method

.method public abstract setAudioMode(I)Z
.end method

.method public abstract setSoundEffect(II)Z
.end method

.method public abstract setVolume(I)Z
.end method

.method public abstract unmuteAudio()Z
.end method
