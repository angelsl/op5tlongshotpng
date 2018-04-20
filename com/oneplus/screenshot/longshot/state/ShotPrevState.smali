.class public Lcom/oneplus/screenshot/longshot/state/ShotPrevState;
.super Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.source "ShotPrevState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotPrevState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 3
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 25
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotPrevState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v4

    sub-int v2, v3, v4

    .line 26
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotPrevState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v4

    sub-int v0, v3, v4

    .line 27
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotPrevState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v4

    .line 28
    :try_start_28
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotPrevState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .line 29
    .local v1, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 30
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    .end local v1    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    invoke-direct {v1, p1, v2, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 31
    .restart local v1    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotPrevState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3, v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_4a

    monitor-exit v4

    .line 33
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    .line 34
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotPrevState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v4, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 35
    return-void

    .line 27
    .end local v1    # "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    :catchall_4a
    move-exception v3

    monitor-exit v4

    throw v3
.end method
