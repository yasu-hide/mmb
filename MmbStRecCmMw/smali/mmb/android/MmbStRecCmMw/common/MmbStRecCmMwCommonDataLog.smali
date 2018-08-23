.class public Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;
.super Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;
.source "MmbStRecCmMwCommonDataLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs debugLogDataPrint(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aObject"    # [Ljava/lang/Object;

    .prologue
    .line 32
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableD:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, p2}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->formatArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method

.method public errorLogDataPrint(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "aTag"    # Ljava/lang/String;
    .param p2, "aObject"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-boolean v0, p0, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonLog;->isDebuggableE:Z

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->formatArguments([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    return-void
.end method

.method protected formatArgument(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aObject"    # Ljava/lang/Object;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string v0, "null"

    .line 80
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 71
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_2

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {p0, p1}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->formatArray(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method protected varargs formatArguments([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "aObject"    # [Ljava/lang/Object;

    .prologue
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v5, ""

    .line 53
    .local v5, "sep":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 54
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 55
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0, v0}, Lmmb/android/MmbStRecCmMw/common/MmbStRecCmMwCommonDataLog;->formatArgument(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v5, ","

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected formatArray(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "aObject"    # Ljava/lang/Object;

    .prologue
    .line 88
    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    .line 89
    check-cast p1, [B

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 90
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, [Z

    if-eqz v1, :cond_1

    .line 91
    check-cast p1, [Z

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, [C

    if-eqz v1, :cond_2

    .line 93
    check-cast p1, [C

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {p1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, [S

    if-eqz v1, :cond_3

    .line 95
    check-cast p1, [S

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [S

    invoke-static {p1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, [I

    if-eqz v1, :cond_4

    .line 97
    check-cast p1, [I

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, [J

    if-eqz v1, :cond_5

    .line 99
    check-cast p1, [J

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 100
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_5
    instance-of v1, p1, [F

    if-eqz v1, :cond_6

    .line 101
    check-cast p1, [F

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_6
    instance-of v1, p1, [D

    if-eqz v1, :cond_7

    .line 103
    check-cast p1, [D

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [D

    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0    # "result":Ljava/lang/String;
    .restart local p1    # "aObject":Ljava/lang/Object;
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "aObject":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method
