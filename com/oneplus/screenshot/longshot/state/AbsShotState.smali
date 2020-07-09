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
.field protected mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

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
    .locals 1
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 60
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    .line 28
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 29
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 31
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 32
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 33
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 35
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 37
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 38
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 63
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 64
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 65
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 66
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EFFECT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 68
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getBarCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 70
    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p1, "oldState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 77
    invoke-super {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onEnter()V

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->startCapture()V

    .line 81
    return-void
.end method

.method public exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V
    .locals 2
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 85
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->cancel(Z)Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lcom/oneplus/screenshot/longshot/task/CaptureTask;

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsViewState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 90
    return-void
.end method

.method protected firstToCache()V
    .locals 6

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 137
    monitor-exit v1

    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    if-eqz v0, :cond_3

    .line 143
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v1, v2

    .line 144
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

    .line 146
    .local v2, "bottom":I
    if-gez v1, :cond_1

    .line 147
    const/4 v1, 0x0

    .line 149
    :cond_1
    if-gez v2, :cond_2

    .line 150
    const/4 v2, 0x0

    .line 153
    :cond_2
    new-instance v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v3, v0, v1, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 154
    .local v3, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v4

    .line 155
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 156
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 158
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    .end local v3    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :cond_3
    :goto_0
    return-void

    .line 140
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 5
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 94
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Features;->SHOW_SHOT_EFFECT:Lcom/oneplus/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;-><init>(Lcom/oneplus/screenshot/longshot/state/AbsShotState;Landroid/widget/FrameLayout;)V

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->postDelayed(Ljava/lang/Runnable;J)V

    .line 99
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 103
    return-void
.end method

.method public isFirstShot()Z
    .locals 1

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method protected onCaptureError()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 173
    return-void
.end method

.method public onCaptureFinished(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "bitmap":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    const v1, 0x7f0d001b

    const v2, 0x7f0c0007

    invoke-interface {v0, v1, v2, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 108
    if-eqz p1, :cond_0

    .line 110
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onStatusbarCaptureSuccess(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 112
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureError()V

    .line 116
    :goto_0
    return-void
.end method

.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 162
    return-void
.end method

.method protected onEnter()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->firstToCache()V

    .line 130
    return-void
.end method

.method protected onStatusbarCaptureSuccess(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "statusbar"    # Landroid/graphics/Bitmap;
    .param p2, "navigationbar"    # Landroid/graphics/Bitmap;

    .line 166
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    :cond_0
    return-void
.end method

.method protected startCapture()V
    .locals 2

    .line 122
    const-string v0, "Longshot.AbsShotState"

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "movenext"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 199
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 200
    return-void
.end method
