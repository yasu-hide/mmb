.class public Lcom/sec/android/app/minimode/MainView;
.super Landroid/widget/RelativeLayout;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;,
        Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;,
        Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainView"


# instance fields
.field private mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

.field private mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

.field private mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    invoke-interface {v0}, Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;->onAttachedToWindow()V

    .line 75
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 76
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    invoke-interface {v0}, Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;->onDetachedFromWindow()V

    .line 83
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 84
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;->onWindowFocusChanged(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public setOnAttachedToWindowListener(Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnAttachedToWindowListener:Lcom/sec/android/app/minimode/MainView$OnAttachedToWindowListener;

    .line 56
    return-void
.end method

.method public setOnDetachedFromWindowListener(Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnDetachedFromWindowListener:Lcom/sec/android/app/minimode/MainView$OnDetachedFromWindowListener;

    .line 60
    return-void
.end method

.method public setOnWindowFocusChangedListener(Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/minimode/MainView;->mOnWindowFocusChangedListener:Lcom/sec/android/app/minimode/MainView$OnWindowFocusChangedListener;

    .line 52
    return-void
.end method
