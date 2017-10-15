.class public Lcom/access/bml_aprofile/TVSystem$MessageType;
.super Ljava/lang/Object;
.source "TVSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/TVSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageType"
.end annotation


# static fields
.field public static final KEYBOARDINPUTDIALOG:I = 0x4

.field public static final NOTIFYDIALOG:I = 0x1

.field public static final NOTIFYERROR:I = 0x5

.field public static final STARTEXTRABROWSER:I = 0x3

.field public static final VIDEOUPDATE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/TVSystem;


# direct methods
.method public constructor <init>(Lcom/access/bml_aprofile/TVSystem;)V
    .locals 0

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/access/bml_aprofile/TVSystem$MessageType;->this$0:Lcom/access/bml_aprofile/TVSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
