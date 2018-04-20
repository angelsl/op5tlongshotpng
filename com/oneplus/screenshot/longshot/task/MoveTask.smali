.class public Lcom/oneplus/screenshot/longshot/task/MoveTask;
.super Landroid/os/AsyncTask;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/MoveTask$1;,
        Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;,
        Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScrollInternal(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    .param p3, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 39
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 40
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 42
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 43
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

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
    iput v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 300
    iput v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    .line 71
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 73
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 74
    return-void
.end method

.method private checkCanScroll(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method private checkCanScrollInternal(I)V
    .registers 10
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 188
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 189
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 190
    const-string/jumbo v3, "Longshot.MoveTask"

    const-string/jumbo v4, "mLastScreenPart is already recycled, don\'t compare"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 194
    :cond_19
    iget v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_d5

    .line 195
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 197
    .local v0, "compare":Z
    if-eqz v0, :cond_b4

    .line 198
    const-string/jumbo v3, "Longshot.MoveTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check overscroll:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 201
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v4, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LastScreenPart_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v4, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ScreenPart_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_af
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 219
    return-void

    .line 204
    :cond_b4
    iput v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b7
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_cf

    .line 206
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 207
    .local v2, "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 209
    .end local v2    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    :cond_cf
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_af

    .line 213
    .end local v0    # "compare":Z
    .end local v1    # "i":I
    :cond_d5
    iput-boolean v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 214
    return-void
.end method

.method private compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .registers 4
    .param p1, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compareBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 471
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 472
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 474
    :cond_6
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private getPartScreenshot()Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    const/16 v1, 0x438

    const/4 v3, 0x0

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x1f4

    const/16 v4, 0x320

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x12c

    const v4, 0xf4240

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static final getSource(II)I
    .registers 2
    .param p0, "inputSource"    # I
    .param p1, "defaultSource"    # I

    .prologue
    .line 303
    if-nez p0, :cond_3

    .end local p1    # "defaultSource":I
    :goto_2
    return p1

    .restart local p1    # "defaultSource":I
    :cond_3
    move p1, p0

    goto :goto_2
.end method

.method private gettraceBitmaps()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 409
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getMoveTraceBitmap()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 411
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, "traceList":[Ljava/lang/String;
    return-object v1

    .line 414
    .end local v1    # "traceList":[Ljava/lang/String;
    :cond_f
    return-object v2
.end method

.method private injectMotionEvent(IIJFFF)V
    .registers 33
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "when"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F

    .prologue
    .line 374
    const/high16 v20, 0x3f800000    # 1.0f

    .line 375
    .local v20, "DEFAULT_SIZE":F
    const/16 v17, 0x0

    .line 376
    .local v17, "DEFAULT_META_STATE":I
    const/high16 v18, 0x3f800000    # 1.0f

    .line 377
    .local v18, "DEFAULT_PRECISION_X":F
    const/high16 v19, 0x3f800000    # 1.0f

    .line 378
    .local v19, "DEFAULT_PRECISION_Y":F
    const/16 v16, 0x0

    .line 379
    .local v16, "DEFAULT_EDGE_FLAGS":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/high16 v10, 0x3f800000    # 1.0f

    .line 380
    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 381
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v2, p3

    move/from16 v6, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 379
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v21

    .line 382
    .local v21, "event":Landroid/view/MotionEvent;
    const/high16 v2, 0x10000000

    or-int v2, v2, p1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 385
    :try_start_2e
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 386
    const/4 v3, 0x2

    .line 385
    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_38} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_38} :catch_39

    .line 392
    :goto_38
    return-void

    .line 389
    :catch_39
    move-exception v22

    .line 390
    .local v22, "ex":Ljava/lang/RuntimeException;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    goto :goto_38

    .line 387
    .end local v22    # "ex":Ljava/lang/RuntimeException;
    :catch_3e
    move-exception v23

    .line 388
    .local v23, "ex":Ljava/lang/SecurityException;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    goto :goto_38
.end method

.method private static final lerp(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    .prologue
    .line 395
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V
    .registers 15
    .param p1, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;
    .param p2, "action"    # I

    .prologue
    const/4 v11, 0x1

    .line 267
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v0

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 269
    iget v4, p1, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    int-to-float v5, v4

    iget v4, p1, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    int-to-float v6, v4

    const/4 v7, 0x0

    move v4, p2

    .line 266
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 270
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x10001002

    or-int/2addr v0, v1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 273
    :try_start_20
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_25} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_25} :catch_26

    .line 281
    :goto_25
    return-void

    .line 276
    :catch_26
    move-exception v9

    .line 277
    .local v9, "ex":Ljava/lang/RuntimeException;
    sput-boolean v11, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    goto :goto_25

    .line 274
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    :catch_2a
    move-exception v10

    .line 275
    .local v10, "ex":Ljava/lang/SecurityException;
    sput-boolean v11, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    goto :goto_25
.end method

.method private sendSwipe(III)V
    .registers 28
    .param p1, "inputSource"    # I
    .param p2, "duration"    # I
    .param p3, "keep"    # I

    .prologue
    .line 307
    const/16 v3, 0x1002

    move/from16 v0, p1

    invoke-static {v0, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getSource(II)I

    move-result p1

    .line 308
    if-gez p2, :cond_c

    .line 309
    const/16 p2, 0x12c

    .line 311
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 312
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    move/from16 v17, v0

    .line 313
    .local v17, "x":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    move/from16 v22, v0

    .line 316
    .local v22, "y1":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v6

    move/from16 v0, v17

    int-to-float v8, v0

    move/from16 v0, v22

    int-to-float v9, v0

    const/4 v5, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 318
    move-wide/from16 v20, v18

    .line 319
    .local v20, "startTime":J
    move/from16 v0, p2

    int-to-long v4, v0

    add-long v14, v18, v4

    .line 321
    .local v14, "endTime":J
    const/4 v11, 0x0

    .line 323
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    .line 327
    .local v23, "y2":I
    :cond_4c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 329
    sub-long v12, v18, v20

    .line 330
    .local v12, "elapsedTime":J
    long-to-float v3, v12

    move/from16 v0, p2

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 331
    .local v2, "alpha":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    invoke-static {v4, v5, v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    move/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    .line 333
    cmp-long v3, v18, v14

    if-gtz v3, :cond_7c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->canMove()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_ba

    .line 334
    :cond_7c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    move/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    .line 336
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_89
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_9c

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    .line 336
    add-int/lit8 v16, v16, 0x1

    goto :goto_89

    .line 342
    :cond_9c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v6

    move/from16 v0, v17

    int-to-float v8, v0

    move/from16 v0, v23

    int-to-float v9, v0

    const/4 v5, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 347
    return-void

    .line 351
    .end local v16    # "i":I
    :cond_ba
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v6

    move/from16 v0, v17

    int-to-float v8, v0

    .line 352
    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    invoke-static {v3, v4, v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v9

    .line 351
    const/4 v5, 0x2

    .line 352
    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    move/from16 v4, p1

    .line 351
    invoke-direct/range {v3 .. v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 358
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    int-to-float v4, v11

    cmpl-float v3, v3, v4

    if-lez v3, :cond_eb

    .line 359
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScroll(I)V

    .line 360
    add-int/lit8 v11, v11, 0x1

    .line 364
    :cond_eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v3

    if-nez v3, :cond_fd

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4c

    .line 365
    :cond_fd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendPointerSync(Lcom/oneplus/screenshot/longshot/util/MovePoint;I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->setOverScroll(Z)V

    .line 367
    const-string/jumbo v3, "Longshot.MoveTask"

    const-string/jumbo v4, "Overscroll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method private storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .registers 5
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "fileInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .prologue
    .line 179
    const-string/jumbo v0, "Longshot.MoveTask"

    const-string/jumbo v1, "storeImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 181
    return-void
.end method


# virtual methods
.method public checkTraceBitmap()V
    .registers 13

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->gettraceBitmaps()[Ljava/lang/String;

    move-result-object v8

    .line 438
    .local v8, "traceFiles":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v7, "traceBitmaps":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;>;"
    if-eqz v8, :cond_24

    .line 440
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v9, v8

    if-ge v3, v9, :cond_24

    .line 441
    aget-object v9, v8, v3

    invoke-virtual {p0, v9}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_21

    .line 443
    new-instance v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    aget-object v10, v8, v3

    invoke-direct {v9, p0, v0, v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 447
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "i":I
    :cond_24
    const/4 v5, 0x0

    .line 448
    .local v5, "targetBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v6, ""

    .line 449
    .local v6, "targetFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .end local v5    # "targetBitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "i":I
    :goto_29
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_80

    .line 450
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v1, v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 451
    .local v1, "compareBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v9, v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v9}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "compareFileName":Ljava/lang/String;
    if-nez v5, :cond_4a

    .line 453
    move-object v5, v1

    .line 454
    .local v5, "targetBitmap":Landroid/graphics/Bitmap;
    move-object v6, v2

    .line 449
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 456
    .end local v5    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_4a
    invoke-direct {p0, v5, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 457
    .local v4, "result":Z
    const-string/jumbo v9, "Longshot.MoveTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " compare targetFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " compareFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object v5, v1

    .restart local v5    # "targetBitmap":Landroid/graphics/Bitmap;
    goto :goto_47

    .line 463
    .end local v1    # "compareBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "compareFileName":Ljava/lang/String;
    .end local v4    # "result":Z
    .end local v5    # "targetBitmap":Landroid/graphics/Bitmap;
    :cond_80
    const/4 v3, 0x0

    :goto_81
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_9f

    .line 464
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v9, v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_9c

    .line 465
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v9, v9, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 463
    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    .line 468
    :cond_9f
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 103
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 111
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    if-eqz v1, :cond_10

    return-object v5

    .line 113
    :cond_10
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    .line 114
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->setDownTime(J)V

    .line 115
    const-string/jumbo v1, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "begin to move, x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    .local v0, "keep":I
    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendSwipe(III)V

    .line 152
    const-string/jumbo v1, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "move up, x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v5
.end method

.method getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "filepath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 422
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_16
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v5, "imagefile":Ljava/io/File;
    const/4 v4, 0x0

    .line 424
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    .end local v4    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 425
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_28} :catch_2e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_28} :catch_29

    .line 433
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "imagefile":Ljava/io/File;
    :goto_28
    return-object v0

    .line 429
    :catch_29
    move-exception v2

    .line 430
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 427
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2e
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_28
.end method

.method protected onCancelled()V
    .registers 1

    .prologue
    .line 259
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 223
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6a

    .line 225
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 226
    .local v1, "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v2, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_49

    .line 227
    const-string/jumbo v2, "Longshot.MoveTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " info.mBitmap.save:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    .line 224
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 230
    :cond_49
    const-string/jumbo v2, "Longshot.MoveTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " info.mBitmap.isRecycled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 235
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    :cond_6a
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    if-eqz v2, :cond_73

    .line 236
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->onMoveFinished()V

    .line 238
    :cond_73
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    monitor-enter v3

    .line 239
    const/4 v2, 0x0

    :try_start_77
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 240
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_80
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_98

    .line 242
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 243
    .restart local v1    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v2, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 246
    .end local v1    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    :cond_98
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a1

    .line 247
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    :cond_a1
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_aa

    .line 250
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_aa
    .catchall {:try_start_77 .. :try_end_aa} :catchall_ac

    :cond_aa
    monitor-exit v3

    .line 253
    return-void

    .line 238
    .end local v0    # "i":I
    :catchall_ac
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .registers 4
    .param p1, "movenext"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    monitor-enter v0

    .line 296
    :try_start_3
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 298
    return-void

    .line 295
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
