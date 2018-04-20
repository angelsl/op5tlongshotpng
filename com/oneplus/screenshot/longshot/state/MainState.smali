.class public Lcom/oneplus/screenshot/longshot/state/MainState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "MainState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/MainState$1;,
        Lcom/oneplus/screenshot/longshot/state/MainState$2;,
        Lcom/oneplus/screenshot/longshot/state/MainState$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MainState"


# instance fields
.field protected mEnterRunnable:Ljava/lang/Runnable;

.field protected mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field private mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

.field private mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

.field protected mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;


# direct methods
.method static synthetic -get0(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/screenshot/longshot/state/MainState;)Z
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MainState;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/state/MainState;
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/MainState;->gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 3
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 21
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 22
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 23
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 26
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/MainState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/MainState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 33
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/MainState$2;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/MainState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 42
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/MainState$3;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/MainState$3;-><init>(Lcom/oneplus/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    .line 103
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 104
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 105
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 106
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 107
    return-void
.end method

.method private gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 72
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setFirst(Z)V

    .line 73
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 77
    :goto_15
    return-void

    .line 75
    :cond_16
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    goto :goto_15
.end method

.method private hasNext()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    if-eqz v0, :cond_10

    .line 82
    const-string/jumbo v0, "Longshot.MainState"

    const-string/jumbo v1, "touch to stop scroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v2

    .line 87
    :cond_10
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 88
    :cond_20
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 89
    const-string/jumbo v0, "Longshot.MainState"

    const-string/jumbo v1, "last page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 92
    :cond_2f
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 93
    const-string/jumbo v0, "Longshot.MainState"

    const-string/jumbo v1, "max pages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v2

    .line 96
    :cond_45
    return v1
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 7
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 115
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-eqz v0, :cond_2b

    .line 116
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 117
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    :goto_1c
    return-void

    .line 119
    :cond_1d
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c

    .line 122
    :cond_2b
    const-string/jumbo v0, "Longshot.MainState"

    const-string/jumbo v1, "enter, not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .prologue
    .line 134
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .prologue
    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    return-void
.end method

.method public onShow(Landroid/app/Dialog;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->onShow(Landroid/app/Dialog;)V

    .line 130
    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .prologue
    .line 145
    return-void
.end method
