.class public Lcom/oneplus/lib/app/appcompat/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FitWindowsFrameLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup;


# instance fields
.field private mListener:Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 31
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/FitWindowsFrameLayout;->mListener:Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V

    .line 34
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 26
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/FitWindowsFrameLayout;->mListener:Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 27
    return-void
.end method
