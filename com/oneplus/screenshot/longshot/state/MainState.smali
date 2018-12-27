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
    .registers 3
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 102
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

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/MainState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .line 15
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/MainState;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .line 15
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mNextListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/state/MainState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;
    .param p1, "x1"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 15
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/MainState;->gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/state/MainState;)Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/MainState;

    .line 15
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mSaveListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method private gotToNextState(Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

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

    goto :goto_19

    .line 75
    :cond_16
    invoke-interface {p1}, Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    .line 77
    :goto_19
    return-void
.end method

.method private hasNext()Z
    .registers 4

    .line 81
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 82
    const-string v0, "Longshot.MainState"

    const-string v2, "touch to stop scroll"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 87
    :cond_d
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_34

    .line 92
    :cond_1f
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 93
    const-string v0, "Longshot.MainState"

    const-string v2, "max pages"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v1

    .line 96
    :cond_33
    return v2

    .line 88
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 89
    const-string v0, "Longshot.MainState"

    const-string v2, "last page"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 7
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

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

    goto :goto_3d

    .line 119
    :cond_1d
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3d

    .line 122
    :cond_2b
    const-string v0, "Longshot.MainState"

    const-string v1, "enter, not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    :goto_3d
    return-void
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 134
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 138
    return-void
.end method

.method public onShow(Landroid/app/Dialog;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 129
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->onShow(Landroid/app/Dialog;)V

    .line 130
    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 145
    return-void
.end method
