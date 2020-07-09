.class public Lcom/oneplus/screenshot/longshot/state/SaveState;
.super Lcom/oneplus/screenshot/longshot/state/AbsImageState;
.source "SaveState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;,
        Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;,
        Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;
    }
.end annotation


# static fields
.field private static final SAVE_ANIMATION_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "Longshot.SaveState"


# instance fields
.field private mCachable:Lcom/oneplus/screenshot/util/Cachable;

.field private mContext:Landroid/content/Context;

.field private mNaviBar:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 35
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mNaviBar:Landroid/graphics/Bitmap;

    .line 45
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private startAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "decor"    # Landroid/view/View;

    .line 94
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 96
    nop

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;-><init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V

    .line 96
    const/high16 v2, 0x7f020000

    invoke-static {v0, v2, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 98
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;-><init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;

    invoke-direct {v1, p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;-><init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;Landroid/animation/Animator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 5
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.SaveState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/ScreenshotApplication;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 57
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getBarCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getNavBarHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getBarCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mNaviBar:Landroid/graphics/Bitmap;

    .line 59
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-interface {v1, v2}, Lcom/oneplus/screenshot/util/Cachable;->setCache(Ljava/util/List;)V

    .line 61
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mNaviBar:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/oneplus/screenshot/util/Cachable;->setNaviBar(Landroid/graphics/Bitmap;)V

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.screenshot.GlobalService.save"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/screenshot/service/GlobalService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 66
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 67
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v2}, Lcom/oneplus/screenshot/util/Cachable;->clearCache()V

    .line 68
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v2}, Lcom/oneplus/screenshot/util/Cachable;->clearNaviBar()V

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v3, 0x0

    const v4, 0x7f0c007e

    invoke-interface {v2, v3, v4, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 71
    return-void

    .line 62
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 1
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 76
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 77
    return-void
.end method

.method public onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 82
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->onShow(Lcom/oneplus/screenshot/longshot/app/LongshotDialog;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShow, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.SaveState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getDecorView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/SaveState;->startAnimation(Landroid/view/View;)V

    .line 87
    return-void
.end method
