.class public Lcom/oneplus/screenshot/longshot/task/MoveTask;
.super Landroid/os/AsyncTask;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;,
        Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveTask"


# instance fields
.field inputSource:I

.field private mCanRunTask:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenPart:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mLastScreenPart:Landroid/graphics/Bitmap;

.field private mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

.field private mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field private mPartScreenshotMatchTimes:I

.field mScreenInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    .param p3, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 39
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 40
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 42
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 300
    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    .line 71
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 73
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 74
    return-void-no-barrier
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 31
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 31
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V
    .registers 2
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;
    .param p1, "x1"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScrollInternal(I)V

    return-void-no-barrier
.end method

.method private checkCanScroll(I)V
    .registers 4
    .param p1, "count"    # I

    .line 184
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void-no-barrier
.end method

.method private checkCanScrollInternal(I)V
    .registers 8
    .param p1, "count"    # I

    .line 188
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 189
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 190
    const-string v0, "Longshot.MoveTask"

    const-string v1, "mLastScreenPart is already recycled, don\'t compare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void-no-barrier

    .line 194
    :cond_16
    iget v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c2

    .line 195
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 197
    .local v0, "compare":Z
    if-eqz v0, :cond_9b

    .line 198
    const-string v1, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check overscroll:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 201
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LastScreenPart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenPart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 204
    :cond_9b
    iput v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 205
    nop

    .local v2, "i":I
    :goto_9e
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b7

    .line 206
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 207
    .local v2, "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    .end local v2    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_9e

    .line 209
    .end local v2    # "i":I
    :cond_b7
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 212
    .end local v0    # "compare":Z
    :goto_bc
    nop

    .line 218
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 219
    return-void-no-barrier

    .line 213
    :cond_c2
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 214
    return-void-no-barrier
.end method

.method private compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p1, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compareBitmap"    # Landroid/graphics/Bitmap;

    .line 471
    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 474
    :cond_5
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    .line 472
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method private getPartScreenshot()Landroid/graphics/Bitmap;
    .registers 8

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    const/16 v3, 0x438

    const/16 v4, 0x320

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x438

    const/16 v2, 0x12c

    const/4 v3, 0x0

    const v4, 0xf4240

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static final getSource(II)I
    .registers 3
    .param p0, "inputSource"    # I
    .param p1, "defaultSource"    # I

    .line 303
    if-nez p0, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    return v0
.end method

.method private gettraceBitmaps()[Ljava/lang/String;
    .registers 3

    .line 409
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getMoveTraceBitmap()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 411
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "traceList":[Ljava/lang/String;
    return-object v1

    .line 414
    .end local v1    # "traceList":[Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method private injectMotionEvent(IIJFFF)V
    .registers 28
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "when"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F

    .line 374
    const/high16 v1, 0x3f800000    # 1.0f

    .line 375
    .local v1, "DEFAULT_SIZE":F
    const/4 v2, 0x0

    .line 376
    .local v2, "DEFAULT_META_STATE":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 377
    .local v3, "DEFAULT_PRECISION_X":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 378
    .local v4, "DEFAULT_PRECISION_Y":F
    const/4 v5, 0x0

    .line 379
    .local v5, "DEFAULT_EDGE_FLAGS":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-static/range {v6 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 382
    .local v6, "event":Landroid/view/MotionEvent;
    const/high16 v0, 0x10000000

    or-int v0, p1, v0

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 385
    const/4 v8, 0x1

    :try_start_2d
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v0, v6, v9}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_35} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_35} :catch_36

    goto :goto_3d

    .line 389
    :catch_36
    move-exception v0

    .line 390
    .local v0, "ex":Ljava/lang/RuntimeException;
    sput-boolean v8, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    goto :goto_3e

    .line 387
    :catch_3a
    move-exception v0

    .line 388
    .local v0, "ex":Ljava/lang/SecurityException;
    sput-boolean v8, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .line 391
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_3d
    nop

    .line 392
    :goto_3e
    return-void-no-barrier
.end method

.method private static final lerp(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    .line 395
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V
    .registers 11
    .param p1, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;
    .param p2, "action"    # I

    .line 266
    nop

    .line 267
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v0

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p1, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    int-to-float v5, v4

    iget v4, p1, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    int-to-float v6, v4

    .line 266
    const/4 v7, 0x0

    move v4, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 270
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const v2, 0x10001002

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 273
    const/4 v1, 0x1

    :try_start_21
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_26} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_2e

    .line 276
    :catch_27
    move-exception v2

    .line 277
    .local v2, "ex":Ljava/lang/RuntimeException;
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .end local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_2f

    .line 274
    :catch_2b
    move-exception v2

    .line 275
    .local v2, "ex":Ljava/lang/SecurityException;
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .line 278
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :goto_2e
    nop

    .line 281
    :goto_2f
    return-void-no-barrier
.end method

.method private sendSwipe(III)V
    .registers 33
    .param p1, "inputSource"    # I
    .param p2, "duration"    # I
    .param p3, "keep"    # I

    move-object/from16 v8, p0

    .line 307
    const/16 v0, 0x1002

    move/from16 v1, p1

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getSource(II)I

    move-result v9

    .line 308
    .end local p1    # "inputSource":I
    .local v9, "inputSource":I
    if-gez p2, :cond_10

    .line 309
    const/16 v0, 0x12c

    .line 311
    .end local p2    # "duration":I
    .local v0, "duration":I
    move v10, v0

    goto :goto_12

    .end local v0    # "duration":I
    .restart local p2    # "duration":I
    :cond_10
    move/from16 v10, p2

    .end local p2    # "duration":I
    .local v10, "duration":I
    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 312
    .local v11, "now":J
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v13, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    .line 313
    .local v13, "x":I
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v14, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    .line 316
    .local v14, "y1":I
    const/4 v2, 0x0

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 318
    move-wide v15, v11

    .line 319
    .local v15, "startTime":J
    int-to-long v0, v10

    add-long v17, v15, v0

    .line 321
    .local v17, "endTime":J
    const/4 v0, 0x0

    .line 323
    .local v0, "count":I
    iget-object v1, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    move v7, v0

    .end local v0    # "count":I
    .local v1, "y2":I
    .local v7, "count":I
    :goto_3c
    move v6, v1

    .line 327
    .end local v1    # "y2":I
    .local v6, "y2":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 329
    sub-long v3, v11, v15

    .line 330
    .local v3, "elapsedTime":J
    long-to-float v0, v3

    int-to-float v1, v10

    div-float v5, v0, v1

    .line 331
    .local v5, "alpha":F
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    int-to-float v1, v14

    int-to-float v2, v6

    invoke-static {v1, v2, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v13, v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    .line 333
    cmp-long v0, v11, v17

    if-gtz v0, :cond_cc

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->canMove()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 334
    move-wide/from16 v25, v3

    move/from16 v19, v5

    move/from16 v27, v6

    move/from16 v28, v10

    move v10, v7

    goto/16 :goto_d5

    .line 351
    :cond_6a
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v19

    int-to-float v1, v13

    int-to-float v0, v14

    int-to-float v2, v6

    .line 352
    invoke-static {v0, v2, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    .line 351
    move-object v0, v8

    move/from16 v24, v1

    move v1, v9

    const/4 v2, 0x2

    move-wide/from16 v25, v3

    move-wide/from16 v3, v19

    .end local v3    # "elapsedTime":J
    .local v25, "elapsedTime":J
    move/from16 v19, v5

    move/from16 v5, v24

    .end local v5    # "alpha":F
    .local v19, "alpha":F
    move/from16 v27, v6

    move/from16 v6, v22

    .end local v6    # "y2":I
    .local v27, "y2":I
    move/from16 v28, v10

    move v10, v7

    move/from16 v7, v23

    .end local v7    # "count":I
    .local v10, "count":I
    .local v28, "duration":I
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 358
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v5, v19, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr v5, v0

    int-to-float v0, v10

    cmpl-float v0, v5, v0

    if-lez v0, :cond_a4

    .line 359
    invoke-direct {v8, v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScroll(I)V

    .line 360
    add-int/lit8 v7, v10, 0x1

    .end local v10    # "count":I
    .restart local v7    # "count":I
    goto :goto_a5

    .line 364
    .end local v7    # "count":I
    .restart local v10    # "count":I
    :cond_a4
    move v7, v10

    .end local v10    # "count":I
    .restart local v7    # "count":I
    :goto_a5
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v0

    if-nez v0, :cond_b8

    iget-boolean v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    if-nez v0, :cond_b2

    goto :goto_b8

    .line 370
    .end local v19    # "alpha":F
    .end local v25    # "elapsedTime":J
    :cond_b2
    nop

    .line 323
    move/from16 v1, v27

    move/from16 v10, v28

    goto :goto_3c

    .line 365
    .restart local v19    # "alpha":F
    .restart local v25    # "elapsedTime":J
    :cond_b8
    :goto_b8
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    const/4 v1, 0x3

    invoke-direct {v8, v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    .line 366
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->setOverScroll(Z)V

    .line 367
    const-string v0, "Longshot.MoveTask"

    const-string v1, "Overscroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void-no-barrier

    .line 334
    .end local v19    # "alpha":F
    .end local v25    # "elapsedTime":J
    .end local v27    # "y2":I
    .end local v28    # "duration":I
    .restart local v3    # "elapsedTime":J
    .restart local v5    # "alpha":F
    .restart local v6    # "y2":I
    .local v10, "duration":I
    :cond_cc
    move-wide/from16 v25, v3

    move/from16 v19, v5

    move/from16 v27, v6

    move/from16 v28, v10

    move v10, v7

    .end local v3    # "elapsedTime":J
    .end local v5    # "alpha":F
    .end local v6    # "y2":I
    .end local v7    # "count":I
    .local v10, "count":I
    .restart local v19    # "alpha":F
    .restart local v25    # "elapsedTime":J
    .restart local v27    # "y2":I
    .restart local v28    # "duration":I
    :goto_d5
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    move/from16 v7, v27

    invoke-virtual {v0, v13, v7}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    .line 336
    .end local v27    # "y2":I
    .local v7, "y2":I
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_de
    move/from16 v6, p3

    if-ge v1, v6, :cond_eb

    .line 337
    iget-object v2, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    const/4 v3, 0x2

    invoke-direct {v8, v2, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    .line 342
    .end local v1    # "i":I
    :cond_eb
    iput v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 345
    const/4 v2, 0x1

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v1, v7

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v0, v8

    move/from16 v21, v1

    move v1, v9

    move/from16 v6, v21

    move/from16 v21, v7

    move/from16 v7, v20

    .end local v7    # "y2":I
    .local v21, "y2":I
    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 347
    return-void-no-barrier
.end method

.method private storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .registers 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "fileInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .line 179
    const-string v0, "Longshot.MoveTask"

    const-string v1, "storeImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 181
    return-void-no-barrier
.end method


# virtual methods
.method public checkTraceBitmap()V
    .registers 13

    .line 437
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->gettraceBitmaps()[Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "traceFiles":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v1, "traceBitmaps":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 440
    move v3, v2

    .local v3, "i":I
    :goto_d
    array-length v4, v0

    if-ge v3, v4, :cond_25

    .line 441
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 442
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_22

    .line 443
    new-instance v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    aget-object v6, v0, v3

    invoke-direct {v5, p0, v4, v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 447
    .end local v3    # "i":I
    :cond_25
    const/4 v3, 0x0

    .line 448
    .local v3, "targetBitmap":Landroid/graphics/Bitmap;
    const-string v4, ""

    .line 449
    .local v4, "targetFileName":Ljava/lang/String;
    move-object v5, v4

    move-object v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "targetBitmap":Landroid/graphics/Bitmap;
    .local v5, "targetFileName":Ljava/lang/String;
    :goto_2b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_78

    .line 450
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v6, v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 451
    .local v6, "compareBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v7, v7, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v7}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 452
    .local v7, "compareFileName":Ljava/lang/String;
    if-nez v4, :cond_4a

    .line 453
    move-object v4, v6

    .line 454
    move-object v5, v7

    goto :goto_75

    .line 456
    :cond_4a
    invoke-direct {p0, v4, v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v8

    .line 457
    .local v8, "result":Z
    const-string v9, "Longshot.MoveTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " compare targetFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " compareFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object v4, v6

    .line 449
    .end local v6    # "compareBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "compareFileName":Ljava/lang/String;
    .end local v8    # "result":Z
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 463
    .end local v3    # "i":I
    :cond_78
    nop

    .local v2, "i":I
    :goto_79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_97

    .line 464
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_94

    .line 465
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v3, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 463
    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 468
    .end local v2    # "i":I
    :cond_97
    return-void-no-barrier
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 31
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 101
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 103
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 111
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    return-object v1

    .line 113
    :cond_f
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    .line 114
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->setDownTime(J)V

    .line 115
    const-string v0, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to move, x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    .local v0, "keep":I
    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    const/16 v3, 0x320

    invoke-direct {p0, v2, v3, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendSwipe(III)V

    .line 152
    const-string v2, "Longshot.MoveTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move up, x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v1
.end method

.method getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "file"    # Ljava/lang/String;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 422
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v2, "imagefile":Ljava/io/File;
    const/4 v3, 0x0

    .line 424
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 425
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 426
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_28} :catch_2e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_28} :catch_29

    .end local v2    # "imagefile":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_32

    .line 429
    :catch_29
    move-exception v2

    .line 430
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_33

    .line 427
    :catch_2e
    move-exception v2

    .line 428
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 431
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_32
    nop

    .line 433
    :goto_33
    return-object v1
.end method

.method protected onCancelled()V
    .registers 1

    .line 259
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void-no-barrier
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 8
    .param p1, "result"    # Ljava/lang/Void;

    .line 223
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_63

    .line 224
    move v0, v1

    .local v0, "i":I
    :goto_8
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_63

    .line 225
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 226
    .local v2, "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_44

    .line 227
    const-string v3, "Longshot.MoveTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " info.mBitmap.save:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    goto :goto_60

    .line 230
    :cond_44
    const-string v3, "Longshot.MoveTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " info.mBitmap.isRecycled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v5}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v2    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 235
    .end local v0    # "i":I
    :cond_63
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    if-eqz v0, :cond_6c

    .line 236
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->onMoveFinished()V

    .line 238
    :cond_6c
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 239
    :try_start_6f
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 240
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    nop

    .local v1, "i":I
    :goto_77
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8f

    .line 242
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 243
    .restart local v2    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    .end local v2    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 246
    .end local v1    # "i":I
    :cond_8f
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_98

    .line 247
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    :cond_98
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a1

    .line 250
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    :cond_a1
    monitor-exit v0

    .line 253
    return-void-no-barrier

    .line 252
    :catchall_a3
    move-exception v1

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_6f .. :try_end_a5} :catchall_a3

    throw v1
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "movenext"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 295
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    monitor-enter v0

    .line 296
    :try_start_3
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 297
    monitor-exit v0

    .line 298
    return-void-no-barrier

    .line 297
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
