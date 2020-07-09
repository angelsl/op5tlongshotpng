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
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;,
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;,
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;
    }
.end annotation


# static fields
.field private static final DIM_AMOUNT:F = 0.0f

.field private static final MSG_HANDLE_REJECT:I = 0x3e8

.field private static final MSG_HANDLE_STOP:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "Longshot.LongshotMode"

.field public static final UNSUPPORT_REASON_COLOSE_SYSDIALOG:I = 0x7d0

.field public static final UNSUPPORT_REASON_RINGING:I = 0x3e8

.field private static sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# instance fields
.field aBoostParamVal:[I

.field private mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field private mBlockWindowGap:I

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

.field private mLeftBlockWindow:Landroid/view/View;

.field private mLeftBlockWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMoveDistance:I

.field private mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field private mMoveTracker:Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

.field private mNavigationbarHeight:I

.field private mOverScroll:Z

.field public mPerf:Landroid/util/BoostFramework;

.field private mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mRightBlockWindow:Landroid/view/View;

.field private mRightBlockWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

.field private mScroll:Z

.field private mScrollViewType:I

.field private mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

.field private mStatusbarHeight:I

.field mTargetViewTop:I

.field private mUnsupportReason:I

.field private mWindowFrame:Landroid/graphics/Rect;

.field private mWindowToken:Landroid/os/IBinder;

.field private onUnscrollable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->aBoostParamVal:[I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    .line 87
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    .line 90
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    .line 92
    new-instance v1, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 95
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 96
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 97
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 98
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 99
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 100
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 101
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 102
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 103
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 105
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 107
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    .line 108
    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 109
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 110
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 111
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 112
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 113
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveDistance:I

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 115
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 116
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 117
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 127
    const/16 v2, 0xa

    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBlockWindowGap:I

    .line 131
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScrollViewType:I

    .line 135
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPerf:Landroid/util/BoostFramework;

    .line 1004
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    .line 1055
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$2;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$2;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    .line 172
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    .line 173
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initPreview()V

    .line 178
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initDialog(Landroid/content/Context;)V

    .line 179
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initSharedPrefs()V

    .line 180
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initConfigs()V

    .line 181
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initParams()V

    .line 182
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initStates()V

    .line 184
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initBlockTouchWindow()V

    .line 186
    return-void

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0xffe
        0x40800100    # 4.000122f
        0xffe
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/state/LongshotMode;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->handleStop(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/state/LongshotMode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .param p1, "x1"    # Z

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->disableKeys(Z)V

    return-void
.end method

.method private blockWindowTouch(Z)V
    .locals 3
    .param p1, "block"    # Z

    .line 855
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 856
    return-void

    .line 859
    :cond_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 860
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz p1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mLeftBlockWindow:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mLeftBlockWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRightBlockWindow:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRightBlockWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 864
    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mLeftBlockWindow:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mLeftBlockWindow:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 866
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mLeftBlockWindow:Landroid/view/View;

    .line 868
    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRightBlockWindow:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRightBlockWindow:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 870
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRightBlockWindow:Landroid/view/View;

    .line 873
    :cond_3
    :goto_0
    return-void
.end method

.method private disableKeys(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .line 1154
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1155
    .local v0, "sbm":Landroid/app/StatusBarManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablekeys() fun called ,StatusBarManager is null?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Longshot.LongshotMode"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-nez v0, :cond_1

    .line 1157
    return-void

    .line 1159
    :cond_1
    if-eqz p1, :cond_2

    .line 1160
    const/high16 v1, 0x1600000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1

    .line 1165
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1167
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablekeys() fun called, keys disbaled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-void
.end method

.method private getBlockTouchWindowLayoutParams(III)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I

    .line 835
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    const v4, 0xd040828

    const/4 v5, -0x3

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 847
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 848
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 849
    const-string v1, "LongshotBlockTouchWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 850
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 851
    return-object v0
.end method

.method private getBottom(I)I
    .locals 2
    .param p1, "total"    # I

    .line 933
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsLowerList:Z

    if-eqz v0, :cond_0

    .line 934
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 936
    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsSmallList:Z

    if-eqz v0, :cond_1

    .line 937
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 940
    :cond_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsHigherList:Z

    if-eqz v0, :cond_2

    .line 941
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_HIGHER_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 944
    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 192
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 195
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-object v0
.end method

.method private getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I
    .locals 3
    .param p1, "total"    # I
    .param p2, "height"    # Lcom/oneplus/screenshot/longshot/util/Configs;
    .param p3, "percent"    # Lcom/oneplus/screenshot/longshot/util/Configs;

    .line 912
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    .line 913
    .local v0, "value":I
    sub-int v1, p1, v0

    .line 914
    .local v1, "offset":I
    invoke-static {v0, p3}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method private getTop(I)I
    .locals 2
    .param p1, "total"    # I

    .line 918
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsLowerList:Z

    if-eqz v0, :cond_0

    .line 919
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 921
    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsSmallList:Z

    if-eqz v0, :cond_1

    .line 922
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v0

    if-nez v0, :cond_2

    .line 926
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_BIG_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 929
    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method private handleStop(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 266
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/screenshot/longshot/util/Events;->getToastString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "stopToast":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStop reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stopToast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.LongshotMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->dismiss()V

    goto :goto_0

    .line 276
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 278
    :goto_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .line 879
    :try_start_0
    const-string v0, "input_method"

    .line 880
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 879
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 881
    .local v0, "iimm":Lcom/android/internal/view/IInputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    nop

    .end local v0    # "iimm":Lcom/android/internal/view/IInputMethodManager;
    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Longshot.LongshotMode"

    const-string v2, "hide ime failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 886
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private initBlockTouchWindow()V
    .locals 4

    .line 824
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mLeftBlockWindow:Landroid/view/View;

    .line 825
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBlockWindowGap:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getBlockTouchWindowLayoutParams(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mLeftBlockWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 828
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRightBlockWindow:Landroid/view/View;

    .line 829
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v1, v1, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBlockWindowGap:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iget v2, v2, Lcom/oneplus/screenshot/longshot/util/MovePoint;->x:I

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBlockWindowGap:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getBlockTouchWindowLayoutParams(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRightBlockWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 832
    return-void
.end method

.method private initConfigs()V
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->load(Landroid/content/Context;)V

    .line 803
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->load(Landroid/content/Context;)V

    .line 804
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    .line 805
    return-void
.end method

.method private initDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 718
    new-instance v0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-direct {v0, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 719
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 720
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 723
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 724
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 725
    .local v1, "display":Landroid/view/Display;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 726
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 727
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 730
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 731
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 732
    .local v3, "statusbarHeight":I
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 733
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/16 v6, 0x61

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 734
    .local v6, "windowFullScreen":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 736
    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 739
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v5, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V

    .line 740
    return-void
.end method

.method private initNavigationBar(Z)V
    .locals 4
    .param p1, "navBarVisible"    # Z

    .line 743
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 744
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 745
    .local v1, "navigationbarHeight":I
    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NavigationbarHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Longshot.LongshotMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method private initParams()V
    .locals 7

    .line 754
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 755
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    .line 757
    .local v1, "total":I
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x6

    .line 758
    .local v2, "x":I
    sget v3, Lcom/oneplus/screenshot/longshot/util/Configs;->sTouchXPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 759
    sget v2, Lcom/oneplus/screenshot/longshot/util/Configs;->sTouchXPosition:I

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xTouchPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Longshot.LongshotMode"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getTop(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 765
    .local v3, "top":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 767
    .local v4, "bottom":Landroid/graphics/Point;
    new-instance v5, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DISTANCE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    invoke-direct {v5, p0, v6, v4, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;ILandroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 768
    return-void
.end method

.method private initPreview()V
    .locals 2

    .line 711
    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    .line 712
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveTracker:Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

    .line 713
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    .line 714
    return-void
.end method

.method private initSharedPrefs()V
    .locals 2

    .line 798
    new-instance v0, Lcom/oneplus/screenshot/util/SharedPrefs;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/util/SharedPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 799
    return-void
.end method

.method private initStates()V
    .locals 3

    .line 771
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/IdleState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/IdleState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 772
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 773
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/MainState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 774
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/SaveState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 775
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 776
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 777
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 778
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 779
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 780
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 781
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 782
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOneState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 783
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MoveNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 784
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 785
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 786
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 787
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 788
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 789
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 790
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOneState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 791
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UndoState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UndoState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 793
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->WAITTING_PREVIEW:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/WaittingPreviewState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 795
    return-void
.end method

.method private isFullHeight(Landroid/graphics/Rect;I)Z
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "height"    # I

    .line 898
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    sub-int v1, p2, v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFullScreenWindow(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 902
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullWidth(Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    return v1

    .line 905
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullHeight(Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    return v1

    .line 908
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isFullWidth(Landroid/graphics/Rect;I)Z
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "width"    # I

    .line 894
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTopActivityDisplayCompat()Z
    .locals 5

    .line 809
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    .line 810
    .local v0, "topactivity":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/screenshot/util/Utils;->getUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 811
    .local v1, "uid":I
    const/4 v2, 0x0

    .line 813
    .local v2, "displayCompat":Z
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v3, v0, v1}, Lcom/oneplus/longshot/ILongScreenshotCallback;->isTopActivityDisplayCompat(Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 816
    goto :goto_0

    .line 814
    :catch_0
    move-exception v3

    .line 815
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 817
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isTopActivityDisplayCompat topactivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " displayCompat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Longshot.LongshotMode"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return v2
.end method

.method private isUnsupported()Z
    .locals 1

    .line 890
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    return v0
.end method

.method private notifyToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 950
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 951
    return-void
.end method

.method private onDestroy()V
    .locals 3

    .line 664
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v1, "disablekeys() at onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->disableKeys(Z)V

    .line 671
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->blockWindowTouch(Z)V

    .line 673
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 674
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 675
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 676
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 677
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;->clear()V

    .line 678
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->clear()V

    .line 680
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 683
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 684
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    .line 685
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    if-eqz v1, :cond_1

    .line 688
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    .line 689
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 692
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 693
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 698
    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    if-eqz v1, :cond_3

    .line 699
    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->onStop()V

    .line 702
    :cond_3
    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    .line 704
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 706
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->onStop()V

    .line 707
    return-void
.end method

.method public static recycle()V
    .locals 2

    .line 213
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "LongshotMode recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public getBarCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    return v0
.end method

.method public getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    return-object v0
.end method

.method public getLastMove()I
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveTracker:Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->getMove()I

    move-result v0

    return v0
.end method

.method public getNavBarHeight()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    return v0
.end method

.method public getPreviewCache()Landroid/graphics/Bitmap;
    .locals 4

    .line 561
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 562
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 563
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 564
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public getPreviewController()Lcom/oneplus/screenshot/longshot/preview/PreviewController;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    return-object v0
.end method

.method public getRealDisplayHeight()I
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    return-object v0
.end method

.method public getScrollViewTop()I
    .locals 1

    .line 1030
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsBigtopList:Z

    if-eqz v0, :cond_0

    .line 1031
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_BIG_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 1035
    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLargetopList:Z

    if-eqz v0, :cond_1

    .line 1036
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_LARGE_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 1041
    :cond_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isSpecialScrollActivity:Z

    if-eqz v0, :cond_2

    .line 1042
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->FIXED_BIG_TOP_OFFSET:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 1046
    :cond_2
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    return v0
.end method

.method public getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    return-object v0
.end method

.method public getStatusbarBarHeight()I
    .locals 1

    .line 505
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public handleReject(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 646
    return-void
.end method

.method public hide()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->hide()V

    .line 285
    return-void
.end method

.method public isFirst()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    return v0
.end method

.method public isHandleState()Z
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 656
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsViewState;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isLast()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    return v0
.end method

.method public isMoveState()Z
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 651
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    return v1
.end method

.method public isOverScroll()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    return v0
.end method

.method public isRecognizeScrollView()Z
    .locals 2

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecognizeScrollView getLastMove:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getLastMove()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getLastMove()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScroll()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    return v0
.end method

.method public notifyLongshotScrollChanged(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldx"    # I
    .param p4, "oldy"    # I

    .line 1068
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isForbidStitchByDistanceList:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isTopActivityDisplayCompatible:Z

    if-nez v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveTracker:Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->isStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveTracker:Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

    int-to-float v1, p4

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->start(FF)V

    goto :goto_0

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveTracker:Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

    int-to-float v1, p4

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->updateMovePoint(FF)V

    .line 1075
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyMove()V
    .locals 1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v0}, Lcom/oneplus/longshot/ILongScreenshotCallback;->notifyMove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyScrollViewSearchComplete(III)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "scrollViewType"    # I

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWindowLayerChange scrollViewType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iput p3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScrollViewType:I

    .line 1093
    return-void
.end method

.method public notifyWindowLayerChange(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyWindowLayerChange windowToken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowToken:Landroid/os/IBinder;

    .line 1080
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 228
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 234
    :cond_0
    return-void
.end method

.method public onDismiss(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDismiss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    if-eq v2, v1, :cond_0

    .line 577
    iput v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    .line 578
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 579
    return-void

    .line 580
    :cond_0
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_1

    .line 583
    iput v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    .line 584
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 585
    return-void

    .line 588
    :cond_1
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 589
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 590
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 238
    return-void
.end method

.method public onTouch()V
    .locals 2

    .line 595
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    .line 603
    return-void
.end method

.method public onUnscrollableView()V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1053
    return-void
.end method

.method public reject(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "reason"    # Ljava/lang/String;

    .line 630
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 631
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 632
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 633
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 634
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    return-void
.end method

.method public setFirst(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .line 453
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 454
    return-void
.end method

.method public setLast(Z)V
    .locals 2
    .param p1, "isLast"    # Z

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 444
    return-void
.end method

.method public setOverScroll(Z)V
    .locals 2
    .param p1, "isOverScroll"    # Z

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOverScroll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 474
    return-void
.end method

.method public setScroll(Z)V
    .locals 0
    .param p1, "isScroll"    # Z

    .line 483
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 484
    return-void
.end method

.method public setScrollViewTop(I)V
    .locals 2
    .param p1, "top"    # I

    .line 1007
    if-gez p1, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 1010
    return-void

    .line 1012
    :cond_0
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->isCustomizeMoveApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    .line 1014
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initParams()V

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setTargetViewTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTargetViewTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1017
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1018
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1019
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1020
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1021
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1022
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1023
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1024
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    .line 1026
    :cond_1
    return-void
.end method

.method public show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "layoutRes"    # I
    .param p3, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContent(I)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p3}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 296
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->show()V

    .line 297
    return-void
.end method

.method public start(Ljava/lang/Runnable;Lcom/oneplus/longshot/ILongScreenshotCallback;ZZ)V
    .locals 2
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .line 609
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 613
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 615
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isTopActivityDisplayCompat()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isTopActivityDisplayCompatible:Z

    .line 617
    invoke-direct {p0, p4}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initNavigationBar(Z)V

    .line 618
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/GcThread;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/task/GcThread;-><init>()V

    const-string v1, "GcThread"

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/GcThread;->start(Ljava/lang/String;)Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 619
    new-instance v0, Lcom/oneplus/screenshot/longshot/task/CheckThread;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    const-string v1, "Longshot.CheckThread"

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->start(Ljava/lang/String;)Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 620
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 621
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isUnsupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 624
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 625
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    .line 626
    return-void
.end method

.method public startBoost()V
    .locals 3

    .line 200
    const-string v0, "Longshot.LongshotMode"

    const-string v1, " startBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPerf:Landroid/util/BoostFramework;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    .line 207
    const/16 v1, 0xbb8

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->aBoostParamVal:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 209
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop(I)V

    .line 252
    return-void
.end method

.method public stop(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Configs.isLongshotRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.LongshotMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 262
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public updateIndex(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 430
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 431
    return-void
.end method

.method public updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 8
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 301
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-eq v0, p1, :cond_13

    .line 302
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 303
    .local v0, "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.LongshotMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LongshotMode.updateState#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 307
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 309
    return-void

    .line 310
    :cond_0
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_3

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unsupport reason:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0047

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 324
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 325
    return-void

    .line 326
    :cond_3
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 331
    invoke-direct {p0, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->blockWindowTouch(Z)V

    .line 334
    const-string v1, "disablekeys() at LongshotState.SAVE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->disableKeys(Z)V

    goto/16 :goto_5

    .line 337
    :cond_4
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v4, 0x1

    if-ne v0, v1, :cond_9

    .line 338
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->onStart()V

    .line 344
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 345
    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    if-lez v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v3

    .line 346
    .local v2, "statusbarshow":Z
    :goto_1
    iget v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    if-lez v5, :cond_6

    move v5, v4

    goto :goto_2

    :cond_6
    move v5, v3

    .line 347
    .local v5, "navigationbarshow":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 348
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v7, v3}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->setStatusbar(Landroid/graphics/Bitmap;)V

    .line 352
    :cond_7
    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->isNavigationBarVisibleInPreview:Z

    if-eqz v3, :cond_8

    .line 353
    if-eqz v5, :cond_8

    .line 354
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mBarCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v6, v4}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->setNavibar(Landroid/graphics/Bitmap;)V

    .line 362
    .end local v2    # "statusbarshow":Z
    .end local v5    # "navigationbarshow":Z
    :cond_8
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;

    invoke-direct {v3, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    .end local v1    # "text":Ljava/lang/String;
    goto/16 :goto_5

    :cond_9
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_a

    .line 372
    invoke-direct {p0, v4}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->blockWindowTouch(Z)V

    .line 374
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->hideSoftInput()V

    goto/16 :goto_5

    .line 375
    :cond_a
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_b

    .line 379
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->startBoost()V

    .line 381
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveTracker:Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveTracker;->reset()V

    goto :goto_5

    .line 382
    :cond_b
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->WAITTING_PREVIEW:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_c

    .line 385
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->startBoost()V

    .line 387
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->onBackgroundScrollcomplete()V

    goto :goto_5

    .line 388
    :cond_c
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne v0, v1, :cond_10

    .line 391
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->onStop()V

    .line 395
    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    if-lez v1, :cond_d

    move v1, v4

    goto :goto_3

    :cond_d
    move v1, v3

    .line 396
    .local v1, "statusbarshow":Z
    :goto_3
    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    if-lez v2, :cond_e

    move v3, v4

    :cond_e
    move v2, v3

    .line 397
    .local v2, "navigationbarshow":Z
    const/4 v3, 0x0

    if-eqz v1, :cond_f

    .line 398
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v4, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->setStatusbar(Landroid/graphics/Bitmap;)V

    .line 400
    :cond_f
    if-eqz v2, :cond_12

    .line 401
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    invoke-virtual {v4, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->setNavibar(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 404
    .end local v1    # "statusbarshow":Z
    .end local v2    # "navigationbarshow":Z
    :cond_10
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->stopByUser:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mPreviewController:Lcom/oneplus/screenshot/longshot/preview/PreviewController;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->getCurrentBitmapCacheIndex()I

    move-result v1

    if-lez v1, :cond_12

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-eq p1, v1, :cond_11

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_12

    .line 410
    :cond_11
    sget-object p1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->WAITTING_PREVIEW:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering to preview state from update state: newState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 404
    :cond_12
    :goto_4
    nop

    .line 415
    :goto_5
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 416
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 417
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1, v0, p2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 418
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 420
    .end local v0    # "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    :cond_13
    return-void
.end method
