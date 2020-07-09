.class public Lcom/oneplus/screenshot/longshot/state/UnsupportedState;
.super Lcom/oneplus/screenshot/longshot/state/MainState;
.source "UnsupportedState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.UnsupportedState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/MainState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 2
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 25
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/MainState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 26
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_UNSUPPORTED:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "Longshot.UnsupportedState"

    const-string v1, "Unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 33
    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 41
    return-void
.end method
