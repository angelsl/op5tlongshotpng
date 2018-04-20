.class public Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.super Ljava/lang/Object;
.source "LongshotMode.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lcom/oneplus/screenshot/longshot/state/LongshotContext;
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;,
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;,
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;
    }
.end annotation


# static fields
.field private static final DIM_AMOUNT:F = 0.0f

.field private static final MSG_HANDLE_REJECT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Longshot.LongshotMode"

.field private static sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# instance fields
.field private mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

.field private mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

.field private mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field private mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mFinisher:Ljava/lang/Runnable;

.field private mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field private mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

.field private mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field private mIndex:I

.field private mIsFirst:Z

.field private mIsLast:Z

.field private mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field private mMoveDistance:I

.field private mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field private mNavigationbarHeight:I

.field private mOverScroll:Z

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

.field private mScroll:Z

.field private mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

.field private mStatusbarHeight:I

.field mTargetViewTop:I

.field private mWindowFrame:Landroid/graphics/Rect;

.field private onUnscrollable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    .line 68
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    .line 70
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 73
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 74
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 75
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 76
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 77
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 78
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 79
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 80
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 81
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 82
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    .line 83
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 84
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 85
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 86
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 87
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 88
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveDistance:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 90
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 91
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 92
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 656
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    .line 694
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    .line 116
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    .line 117
    const-string/jumbo v0, "Longshot.LongshotMode"

    const-string/jumbo v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initDialog(Landroid/content/Context;)V

    .line 119
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initSharedPrefs()V

    .line 120
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initConfigs()V

    .line 121
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initParams()V

    .line 122
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initStates()V

    .line 123
    return-void
.end method

.method private getBottom(I)I
    .registers 4
    .param p1, "total"    # I

    .prologue
    .line 585
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_d

    .line 586
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 588
    :cond_d
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1a

    .line 589
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 592
    :cond_1a
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_HIGHER_LIST:Z

    if-eqz v0, :cond_25

    .line 593
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_HIGHER_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 596
    :cond_25
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-nez v0, :cond_b

    .line 130
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 132
    :cond_b
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-object v0
.end method

.method private getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I
    .registers 7
    .param p1, "total"    # I
    .param p2, "height"    # Lcom/oneplus/screenshot/longshot/util/Configs;
    .param p3, "percent"    # Lcom/oneplus/screenshot/longshot/util/Configs;

    .prologue
    .line 564
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v1

    .line 565
    .local v1, "value":I
    sub-int v0, p1, v1

    .line 566
    .local v0, "offset":I
    invoke-static {v1, p3}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method private getTop(I)I
    .registers 4
    .param p1, "total"    # I

    .prologue
    .line 570
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_d

    .line 571
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 573
    :cond_d
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1a

    .line 574
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 577
    :cond_1a
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v0

    if-nez v0, :cond_27

    .line 578
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_BIG_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 581
    :cond_27
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method private hideSoftInput()V
    .registers 5

    .prologue
    .line 532
    :try_start_0
    const-string/jumbo v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 531
    invoke-static {v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 533
    .local v1, "iimm":Lcom/android/internal/view/IInputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 538
    .end local v1    # "iimm":Lcom/android/internal/view/IInputMethodManager;
    :goto_10
    return-void

    .line 534
    :catch_11
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Longshot.LongshotMode"

    const-string/jumbo v3, "hide ime failed, "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private initConfigs()V
    .registers 2

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->load(Landroid/content/Context;)V

    .line 524
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->load(Landroid/content/Context;)V

    .line 525
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    .line 526
    return-void
.end method

.method private initDialog(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 448
    new-instance v7, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-direct {v7, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 449
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 450
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 453
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 454
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 455
    .local v1, "display":Landroid/view/Display;
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 456
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 457
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 461
    .local v2, "res":Landroid/content/res/Resources;
    const/high16 v7, 0x7f070000

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 462
    .local v3, "statusbarHeight":I
    sget-object v7, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 463
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x61

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 464
    .local v4, "windowFullScreen":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    if-eqz v4, :cond_47

    move v3, v6

    .end local v3    # "statusbarHeight":I
    :cond_47
    iput v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 469
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v6, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V

    .line 470
    return-void
.end method

.method private initNavigationBar(Z)V
    .registers 7
    .param p1, "navBarVisible"    # Z

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 474
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 475
    .local v0, "navigationbarHeight":I
    if-eqz p1, :cond_30

    .end local v0    # "navigationbarHeight":I
    :goto_11
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 477
    const-string/jumbo v2, "Longshot.LongshotMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NavigationbarHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void

    .line 475
    .restart local v0    # "navigationbarHeight":I
    :cond_30
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private initParams()V
    .registers 8

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 483
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    sub-int v3, v5, v6

    .line 485
    .local v3, "total":I
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x1

    div-int/lit8 v4, v5, 0x4

    .line 488
    .local v4, "x":I
    new-instance v2, Landroid/graphics/Point;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getTop(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 489
    .local v2, "top":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 491
    .local v0, "bottom":Landroid/graphics/Point;
    new-instance v5, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DISTANCE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    invoke-direct {v5, p0, v6, v0, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;ILandroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 492
    return-void
.end method

.method private initSharedPrefs()V
    .registers 3

    .prologue
    .line 519
    new-instance v0, Lcom/oneplus/screenshot/util/SharedPrefs;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/util/SharedPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 520
    return-void
.end method

.method private initStates()V
    .registers 4

    .prologue
    .line 495
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/IdleState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/IdleState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 496
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 497
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/MainState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 498
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/SaveState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 499
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 500
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 501
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 502
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 503
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 504
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 505
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 506
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOneState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 507
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MoveNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 508
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 509
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 510
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 511
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 512
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 513
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 514
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOneState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 515
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UndoState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UndoState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 516
    return-void
.end method

.method private isFullHeight(Landroid/graphics/Rect;I)Z
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 550
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p2, :cond_d

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    sub-int v2, p2, v2

    if-ne v1, v2, :cond_12

    :cond_d
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private isFullScreenWindow(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 554
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullWidth(Landroid/graphics/Rect;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    .line 555
    return v1

    .line 557
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullHeight(Landroid/graphics/Rect;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_27

    .line 558
    return v1

    .line 560
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private isFullWidth(Landroid/graphics/Rect;I)Z
    .registers 4
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "width"    # I

    .prologue
    .line 546
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isUnsupported()Z
    .registers 2

    .prologue
    .line 542
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    return v0
.end method

.method private notifyToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 603
    return-void
.end method

.method private onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 418
    const-string/jumbo v0, "Longshot.LongshotMode"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 421
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 422
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 423
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 424
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;->clear()V

    .line 425
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->clear()V

    .line 427
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    if-eqz v0, :cond_36

    .line 428
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    .line 429
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 431
    :cond_36
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    if-eqz v0, :cond_41

    .line 432
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    .line 433
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 435
    :cond_41
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_4c

    .line 436
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 437
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 440
    :cond_4c
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v0, v3, v1, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 441
    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    .line 443
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 445
    return-void
.end method

.method public static recycle()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-eqz v0, :cond_10

    .line 137
    const-string/jumbo v0, "Longshot.LongshotMode"

    const-string/jumbo v1, "LongshotMode recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sput-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 140
    :cond_10
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    return v0
.end method

.method public getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    return-object v0
.end method

.method public getNavBarHeight()I
    .registers 2

    .prologue
    .line 306
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    return v0
.end method

.method public getRealDisplayHeight()I
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    return-object v0
.end method

.method public getScrollViewTop()I
    .registers 2

    .prologue
    .line 676
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_BIGTOP_LIST:Z

    if-eqz v0, :cond_b

    .line 677
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_BIG_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 681
    :cond_b
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LARGETOP_LIST:Z

    if-eqz v0, :cond_16

    .line 682
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_LARGE_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 685
    :cond_16
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    return v0
.end method

.method public getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    return-object v0
.end method

.method public handleReject(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 395
    const-string/jumbo v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 398
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 400
    :cond_23
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 401
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->hide()V

    .line 184
    return-void
.end method

.method public isFirst()Z
    .registers 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    return v0
.end method

.method public isHandleState()Z
    .registers 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 411
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    if-nez v1, :cond_f

    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsViewState;

    xor-int/lit8 v1, v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public isLast()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    return v0
.end method

.method public isMoveState()Z
    .registers 3

    .prologue
    .line 405
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 406
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    return v1
.end method

.method public isOverScroll()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    return v0
.end method

.method public isScroll()Z
    .registers 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    return v0
.end method

.method public notifyMove()V
    .registers 3

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotCallback;->notifyMove()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 168
    :goto_5
    return-void

    .line 165
    :catch_6
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 148
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 149
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 153
    :cond_19
    return-void
.end method

.method public onDismiss()V
    .registers 3

    .prologue
    .line 351
    const-string/jumbo v0, "Longshot.LongshotMode"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 354
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 355
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public onTouch()V
    .registers 3

    .prologue
    .line 359
    const-string/jumbo v0, "Longshot.LongshotMode"

    const-string/jumbo v1, "onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .line 366
    return-void
.end method

.method public onUnscrollableView()V
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    return-void
.end method

.method public reject(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 388
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 389
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 390
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    return-void
.end method

.method public setFirst(Z)V
    .registers 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 257
    return-void
.end method

.method public setLast(Z)V
    .registers 5
    .param p1, "isLast"    # Z

    .prologue
    .line 245
    const-string/jumbo v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 247
    return-void
.end method

.method public setOverScroll(Z)V
    .registers 5
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 268
    const-string/jumbo v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOverScroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 275
    return-void
.end method

.method public setScroll(Z)V
    .registers 2
    .param p1, "isScroll"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 285
    return-void
.end method

.method public setScrollViewTop(I)V
    .registers 5
    .param p1, "top"    # I

    .prologue
    .line 658
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->isCustomizeMoveApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 659
    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    .line 660
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initParams()V

    .line 661
    const-string/jumbo v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setTargetViewTop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mTargetViewTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 663
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 664
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 665
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 666
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 667
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 668
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 669
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 670
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 672
    :cond_77
    return-void
.end method

.method public show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .registers 6
    .param p1, "titleRes"    # I
    .param p2, "layoutRes"    # I
    .param p3, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .prologue
    .line 188
    if-eqz p1, :cond_17

    .line 189
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(I)V

    .line 193
    :goto_7
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContent(I)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p3}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->show()V

    .line 196
    return-void

    .line 191
    :cond_17
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public start(Ljava/lang/Runnable;Lcom/oneplus/longshot/ILongScreenshotCallback;ZZ)V
    .registers 8
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    .line 371
    const-string/jumbo v1, "Longshot.LongshotMode"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 374
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 375
    invoke-direct {p0, p4}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initNavigationBar(Z)V

    .line 376
    new-instance v1, Lcom/oneplus/screenshot/longshot/task/GcThread;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/task/GcThread;-><init>()V

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/task/GcThread;->start()Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 377
    new-instance v1, Lcom/oneplus/screenshot/longshot/task/CheckThread;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->start()Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 378
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 379
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isUnsupported()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 380
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 382
    :cond_30
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 383
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 172
    const-string/jumbo v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 175
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->dismiss()V

    .line 179
    :goto_2c
    return-void

    .line 177
    :cond_2d
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    goto :goto_2c
.end method

.method public updateIndex(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 235
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 236
    return-void
.end method

.method public updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .registers 8
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-eq v2, p1, :cond_81

    .line 202
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 203
    .local v0, "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    const-string/jumbo v2, "Longshot.LongshotMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LongshotMode.updateState#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 206
    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v2, :cond_4a

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 208
    return-void

    .line 211
    :cond_4a
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v2, :cond_60

    .line 212
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 214
    return-void

    .line 215
    :cond_60
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v2, :cond_82

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 226
    :cond_72
    :goto_72
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v2, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 227
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 228
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v2, v0, p2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 229
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 231
    .end local v0    # "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    :cond_81
    return-void

    .line 217
    .restart local v0    # "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    :cond_82
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne v0, v2, :cond_9b

    .line 218
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 221
    .end local v1    # "text":Ljava/lang/String;
    :cond_9b
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v2, :cond_72

    .line 222
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->hideSoftInput()V

    goto :goto_72
.end method
