.class public abstract Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.super Lcom/oneplus/screenshot/longshot/state/AbsViewState;
.source "AbsShotState.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsShotState"


# instance fields
.field protected mCaptureDelay:I

.field protected mCaptureRunnable:Ljava/lang/Runnable;

.field protected mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

.field protected mEffectDelay:I

.field protected mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mHandler:Landroid/os/Handler;

.field protected mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field protected mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field protected mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field protected mOffset:I

.field protected mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    .line 27
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 28
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 30
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 31
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 32
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 33
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 34
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 52
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 53
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 56
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EFFECT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 57
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 3
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 64
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onEnter()V

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->startCapture()V

    .line 68
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .registers 4
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 72
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    if-eqz v0, :cond_d

    .line 73
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->cancel(Z)Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    .line 76
    :cond_d
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 77
    return-void
.end method

.method protected firstToCache()V
    .registers 7

    .line 117
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 118
    return-void

    .line 120
    :cond_9
    const/4 v0, 0x0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    monitor-enter v1

    .line 122
    :try_start_d
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 123
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_4e

    .line 124
    if-eqz v0, :cond_4d

    .line 125
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v1, v2

    .line 126
    .local v1, "top":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v2, v3

    .line 128
    .local v2, "bottom":I
    if-gez v1, :cond_38

    const/4 v1, 0x0

    .line 129
    :cond_38
    if-gez v2, :cond_3b

    const/4 v2, 0x0

    .line 131
    :cond_3b
    new-instance v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v3, v0, v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 132
    .local v3, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v4

    .line 133
    :try_start_43
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 134
    monitor-exit v4

    goto :goto_4d

    :catchall_4a
    move-exception v5

    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4a

    throw v5

    .line 136
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    .end local v3    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_4d
    :goto_4d
    return-void

    .line 123
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v2
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .registers 7
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 81
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_SHOT_EFFECT:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 82
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;Landroid/widget/FrameLayout;)V

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->postDelayed(Ljava/lang/Runnable;J)V

    .line 86
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_26
    return-void
.end method

.method public initViews(Landroid/widget/FrameLayout;)V
    .registers 2
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 90
    return-void
.end method

.method protected onCaptureError()V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 144
    return-void
.end method

.method public onCaptureFinished(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const v1, 0x7f0c000e

    const v2, 0x7f030003

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 95
    if-eqz p1, :cond_11

    .line 96
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_14

    .line 98
    :cond_11
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureError()V

    .line 100
    :goto_14
    return-void
.end method

.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 139
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    return-void
.end method

.method protected onEnter()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->firstToCache()V

    .line 114
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    return-void
.end method

.method protected startCapture()V
    .registers 3

    .line 106
    const-string v0, "Longshot.AbsShotState"

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 2
    .param p1, "movenext"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 168
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 169
    return-void
.end method
