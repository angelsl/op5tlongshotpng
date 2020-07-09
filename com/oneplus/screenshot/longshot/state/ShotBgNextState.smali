.class public Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;
.super Lcom/oneplus/screenshot/longshot/state/AbsShotState;
.source "ShotBgNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotBgNextState"


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureSuccess:Ljava/lang/Runnable;

.field private mGenBitmapCache:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 2
    .param p1, "stateContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/AbsShotState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mBackgroundHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$1;-><init>(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mGenBitmapCache:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$2;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState$2;-><init>(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mCaptureSuccess:Ljava/lang/Runnable;

    .line 26
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mOffset:I

    .line 27
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_NEXT_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mCaptureDelay:I

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    .line 12
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    .line 12
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mCaptureSuccess:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    .line 12
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 76
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getTopBase()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    return v0
.end method

.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 35
    const-string v0, "ShotBgNextState"

    const-string v1, " onCaptureSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mGenBitmapCache:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method protected updateState()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->mStateContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;->getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 73
    return-void
.end method
