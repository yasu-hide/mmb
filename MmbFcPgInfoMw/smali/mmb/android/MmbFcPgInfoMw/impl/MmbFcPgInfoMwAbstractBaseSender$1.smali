.class synthetic Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;
.super Ljava/lang/Object;
.source "MmbFcPgInfoMwAbstractBaseSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->values()[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    :try_start_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_REALTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_DOWNLOAD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/impl/MmbFcPgInfoMwAbstractBaseSender$1;->$SwitchMap$mmb$android$MmbFcPgInfoMw$MmbFcPgInfoMw$MmbFcPgInfoMwInformationType:[I

    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
