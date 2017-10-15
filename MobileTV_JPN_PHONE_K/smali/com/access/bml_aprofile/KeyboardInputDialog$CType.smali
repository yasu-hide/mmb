.class Lcom/access/bml_aprofile/KeyboardInputDialog$CType;
.super Ljava/lang/Object;
.source "KeyboardInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml_aprofile/KeyboardInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CType"
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final ALPHABET:I = 0x2

.field public static final HANKAKU:I = 0x3

.field public static final HIRAGANA:I = 0x6

.field public static final KATAKANA:I = 0x5

.field public static final NUMBER:I = 0x1

.field public static final ZENKAKU:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;


# direct methods
.method constructor <init>(Lcom/access/bml_aprofile/KeyboardInputDialog;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/access/bml_aprofile/KeyboardInputDialog$CType;->this$0:Lcom/access/bml_aprofile/KeyboardInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
