.class public Lcom/oneplus/screenshot/longshot/state/ShotFirstState;
.super Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.source "ShotFirstState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotFirstState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 17
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_FIRST_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->mCaptureDelay:I

    .line 18
    return-void
.end method


# virtual methods
.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    monitor-enter v1

    .line 27
    :try_start_3
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    monitor-exit v1

    .line 29
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->updateState()V

    .line 30
    return-void

    .line 26
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 2
    .param p1, "movenext"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 43
    return-void
.end method

.method protected updateState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->mOnStateListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->mOnStateListener:Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    .line 38
    :goto_a
    return-void

    .line 36
    :cond_b
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    goto :goto_a
.end method
