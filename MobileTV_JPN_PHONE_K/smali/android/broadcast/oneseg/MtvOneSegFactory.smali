.class public Landroid/broadcast/oneseg/MtvOneSegFactory;
.super Ljava/lang/Object;
.source "MtvOneSegFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioControl()Landroid/broadcast/IMtvOneSegAudioControl;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getBMLViewControl()Landroid/broadcast/IMtvOneSegBmlViewControl;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;->getInstance()Landroid/broadcast/bml/MtvOneSegBmlViewControlImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptionControl()Landroid/broadcast/IMtvOneSegCaptionControl;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getFileControl()Landroid/broadcast/IMtvOneSegFileControl;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getService()Landroid/broadcast/oneseg/MtvOneSegService;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/broadcast/oneseg/MtvOneSegService;->getService()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoControl()Landroid/broadcast/IMtvOneSegVideoControl;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Landroid/broadcast/sdtv/SDtvCompControlImpl;->getCompControl()Landroid/broadcast/sdtv/SDtvCompControlImpl;

    move-result-object v0

    return-object v0
.end method
