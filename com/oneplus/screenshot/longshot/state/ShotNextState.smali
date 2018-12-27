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

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 18
    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_SHOT_NEXT:I

    packed-switch v0, :pswitch_data_36

    .line 29
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_2c

    .line 26
    :pswitch_11
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    .line 27
    goto :goto_2c

    .line 23
    :pswitch_1a
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    .line 24
    goto :goto_2c

    .line 20
    :pswitch_23
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    .line 21
    nop

    .line 32
    :goto_2c
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_NEXT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mCaptureDelay:I

    .line 33
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    nop

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_23
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .registers 2

    .line 62
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getTopBase()I
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    return v0
.end method

.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->getTopBase()I

    move-result v0

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int/2addr v0, v1

    .line 41
    .local v0, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int/2addr v1, v2

    .line 42
    .local v1, "bottom":I
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v2, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 43
    .local v2, "cache":Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    monitor-enter v3

    .line 44
    :try_start_1f
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4, v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 45
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_2c

    .line 46
    invoke-super {p0, p1}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    .line 47
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->updateState()V

    .line 48
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 45
    :catchall_2c
    move-exception v4

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method protected updateState()V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 59
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
