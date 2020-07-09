.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "AbsViewState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsViewState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected clearContentBackground(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method protected clearDecorForeground(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method

.method protected initContent(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 40
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearContentBackground(Landroid/widget/FrameLayout;)V

    .line 41
    return-void
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearDecorForeground(Landroid/widget/FrameLayout;)V

    .line 37
    return-void
.end method

.method protected abstract initViews(Landroid/widget/FrameLayout;)V
.end method

.method public onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 26
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getDecorView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 28
    .local v0, "content":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initContent(Landroid/widget/FrameLayout;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initViews(Landroid/widget/FrameLayout;)V

    .line 30
    return-void
.end method
