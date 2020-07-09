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
.field private static final M_CHECK_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "Longshot.MoveTask"

.field private static overscrollCheckPoint:I


# instance fields
.field inputSource:I

.field private mCanRunTask:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenPart:Landroid/graphics/Bitmap;

.field private final mDisplayHeight:I

.field private mHandler:Landroid/os/Handler;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mLastScreenPart:Landroid/graphics/Bitmap;

.field private mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

.field private mMoveDuration:I

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

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/16 v0, 0xa

    sput v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->overscrollCheckPoint:I

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->M_CHECK_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;Lcom/oneplus/screenshot/longshot/util/MovePoint;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;
    .param p3, "point"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;
    .param p4, "windowToken"    # Landroid/os/IBinder;
    .param p5, "displayHeight"    # I

    .line 80
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 40
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 41
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 43
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 44
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mWindowToken:Landroid/os/IBinder;

    .line 56
    const/16 v0, 0x190

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMoveDuration:I

    .line 58
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$1;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 239
    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    .line 81
    iput-object p4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mWindowToken:Landroid/os/IBinder;

    .line 83
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 85
    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 86
    iput p5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mDisplayHeight:I

    .line 88
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getMoveDurationValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMoveDuration:I

    .line 89
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 32
    sget-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->M_CHECK_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/task/MoveTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;

    .line 32
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/task/MoveTask;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/task/MoveTask;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScrollInternal(I)V

    return-void
.end method

.method private checkCanScroll(I)V
    .locals 2
    .param p1, "count"    # I

    .line 139
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method

.method private checkCanScrollInternal(I)V
    .locals 7
    .param p1, "count"    # I

    .line 144
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 145
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const-string v1, "Longshot.MoveTask"

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "mLastScreenPart is already recycled, don\'t compare"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4

    .line 151
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 153
    .local v0, "compare":Z
    if-eqz v0, :cond_1

    .line 154
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

    .line 155
    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 157
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
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

    .line 159
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenPart_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_1
    iput v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 163
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 166
    .local v2, "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    .end local v2    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 172
    .end local v0    # "compare":Z
    :cond_3
    :goto_1
    nop

    .line 178
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 179
    return-void

    .line 173
    :cond_4
    iput-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 174
    return-void
.end method

.method private compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compareBitmap"    # Landroid/graphics/Bitmap;

    .line 434
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    .line 435
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final getAlpha(FFF)F
    .locals 7
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    .line 353
    move v0, p0

    .line 354
    .local v0, "p0":F
    sub-float v1, p1, p0

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    .line 355
    .local v1, "p1":F
    move v2, p1

    .line 356
    .local v2, "p2":F
    move v3, p2

    .line 358
    .local v3, "t":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v3

    sub-float v6, v4, v3

    mul-float/2addr v5, v6

    mul-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v3

    sub-float/2addr v4, v3

    mul-float/2addr v6, v4

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    mul-float v4, v3, v3

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    return v5
.end method

.method private static final getNextY(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    .line 349
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private getPartScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mDisplayHeight:I

    invoke-static {v1}, Lcom/oneplus/screenshot/util/Utils;->getPartScreenshotTop(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mDisplayHeight:I

    invoke-static {v2}, Lcom/oneplus/screenshot/util/Utils;->getPartScreenshotBottom(I)I

    move-result v2

    const/16 v3, 0x438

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x12c

    invoke-static {v0, v3, v1, v4}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static final getSource(II)I
    .locals 1
    .param p0, "inputSource"    # I
    .param p1, "defaultSource"    # I

    .line 242
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private gettraceBitmaps()[Ljava/lang/String;
    .locals 2

    .line 372
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getMoveTraceBitmap()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 374
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "traceList":[Ljava/lang/String;
    return-object v1

    .line 377
    .end local v1    # "traceList":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 20
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "when"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F

    .line 328
    const/high16 v1, 0x3f800000    # 1.0f

    .line 329
    .local v1, "DEFAULT_SIZE":F
    const/4 v2, 0x0

    .line 330
    .local v2, "DEFAULT_META_STATE":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 331
    .local v3, "DEFAULT_PRECISION_X":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 332
    .local v4, "DEFAULT_PRECISION_Y":F
    const/4 v5, 0x0

    .line 333
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

    .line 336
    .local v6, "event":Landroid/view/MotionEvent;
    const/high16 v0, 0x10000000

    or-int v0, p1, v0

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 339
    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "ex":Ljava/lang/RuntimeException;
    sput-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    goto :goto_1

    .line 341
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 342
    .local v0, "ex":Ljava/lang/SecurityException;
    sput-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    .line 345
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 346
    :goto_1
    return-void
.end method

.method private sendSwipe(III)V
    .locals 31
    .param p1, "inputSource"    # I
    .param p2, "duration"    # I
    .param p3, "keep"    # I

    .line 246
    move-object/from16 v8, p0

    const/16 v0, 0x1002

    move/from16 v1, p1

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getSource(II)I

    move-result v9

    .line 247
    .end local p1    # "inputSource":I
    .local v9, "inputSource":I
    if-gez p2, :cond_0

    .line 248
    const/16 v0, 0x12c

    move v10, v0

    .end local p2    # "duration":I
    .local v0, "duration":I
    goto :goto_0

    .line 247
    .end local v0    # "duration":I
    .restart local p2    # "duration":I
    :cond_0
    move/from16 v10, p2

    .line 250
    .end local p2    # "duration":I
    .local v10, "duration":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 251
    .local v11, "now":J
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v13, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    .line 252
    .local v13, "x":I
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v14, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    .line 255
    .local v14, "y1":I
    const/4 v2, 0x0

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 257
    move-wide v15, v11

    .line 258
    .local v15, "startTime":J
    int-to-long v0, v10

    add-long v17, v15, v0

    .line 259
    .local v17, "endTime":J
    const/4 v0, 0x0

    .line 261
    .local v0, "checkCount":I
    iget-object v1, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v7, v1, Landroid/graphics/Point;->y:I

    .line 262
    .local v7, "y2":I
    const/4 v1, 0x0

    move v6, v0

    move v5, v1

    .line 264
    .end local v0    # "checkCount":I
    .local v5, "moveCount":I
    .local v6, "checkCount":I
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 266
    sub-long v3, v11, v15

    .line 267
    .local v3, "elapsedTime":J
    long-to-float v0, v3

    int-to-float v1, v10

    div-float v2, v0, v1

    .line 268
    .local v2, "elapsedTimePercent":F
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    int-to-float v1, v14

    move-wide/from16 p1, v3

    .end local v3    # "elapsedTime":J
    .local p1, "elapsedTime":J
    int-to-float v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v19, v6

    .end local v6    # "checkCount":I
    .local v19, "checkCount":I
    const/4 v6, 0x0

    move/from16 v20, v10

    .end local v10    # "duration":I
    .local v20, "duration":I
    invoke-static {v6, v4, v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getAlpha(FFF)F

    move-result v10

    invoke-static {v1, v3, v10}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getNextY(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v13, v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    .line 270
    cmp-long v0, v11, v17

    const-string v10, "Longshot.MoveTask"

    if-gtz v0, :cond_7

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->canMove()Z

    move-result v0

    if-nez v0, :cond_1

    move-wide/from16 v27, p1

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move v12, v2

    move v11, v7

    move/from16 v7, v19

    goto/16 :goto_5

    .line 292
    :cond_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isSpecialScrollActivity:Z

    const/high16 v21, 0x42c80000    # 100.0f

    if-eqz v0, :cond_3

    .line 294
    mul-float v0, v2, v21

    int-to-float v1, v5

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 295
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v22

    int-to-float v1, v13

    int-to-float v0, v14

    int-to-float v3, v7

    .line 296
    invoke-static {v6, v4, v2}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getAlpha(FFF)F

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getNextY(FFF)F

    move-result v6

    const/high16 v25, 0x3f800000    # 1.0f

    .line 295
    move-object/from16 v0, p0

    move/from16 v26, v1

    move v1, v9

    move v3, v2

    const/4 v2, 0x2

    .end local v2    # "elapsedTimePercent":F
    .local v3, "elapsedTimePercent":F
    move-wide/from16 v27, p1

    move/from16 v29, v3

    .end local v3    # "elapsedTimePercent":F
    .end local p1    # "elapsedTime":J
    .local v27, "elapsedTime":J
    .local v29, "elapsedTimePercent":F
    move-wide/from16 v3, v22

    move/from16 v22, v5

    .end local v5    # "moveCount":I
    .local v22, "moveCount":I
    move/from16 v5, v26

    move/from16 v30, v19

    .end local v19    # "checkCount":I
    .local v30, "checkCount":I
    move-wide/from16 p1, v11

    move v11, v7

    .end local v7    # "y2":I
    .local v11, "y2":I
    .local p1, "now":J
    move/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 297
    add-int/lit8 v5, v22, 0x1

    move/from16 v22, v5

    move/from16 v12, v29

    .end local v22    # "moveCount":I
    .restart local v5    # "moveCount":I
    goto :goto_2

    .line 294
    .end local v27    # "elapsedTime":J
    .end local v29    # "elapsedTimePercent":F
    .end local v30    # "checkCount":I
    .restart local v2    # "elapsedTimePercent":F
    .restart local v7    # "y2":I
    .local v11, "now":J
    .restart local v19    # "checkCount":I
    .local p1, "elapsedTime":J
    :cond_2
    move-wide/from16 v27, p1

    move/from16 v29, v2

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move/from16 v30, v19

    move v11, v7

    .end local v2    # "elapsedTimePercent":F
    .end local v5    # "moveCount":I
    .end local v7    # "y2":I
    .end local v19    # "checkCount":I
    .local v11, "y2":I
    .restart local v22    # "moveCount":I
    .restart local v27    # "elapsedTime":J
    .restart local v29    # "elapsedTimePercent":F
    .restart local v30    # "checkCount":I
    .local p1, "now":J
    move/from16 v12, v29

    goto :goto_2

    .line 301
    .end local v22    # "moveCount":I
    .end local v27    # "elapsedTime":J
    .end local v29    # "elapsedTimePercent":F
    .end local v30    # "checkCount":I
    .restart local v2    # "elapsedTimePercent":F
    .restart local v5    # "moveCount":I
    .restart local v7    # "y2":I
    .local v11, "now":J
    .restart local v19    # "checkCount":I
    .local p1, "elapsedTime":J
    :cond_3
    move-wide/from16 v27, p1

    move/from16 v29, v2

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move/from16 v30, v19

    move v11, v7

    .end local v2    # "elapsedTimePercent":F
    .end local v5    # "moveCount":I
    .end local v7    # "y2":I
    .end local v19    # "checkCount":I
    .local v11, "y2":I
    .restart local v22    # "moveCount":I
    .restart local v27    # "elapsedTime":J
    .restart local v29    # "elapsedTimePercent":F
    .restart local v30    # "checkCount":I
    .local p1, "now":J
    const/4 v2, 0x2

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v23

    int-to-float v5, v13

    int-to-float v0, v14

    int-to-float v1, v11

    .line 302
    move/from16 v12, v29

    .end local v29    # "elapsedTimePercent":F
    .local v12, "elapsedTimePercent":F
    invoke-static {v6, v4, v12}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getAlpha(FFF)F

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getNextY(FFF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 301
    move-object/from16 v0, p0

    move v1, v9

    move-wide/from16 v3, v23

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 310
    :goto_2
    mul-float v2, v12, v21

    sget v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->overscrollCheckPoint:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    move/from16 v7, v30

    .end local v30    # "checkCount":I
    .local v7, "checkCount":I
    int-to-float v0, v7

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 312
    invoke-direct {v8, v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->checkCanScroll(I)V

    .line 313
    add-int/lit8 v6, v7, 0x1

    move/from16 v19, v6

    .end local v7    # "checkCount":I
    .restart local v6    # "checkCount":I
    goto :goto_3

    .line 310
    .end local v6    # "checkCount":I
    .restart local v7    # "checkCount":I
    :cond_4
    move/from16 v19, v7

    .line 317
    .end local v7    # "checkCount":I
    .restart local v19    # "checkCount":I
    :goto_3
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    if-nez v0, :cond_5

    goto :goto_4

    .line 324
    .end local v12    # "elapsedTimePercent":F
    .end local v27    # "elapsedTime":J
    :cond_5
    move v7, v11

    move/from16 v6, v19

    move/from16 v10, v20

    move/from16 v5, v22

    move-wide/from16 v11, p1

    goto/16 :goto_1

    .line 318
    .restart local v12    # "elapsedTimePercent":F
    .restart local v27    # "elapsedTime":J
    :cond_6
    :goto_4
    const/4 v2, 0x3

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 320
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->setOverScroll(Z)V

    .line 321
    const-string v0, "Overscroll"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 270
    .end local v12    # "elapsedTimePercent":F
    .end local v22    # "moveCount":I
    .end local v27    # "elapsedTime":J
    .restart local v2    # "elapsedTimePercent":F
    .restart local v5    # "moveCount":I
    .local v7, "y2":I
    .local v11, "now":J
    .local p1, "elapsedTime":J
    :cond_7
    move-wide/from16 v27, p1

    move/from16 v22, v5

    move-wide/from16 p1, v11

    move v12, v2

    move v11, v7

    move/from16 v7, v19

    .line 271
    .end local v2    # "elapsedTimePercent":F
    .end local v5    # "moveCount":I
    .end local v19    # "checkCount":I
    .local v7, "checkCount":I
    .local v11, "y2":I
    .restart local v12    # "elapsedTimePercent":F
    .restart local v22    # "moveCount":I
    .restart local v27    # "elapsedTime":J
    .local p1, "now":J
    :goto_5
    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v13, v11}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->set(II)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 274
    .local v23, "startTime1":J
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_6
    move/from16 v5, p3

    if-ge v6, v5, :cond_8

    .line 275
    const/4 v2, 0x2

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v1, v13

    int-to-float v0, v11

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v25, v1

    move v1, v9

    move/from16 v5, v25

    move/from16 v25, v6

    .end local v6    # "i":I
    .local v25, "i":I
    move/from16 v6, v21

    move/from16 v21, v7

    .end local v7    # "checkCount":I
    .local v21, "checkCount":I
    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 274
    add-int/lit8 v6, v25, 0x1

    move/from16 v7, v21

    .end local v25    # "i":I
    .restart local v6    # "i":I
    goto :goto_6

    .end local v21    # "checkCount":I
    .restart local v7    # "checkCount":I
    :cond_8
    move/from16 v25, v6

    move/from16 v21, v7

    .line 281
    .end local v6    # "i":I
    .end local v7    # "checkCount":I
    .restart local v21    # "checkCount":I
    const/4 v0, 0x0

    iput v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 284
    const/4 v2, 0x1

    iget-object v0, v8, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v11

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 287
    .local v0, "endTime1":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move end cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, v23

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method private storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "fileInfo"    # Lcom/oneplus/screenshot/util/ImageInfo;

    .line 134
    const-string v0, "Longshot.MoveTask"

    const-string v1, "storeImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 136
    return-void
.end method


# virtual methods
.method public checkTraceBitmap()V
    .locals 10

    .line 400
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->gettraceBitmaps()[Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "traceFiles":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, "traceBitmaps":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;>;"
    if-eqz v0, :cond_1

    .line 403
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 404
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 405
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 406
    new-instance v4, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, p0, v3, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 411
    .local v2, "targetBitmap":Landroid/graphics/Bitmap;
    const-string v3, ""

    .line 412
    .local v3, "targetFileName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 413
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 414
    .local v5, "compareBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v6, v6, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "compareFileName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 416
    move-object v2, v5

    .line 417
    move-object v3, v6

    goto :goto_2

    .line 419
    :cond_2
    invoke-direct {p0, v2, v5}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v7

    .line 420
    .local v7, "result":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " compare targetFileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " compareFileName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Longshot.MoveTask"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move-object v2, v5

    .line 412
    .end local v5    # "compareBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "compareFileName":Ljava/lang/String;
    .end local v7    # "result":Z
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 426
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 427
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 428
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v5, v5, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 431
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 96
    const-string v0, "Longshot.MoveTask"

    const-string v1, "doInBackground start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 99
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    .line 107
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 108
    return-object v2

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->reset()V

    .line 112
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/oneplus/screenshot/longshot/util/MovePoint;->setDownTime(J)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to move, x="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , y="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keep="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, p1, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    .local v1, "keep":I
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMoveDuration()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMovekeep()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v1, v4

    .line 117
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMoveDuration()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMoveTaskMoveDuration()I

    move-result v4

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMoveDuration:I

    .line 118
    .local v4, "duration":I
    :goto_1
    iget v5, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->inputSource:I

    invoke-direct {p0, v5, v4, v1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->sendSwipe(III)V

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "move up, x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v6, v6, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lcom/oneplus/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v6}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " duration:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keep:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-object v2
.end method

.method getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 385
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v2, "imagefile":Ljava/io/File;
    const/4 v3, 0x0

    .line 387
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 388
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 389
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "imagefile":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 392
    :catch_0
    move-exception v2

    .line 393
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 390
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 391
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 394
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 396
    :goto_1
    return-object v1
.end method

.method protected onCancelled()V
    .locals 0

    .line 219
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .line 183
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 186
    .local v1, "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v2, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " info.mBitmap.save:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Longshot.MoveTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0, v2, v3}, Lcom/oneplus/screenshot/longshot/task/MoveTask;->storeImage(Landroid/graphics/Bitmap;Lcom/oneplus/screenshot/util/ImageInfo;)V

    goto :goto_1

    .line 190
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " info.mBitmap.isRecycled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Longshot.MoveTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mListener:Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;

    if-eqz v0, :cond_2

    .line 196
    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/task/MoveTask$OnMoveListener;->onMoveFinished()V

    .line 198
    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->M_CHECK_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 200
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    nop

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 203
    .local v2, "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    .end local v2    # "info":Lcom/oneplus/screenshot/longshot/task/MoveTask$ScreenInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 210
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    :cond_5
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "movenext"    # Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 236
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/MoveTask;->mMovePoint:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 237
    return-void
.end method
