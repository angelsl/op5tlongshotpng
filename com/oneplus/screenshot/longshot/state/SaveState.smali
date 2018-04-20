.class public Lcom/oneplus/screenshot/longshot/state/SaveState;
.super Lcom/oneplus/screenshot/longshot/state/AbsImageState;
.source "SaveState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;,
        Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;,
        Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;
    }
.end annotation


# static fields
.field private static final SAVE_ANIMATION_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "Longshot.SaveState"


# instance fields
.field private mCachable:Lcom/oneplus/screenshot/util/Cachable;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .registers 3
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 34
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 35
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private startAnimation(Landroid/view/View;)V
    .registers 6
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    .line 83
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/screenshot/longshot/state/SaveState$ViewLoader;-><init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V

    const/high16 v3, 0x7f050000

    .line 85
    invoke-static {v1, v3, v2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 87
    .local v0, "anim":Landroid/animation/AnimatorSet;
    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/screenshot/longshot/state/SaveState$TargetAnimListener;-><init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;

    invoke-direct {v1, p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/SaveState$AnimationRunnable;-><init>(Lcom/oneplus/screenshot/longshot/state/SaveState;Landroid/view/View;Landroid/animation/Animator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 8
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 50
    const-string/jumbo v2, "Longshot.SaveState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enter , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 52
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/ScreenshotApplication;

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 53
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    monitor-enter v3

    .line 54
    :try_start_30
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-interface {v2, v4}, Lcom/oneplus/screenshot/util/Cachable;->setCache(Ljava/util/List;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_5f

    monitor-exit v3

    .line 56
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.oneplus.screenshot.GlobalService.save"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    const-class v4, Lcom/oneplus/screenshot/service/GlobalService;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 58
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_55

    .line 59
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v2}, Lcom/oneplus/screenshot/util/Cachable;->clearCache()V

    .line 61
    :cond_55
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const/4 v3, 0x0

    const v4, 0x7f030009

    invoke-interface {v2, v3, v4, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 62
    return-void

    .line 53
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_5f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .registers 3
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    .line 67
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 68
    return-void
.end method

.method public onShow(Landroid/app/Dialog;)V
    .registers 5
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsImageState;->onShow(Landroid/app/Dialog;)V

    .line 74
    const-string/jumbo v0, "Longshot.SaveState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShow, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/SaveState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/SaveState;->startAnimation(Landroid/view/View;)V

    .line 77
    return-void
.end method
