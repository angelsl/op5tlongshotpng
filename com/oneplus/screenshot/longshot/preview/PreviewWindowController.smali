.class public Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;,
        Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;
    }
.end annotation


# static fields
.field private static final HIDE_NOTCH:I = 0x1

.field private static final MSG_BG_SAVE_PREVIEW:I = 0x3e9

.field private static final MSG_OVERSCROLL_TIMEOUT:I = 0xbb9

.field private static final MSG_UPDATE_PREVIEW:I = 0xbb8

.field private static final NORMAL_STATE:I = 0x0

.field private static final ONEPLUS_NOTCH_MODE:Ljava/lang/String; = "op_camera_notch_ignore"

.field private static final OVERSCROLL_TIMEOUT:I = 0xbb8

.field private static final PREVIEW_STATE:I = 0x2

.field private static final PROGRESS_STATE:I = 0x1

.field private static final SHOW_NOTCH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Longshot.PreviewWindow"

.field private static final UPDATE_NEXT_CACHE_THRESHOLD:I = 0x1f4

.field private static isSupportCustomStatusBar:Z


# instance fields
.field private isBackgroundScrollcomplete:Z

.field private isStart:Z

.field private mBgHandler:Landroid/os/Handler;

.field private mBgHandlerThread:Landroid/os/HandlerThread;

.field private mCacheView:Landroid/widget/ImageView;

.field private mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentState:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mHint:Landroid/view/ViewGroup;

.field private mIsNavigationBarVisiable:Z

.field private mIsOverscrollTimeout:Z

.field private mIsPreviewShow:Z

.field private mIsStausBarVisiable:Z

.field private mLoadingWindow:Landroid/widget/RelativeLayout;

.field private mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

.field private mMessage:Landroid/widget/TextView;

.field private mMoveDistance:I

.field private mNaviBarVisiable:Z

.field private mNavibarView:Landroid/widget/ImageView;

.field private mNextUpdateCachePoint:I

.field private mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

.field private mPreview:Landroid/widget/ImageView;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewContainer:Landroid/view/View;

.field private mPreviewShowRunnable:Ljava/lang/Runnable;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mScrollContainer:Landroid/widget/ScrollView;

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollHandlerThread:Landroid/os/HandlerThread;

.field private mScrollStartRunnable:Ljava/lang/Runnable;

.field private mSmallScreen:Landroid/view/ViewGroup;

.field private mSmallScreenShot:Landroid/widget/ImageView;

.field private mSmallscreenH:I

.field private mSmallscreenP:[I

.field private mSmallscreenW:I

.field private mStartScroll:Z

.field private mStatusbarSpace:Landroid/view/View;

.field private mStatusbrView:Landroid/widget/ImageView;

.field private mTransitionView:Landroid/widget/ImageView;

.field private mUpdating:Z

.field private mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

.field private stitchDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isSupportCustomStatusBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "longshotContext"    # Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsOverscrollTimeout:Z

    .line 80
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isEnableDebugPreview()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->stitchDebug:Z

    .line 98
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCurrentState:I

    .line 100
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStartScroll:Z

    .line 103
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCurrentIndex:I

    .line 110
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mUpdating:Z

    .line 111
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNextUpdateCachePoint:I

    .line 113
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsPreviewShow:Z

    .line 114
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isStart:Z

    .line 118
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isBackgroundScrollcomplete:Z

    .line 129
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsNavigationBarVisiable:Z

    .line 130
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsStausBarVisiable:Z

    .line 135
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallscreenP:[I

    .line 136
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallscreenH:I

    .line 137
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallscreenW:I

    .line 139
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNaviBarVisiable:Z

    .line 143
    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$2;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreviewShowRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$3;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$3;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollStartRunnable:Ljava/lang/Runnable;

    .line 295
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMoveDistance:I

    .line 202
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    .line 204
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 205
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsOverscrollTimeout:Z

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->showPreviewWindow(Z)V

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mUpdating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mUpdating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMoveDistance:I

    return v0
.end method

.method static synthetic access$1112(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
    .param p1, "x1"    # I

    .line 55
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMoveDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMoveDistance:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isOverScroll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStartScroll:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->createLongshotAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreen:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollContainer:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCurrentState:I

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCurrentState:I

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreviewShowRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsOverscrollTimeout:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsOverscrollTimeout:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->savePreviewImage()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    .line 55
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->saveAllPreviewImage()V

    return-void
.end method

.method private createLongshotAnimation()Landroid/animation/ValueAnimator;
    .locals 33

    .line 801
    move-object/from16 v11, p0

    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 802
    .local v12, "smallscreenP":[I
    iget-object v1, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreenShot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    .line 803
    .local v13, "smallscreenH":I
    iget-object v1, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreenShot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v14

    .line 804
    .local v14, "smallscreenW":I
    iget-object v1, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreenShot:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 806
    iget-object v1, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v15, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 807
    .local v15, "screenshotWidth":I
    iget-object v1, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 810
    .local v10, "screenshotHeight":I
    const/4 v1, 0x0

    aget v16, v12, v1

    .line 811
    .local v16, "startPX":I
    const/4 v1, 0x1

    aget v17, v12, v1

    .line 812
    .local v17, "startPY":I
    move v9, v14

    .line 813
    .local v9, "startWidth":I
    move v8, v13

    .line 816
    .local v8, "startHegiht":I
    int-to-float v1, v9

    int-to-float v2, v15

    div-float v7, v1, v2

    .line 817
    .local v7, "startScaleX":F
    int-to-float v1, v8

    int-to-float v2, v10

    div-float v6, v1, v2

    .line 819
    .local v6, "startScaleY":F
    mul-int v1, v9, v16

    sub-int v2, v15, v9

    div-int/2addr v1, v2

    add-int v1, v16, v1

    int-to-float v5, v1

    .line 820
    .local v5, "scaleCenterX":F
    mul-int v1, v8, v17

    sub-int v2, v10, v8

    div-int/2addr v1, v2

    add-int v1, v17, v1

    int-to-float v4, v1

    .line 823
    .local v4, "scaleCenterY":F
    move v3, v15

    .line 824
    .local v3, "endWidth":I
    move v2, v10

    .line 826
    .local v2, "endHeight":I
    int-to-float v1, v3

    int-to-float v0, v15

    div-float v19, v1, v0

    .line 827
    .local v19, "endScaleX":F
    int-to-float v0, v2

    int-to-float v1, v10

    div-float v20, v0, v1

    .line 829
    .local v20, "endScaleY":F
    int-to-float v0, v15

    const/high16 v1, 0x40000000    # 2.0f

    div-float v21, v0, v1

    .line 830
    .local v21, "endScaleCenterX":F
    int-to-float v0, v10

    div-float v22, v0, v1

    .line 832
    .local v22, "endScaleCenterY":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getSmallScreenAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v23

    .line 834
    .local v23, "scaleInterpolator":Landroid/view/animation/Interpolator;
    iget-object v0, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 835
    iget-object v0, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 836
    iget-object v0, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 837
    iget-object v0, v11, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 839
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 840
    .local v1, "anim":Landroid/animation/ValueAnimator;
    move/from16 v24, v2

    move/from16 v18, v3

    .end local v2    # "endHeight":I
    .end local v3    # "endWidth":I
    .local v18, "endWidth":I
    .local v24, "endHeight":I
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 842
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 844
    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$9;

    invoke-direct {v0, v11}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$9;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 856
    new-instance v3, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;

    move-object v0, v3

    move-object v2, v1

    .end local v1    # "anim":Landroid/animation/ValueAnimator;
    .local v2, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v1, p0

    move-object v11, v2

    .end local v2    # "anim":Landroid/animation/ValueAnimator;
    .local v11, "anim":Landroid/animation/ValueAnimator;
    move/from16 v2, v19

    move-object/from16 v25, v12

    move-object v12, v3

    .end local v12    # "smallscreenP":[I
    .local v25, "smallscreenP":[I
    move v3, v7

    move/from16 v26, v4

    .end local v4    # "scaleCenterY":F
    .local v26, "scaleCenterY":F
    move-object/from16 v4, v23

    move/from16 v27, v5

    .end local v5    # "scaleCenterX":F
    .local v27, "scaleCenterX":F
    move/from16 v5, v20

    move/from16 v28, v6

    .end local v6    # "startScaleY":F
    .local v28, "startScaleY":F
    move/from16 v29, v7

    .end local v7    # "startScaleX":F
    .local v29, "startScaleX":F
    move/from16 v7, v21

    move/from16 v30, v8

    .end local v8    # "startHegiht":I
    .local v30, "startHegiht":I
    move/from16 v8, v27

    move/from16 v31, v9

    .end local v9    # "startWidth":I
    .local v31, "startWidth":I
    move/from16 v9, v22

    move/from16 v32, v10

    .end local v10    # "screenshotHeight":I
    .local v32, "screenshotHeight":I
    move/from16 v10, v26

    invoke-direct/range {v0 .. v10}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$10;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;FFLandroid/view/animation/Interpolator;FFFFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 868
    return-object v11

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getNotifyWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 8
    .param p1, "block"    # Z

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotifyWindowLayoutParams:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.PreviewWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7f4

    const v6, 0xd040428

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 549
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p1, :cond_0

    and-int/lit8 v1, v1, -0x11

    goto :goto_0

    :cond_0
    or-int/lit8 v1, v1, 0x10

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 550
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 551
    const-string v1, "LongshotPreviewWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 552
    return-object v0
.end method

.method private getScrollAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    .line 666
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 668
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 669
    .local v1, "endMoveDistance":I
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMove()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->customizeMove()I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x88b8

    .line 670
    .local v2, "duration":I
    :goto_0
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 671
    new-instance v3, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 672
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 673
    new-instance v3, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$6;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 705
    new-instance v3, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$7;

    invoke-direct {v3, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$7;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 726
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSmallScreenAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    .line 872
    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 873
    .local v0, "customInterpolator":Landroid/view/animation/Interpolator;
    return-object v0
.end method

.method private initBgHadndler()V
    .locals 2

    .line 210
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreviewWindow BG"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 211
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 212
    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$4;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$4;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mBgHandler:Landroid/os/Handler;

    .line 226
    return-void
.end method

.method private initHint()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isShowNotch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 237
    .local v0, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStatusbarSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    return-void
.end method

.method private isOverScroll()Z
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollContainer:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isBackgroundScrollcomplete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    move v0, v1

    .line 424
    .local v0, "result":Z
    const-string v1, "Longshot.PreviewWindow"

    if-eqz v0, :cond_2

    .line 425
    const-string v2, "isOverScroll"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doesn\'t have enough bitmap to scroll:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    :goto_2
    return v0
.end method

.method private isShowNotch(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 241
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isSupportCustomStatusBar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_camera_notch_ignore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private saveAllPreviewImage()V
    .locals 5

    .line 584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getBitmapList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 585
    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getBitmapList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreviewImage_item_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 587
    .local v1, "info":Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    iget-object v4, v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v4}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 584
    .end local v1    # "info":Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private savePreviewImage()V
    .locals 5

    .line 575
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->drawableToBitmap(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreviewImage_l_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMoveDistance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_h_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewContainHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 578
    .local v1, "info":Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;->mInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    iget-object v4, v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v4}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 579
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    return-void
.end method

.method private stopBgHadndler()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mBgHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 232
    :cond_0
    return-void
.end method

.method private updateProgreeColor()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 530
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public createPreviewBefore(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 344
    .local p1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-static/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v0

    .line 345
    .local v0, "imageHeight":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 346
    return-object v1

    .line 348
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v8

    .line 349
    .local v8, "imageWidth":I
    move v9, v0

    .line 350
    .local v9, "cutSize":I
    invoke-static/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v8, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 351
    .local v10, "preview":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v2

    .line 352
    .local v11, "canvas":Landroid/graphics/Canvas;
    move v2, v9

    .line 353
    .local v2, "pos":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_2

    if-lez v2, :cond_2

    .line 354
    move-object/from16 v13, p1

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/Bitmap;

    .line 355
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v15, v2, v3

    .line 356
    .end local v2    # "pos":I
    .local v15, "pos":I
    const/4 v2, 0x0

    int-to-float v3, v15

    invoke-virtual {v11, v14, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 357
    move-object/from16 v7, p0

    iget-boolean v2, v7, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->stitchDebug:Z

    if-eqz v2, :cond_1

    .line 358
    const/16 v3, 0xa

    const/4 v5, 0x1

    invoke-static/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageConfig(Ljava/util/List;)Landroid/graphics/Bitmap$Config;

    move-result-object v16

    move v2, v8

    move v4, v15

    move-object v6, v11

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawDivider(IIIZLandroid/graphics/Canvas;Landroid/graphics/Bitmap$Config;)I

    .line 353
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v12, v12, -0x1

    move v2, v15

    goto :goto_0

    .end local v15    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    move-object/from16 v13, p1

    .line 361
    .end local v12    # "i":I
    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public drawableToBitmap(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "drawable"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getWidth()I

    move-result v1

    .line 594
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v2

    .line 595
    .local v2, "height":I
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNavibarView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int v3, v2, v3

    .line 605
    .local v3, "pos":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 606
    :cond_1
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 611
    :goto_1
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 612
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v5, v6}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->setBounds(IIII)V

    .line 613
    invoke-virtual {p1, v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 615
    iget-boolean v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsNavigationBarVisiable:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 616
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNavibarView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x0

    int-to-float v8, v3

    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 618
    :cond_2
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 619
    return-object v0
.end method

.method public drawableToBitmap(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "drawable"    # Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
    .param p2, "displayHeight"    # I

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getWidth()I

    move-result v1

    .line 626
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v2

    .line 627
    .local v2, "previewHeight":I
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNavibarView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int v3, v2, v3

    .line 628
    .local v3, "pos":I
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 629
    :cond_1
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    :goto_1
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 634
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v8, v6, v7}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->setBounds(IIII)V

    .line 635
    invoke-virtual {p1, v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 637
    iget-boolean v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsNavigationBarVisiable:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 638
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNavibarView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v8, 0x0

    int-to-float v9, v3

    invoke-virtual {v4, v6, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 640
    :cond_2
    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 641
    int-to-float v6, p2

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 642
    .local v6, "ratio":F
    int-to-float v7, v1

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-static {v0, v7, p2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 643
    .local v5, "bitmapScaled":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 644
    return-object v5
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->drawableToBitmap(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "height"    # I

    .line 881
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->drawableToBitmap(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPreviewContainHeight()I
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewLength()I
    .locals 2

    .line 660
    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMoveDistance:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewContainHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isIsPreviewShow()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsPreviewShow:Z

    return v0
.end method

.method public onBackgroundScrollcomplete()V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onBackgroundScrollcomplete mIsPreviewShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsPreviewShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.PreviewWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isBackgroundScrollcomplete:Z

    .line 416
    return-void
.end method

.method public onPreviewHide()V
    .locals 2

    .line 329
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsPreviewShow:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsPreviewShow:Z

    .line 332
    const-string v0, "Longshot.PreviewWindow"

    const-string v1, " onPreviewHide:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    return-void
.end method

.method public onPreviewShow()V
    .locals 2

    .line 298
    const-string v0, "Longshot.PreviewWindow"

    const-string v1, " onPreviewShow:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsPreviewShow:Z

    .line 302
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreviewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setFirstBitmap(Landroid/graphics/Bitmap;)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollContainer:Landroid/widget/ScrollView;

    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 325
    return-void
.end method

.method public onProgressHide()V
    .locals 2

    .line 291
    const-string v0, "Longshot.PreviewWindow"

    const-string v1, " onProgressHide:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mLoadingWindow:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    return-void
.end method

.method public onProgressShow()V
    .locals 2

    .line 285
    const-string v0, "Longshot.PreviewWindow"

    const-string v1, " onProgressShow:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mLoadingWindow:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->playScreenshotAnimation()V

    .line 288
    return-void
.end method

.method public onScrollStart()V
    .locals 3

    .line 366
    const-string v0, "Longshot.PreviewWindow"

    const-string v1, " onScrollStart:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStartScroll:Z

    .line 370
    const-wide/16 v0, 0x8

    const-string v2, "Longshot.onScrollStart"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getScrollAnimation()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 373
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 375
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 377
    return-void
.end method

.method public onScrollStop(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 381
    const-wide/16 v0, 0x8

    const-string v2, "Longshot.onScrollStop"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 383
    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStartScroll:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 384
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onScrollStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDumpPreview:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isDumpPreview()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Longshot.PreviewWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStartScroll:Z

    .line 386
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    if-eqz v3, :cond_2

    .line 392
    invoke-interface {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;->onScrollcomplete()V

    .line 395
    :cond_2
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isDumpPreview()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mBgHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsOverscrollTimeout:Z

    .line 401
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 407
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 247
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isStart:Z

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isStart:Z

    .line 249
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->initBgHadndler()V

    .line 251
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->initHint()V

    .line 253
    iget v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCurrentState:I

    if-nez v1, :cond_0

    .line 254
    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCurrentState:I

    .line 255
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onProgressShow()V

    .line 259
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 263
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isStart:Z

    .line 266
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    .line 268
    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isDumpPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mBgHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreviewShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->stopBgHadndler()V

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onPreviewHide()V

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onProgressHide()V

    .line 280
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->showPreviewWindow(Z)V

    .line 282
    return-void
.end method

.method public playScreenshotAnimation()V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 780
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 782
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$8;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void
.end method

.method public removeCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    .line 439
    return-void
.end method

.method public setCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    .line 434
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    .line 435
    return-void
.end method

.method public setFirstBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 560
    const-string v0, "Longshot.PreviewWindow"

    const-string v1, "setFirstBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCacheView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 562
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 563
    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateSmallScreen()V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreenShot:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 567
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreen:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 569
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    :cond_1
    return-void
.end method

.method public setNavibarView(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 738
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNavibarView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 741
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsNavigationBarVisiable:Z

    .line 742
    return-void
.end method

.method public setStatusbrView(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 731
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStatusbrView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 734
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mIsStausBarVisiable:Z

    .line 735
    return-void
.end method

.method public showPreviewWindow(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .line 463
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 465
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWindow, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.PreviewWindow"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    if-nez v5, :cond_2

    .line 468
    invoke-direct {p0, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getNotifyWindowLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 470
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    .line 471
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 473
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f0c007d

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    .line 474
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 475
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090107

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreviewContainer:Landroid/view/View;

    .line 479
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090108

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mScrollContainer:Landroid/widget/ScrollView;

    .line 480
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f09007c

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMessage:Landroid/widget/TextView;

    .line 481
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f0900ce

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHint:Landroid/view/ViewGroup;

    .line 482
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090106

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreview:Landroid/widget/ImageView;

    .line 483
    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    .line 484
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreview:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f09010a

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 486
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f0900b1

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mLoadingWindow:Landroid/widget/RelativeLayout;

    .line 487
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090031

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mCacheView:Landroid/widget/ImageView;

    .line 488
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090160

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mTransitionView:Landroid/widget/ImageView;

    .line 489
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090142

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStatusbarSpace:Landroid/view/View;

    .line 491
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f0900c2

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mNavibarView:Landroid/widget/ImageView;

    .line 492
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090141

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mStatusbrView:Landroid/widget/ImageView;

    .line 494
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090134

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreen:Landroid/view/ViewGroup;

    .line 495
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const v3, 0x7f090117

    invoke-virtual {v1, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreenShot:Landroid/widget/ImageView;

    .line 496
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPreviewContainer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mLoadingWindow:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0053

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    invoke-virtual {v3, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->setPreviewWindowController(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V

    .line 502
    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->stitchDebug:Z

    if-eqz v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v3, v5}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->setAlpha(F)V

    .line 505
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1
    goto :goto_1

    .line 506
    :cond_2
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    if-eqz v3, :cond_3

    .line 507
    const-string v3, "notifyWindow hide"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 509
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;

    .line 512
    :cond_3
    :goto_1
    return-void
.end method

.method public updateDrawable(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateDrawable index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.PreviewWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mPictureDrawable:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->updateBitmap(Landroid/graphics/Bitmap;I)V

    .line 445
    return-void
.end method

.method public updateFinish(Z)V
    .locals 2
    .param p1, "isLast"    # Z

    .line 449
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 450
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 451
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    return-void
.end method

.method public updateSmallScreen()V
    .locals 8

    .line 748
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 749
    return-void

    .line 751
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 754
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f07028b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f07028a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 757
    .local v1, "marginRight":I
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v4, :cond_1

    .line 758
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 759
    .local v2, "width":I
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 760
    .local v3, "widthScale":F
    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    .line 761
    .local v4, "height":I
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreen:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 762
    .local v5, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 763
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v6}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getNavBarHeight()I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 764
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreen:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreenShot:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 767
    .local v6, "lp1":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 768
    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 769
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->mSmallScreenShot:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    .end local v2    # "width":I
    .end local v3    # "widthScale":F
    .end local v4    # "height":I
    .end local v5    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "lp1":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method
