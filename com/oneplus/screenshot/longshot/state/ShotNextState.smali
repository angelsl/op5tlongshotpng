.class public Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.source "ShotNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotNextState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 18
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_SHOT_NEXT:I

    packed-switch v0, :pswitch_data_34

    .line 29
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    .line 32
    :goto_10
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_NEXT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mCaptureDelay:I

    .line 33
    return-void

    .line 20
    :pswitch_19
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_10

    .line 23
    :pswitch_22
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_10

    .line 26
    :pswitch_2b
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_10

    .line 18
    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_19
        :pswitch_22
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .prologue
    .line 62
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getTopBase()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    return v0
.end method

.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->getTopBase()I

    move-result v3

    iget v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int v2, v3, v4

    .line 41
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int v0, v3, v4

    .line 42
    .local v0, "bottom":I
    new-instance v1, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v1, p1, v2, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 43
    .local v1, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v4

    .line 44
    :try_start_21
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3, v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2e

    monitor-exit v4

    .line 46
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->updateState()V

    .line 48
    return-void

    .line 43
    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected updateState()V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 59
    return-void
.end method
