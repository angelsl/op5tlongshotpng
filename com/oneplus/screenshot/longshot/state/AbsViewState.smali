.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.super Lcom/oneplus/screenshot/longshot/state/BaseState;
.source "AbsViewState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsViewState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 20
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/BaseState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected clearContentBackground(Landroid/widget/FrameLayout;)V
    .registers 3
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method protected clearDecorForeground(Landroid/widget/FrameLayout;)V
    .registers 3
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method protected initContent(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearContentBackground(Landroid/widget/FrameLayout;)V

    .line 44
    return-void
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->clearDecorForeground(Landroid/widget/FrameLayout;)V

    .line 40
    return-void
.end method

.method protected abstract initViews(Landroid/widget/FrameLayout;)V
.end method

.method public onShow(Landroid/app/Dialog;)V
    .registers 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 29
    .local v0, "decor":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initDecor(Landroid/widget/FrameLayout;)V

    .line 30
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 31
    .local v1, "content":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initContent(Landroid/widget/FrameLayout;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->initViews(Landroid/widget/FrameLayout;)V

    .line 33
    return-void
.end method
