.class public Lcom/oneplus/screenshot/longshot/state/MainState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "MainState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 106
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 21
    const/4 v0, 0x0

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

    .line 107
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 108
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 109
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 110
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/MainState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .line 15
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MainState;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .line 15
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;
    .param p1, "x1"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/MainState;->gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .line 15
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method private gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 75
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setFirst(Z)V

    .line 77
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    .line 81
    :goto_0
    return-void
.end method

.method private hasNext()Z
    .locals 4

    .line 85
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    const/4 v1, 0x0

    const-string v2, "Longshot.MainState"

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "touch to stop scroll"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "max pages"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 100
    :cond_2
    return v3

    .line 92
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 93
    const-string v0, "last page"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v1
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 4
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 117
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 119
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 126
    :cond_1
    const-string v0, "Longshot.MainState"

    const-string v1, "enter, not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    :goto_0
    return-void
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 138
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 142
    return-void
.end method

.method public onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 133
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V

    .line 134
    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 149
    return-void
.end method
