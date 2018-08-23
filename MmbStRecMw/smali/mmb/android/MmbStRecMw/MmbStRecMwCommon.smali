.class public Lmmb/android/MmbStRecMw/MmbStRecMwCommon;
.super Ljava/lang/Object;
.source "MmbStRecMwCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;
    }
.end annotation


# static fields
.field private static final DATA_INFO_FLAG:Z

.field private static final DEBUG_ENABLE:Z

.field static final MODE:Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;


# instance fields
.field private isDebuggableD:Z

.field private isDebuggableE:Z

.field private isDebuggableI:Z

.field private isDebuggableV:Z

.field private isDebuggableW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;->MODE_ALL:Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;

    sput-object v0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->MODE:Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableV:Z

    .line 48
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableD:Z

    .line 50
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    .line 52
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableW:Z

    .line 54
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableE:Z

    .line 80
    sget-object v0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->MODE:Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->mmbSetDebuggable(Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;)V

    .line 81
    return-void
.end method


# virtual methods
.method public debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public debugLogPrint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aParam"    # I

    .prologue
    .line 174
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableD:Z

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public errorLogPrint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aParam"    # I

    .prologue
    .line 205
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableE:Z

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public infoLogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public infoLogPrint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aStr"    # Ljava/lang/String;
    .param p3, "aParam"    # I

    .prologue
    .line 143
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isMmbDebuggableD()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableD:Z

    return v0
.end method

.method isMmbDebuggableE()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableE:Z

    return v0
.end method

.method isMmbDebuggableI()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    return v0
.end method

.method isMmbDebuggableV()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableV:Z

    return v0
.end method

.method isMmbDebuggableW()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableW:Z

    return v0
.end method

.method public mmbSetDebuggable(Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;)V
    .locals 2
    .param p1, "aMode"    # Lmmb/android/MmbStRecMw/MmbStRecMwCommon$MmbOutLogMode;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableE:Z

    .line 218
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableW:Z

    .line 219
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    .line 220
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableD:Z

    .line 221
    iput-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableV:Z

    .line 260
    iput-boolean v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableW:Z

    .line 261
    iput-boolean v1, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableE:Z

    .line 263
    return-void
.end method

.method public outEitData(Lmmb/android/MmbStRecMw/MmbStRecMwEit;)V
    .locals 1
    .param p1, "aEit"    # Lmmb/android/MmbStRecMw/MmbStRecMwEit;

    .prologue
    .line 345
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 350
    :cond_0
    return-void
.end method

.method public outPmtData(Lmmb/android/MmbStRecMw/MmbStRecMwPmt;)V
    .locals 1
    .param p1, "aPmt"    # Lmmb/android/MmbStRecMw/MmbStRecMwPmt;

    .prologue
    .line 273
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 278
    :cond_0
    return-void
.end method

.method public outSdtData(Lmmb/android/MmbStRecMw/MmbStRecMwSdt;)V
    .locals 1
    .param p1, "aSdt"    # Lmmb/android/MmbStRecMw/MmbStRecMwSdt;

    .prologue
    .line 426
    iget-boolean v0, p0, Lmmb/android/MmbStRecMw/MmbStRecMwCommon;->isDebuggableI:Z

    if-nez v0, :cond_0

    .line 431
    :cond_0
    return-void
.end method
