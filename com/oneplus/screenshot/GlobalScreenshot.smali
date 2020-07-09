.class public Lcom/oneplus/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;,
        Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;
    }
.end annotation


# static fields
.field public static final ALERTS:Ljava/lang/String; = "ALR"

.field private static final BACKGROUND_ALPHA:F = 0.7f

.field private static final FULL_WINDOW_ENTERING_TYPE:I = 0x1

.field private static final FULL_WINDOW_TYPE:I = 0x2

.field private static final INTENT_EXTRAS_SIMPLEMODE:Ljava/lang/String; = "simplemode"

.field private static final LONGSHOT_DROP_OUT_DELAY:I = 0x9c4

.field private static final LONGSHOT_SUPPORT_GUIDER_SHOWED:Ljava/lang/String; = "longshot_support_guider_showed"

.field private static final LONGSHOT_UNSUPPORT_GUIDER_SHOWED:Ljava/lang/String; = "longshot_unsupport_guider_showed"

.field private static final OP_GALLERY_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field public static final SCREENSHOTS:Ljava/lang/String; = "SCN"

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0x1f4

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field static final SCREENSHOT_URI_ID:Ljava/lang/String; = "android:screenshot_uri_id"

.field private static final SMALLSCREEN_DROP_OUT_DELAY:I = 0xfa0

.field private static final SMALLSCREEN_NO_FOOTER_DROP_OUT_DELAY:I = 0x320

.field private static final SMALL_WINDOW_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalScreenshot"

.field public static mLastImageTime:J

.field public static mScreenshotBeginTime:J


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mAnimScale:F

.field mAnimationScreenshotIcon:Landroid/widget/ImageView;

.field mAnimationWindow:Landroid/widget/FrameLayout;

.field private mBackIcon:Landroid/view/View;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCallBack:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditIcon:Landroid/widget/ImageView;

.field final mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

.field private mFinisher:Ljava/lang/Runnable;

.field private mFooter:Landroid/widget/LinearLayout;

.field private mGuideButton:Landroid/widget/Button;

.field private mGuideText:Landroid/widget/TextView;

.field private mGuiderHost:Landroid/widget/LinearLayout;

.field private mGuiderShowing:Z

.field mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/widget/RelativeLayout;

.field private mHideSmallScreenRunnable:Ljava/lang/Runnable;

.field private mIsBusy:Z

.field private mIsLongShotStarted:Z

.field private mIsSaveScreenshotAfterAnimationEnd:Z

.field private mIsSimpleEditLauching:Z

.field private mIsSmallScreenshotBusy:Z

.field private mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

.field private mLongshotIcon:Landroid/widget/Button;

.field private mLongshotSupportGuiderShowed:Z

.field private mLongshotUnSupportGuiderShowed:Z

.field private mNavBarVisible:Z

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPlayEnlargeSmallAnimation:Z

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotContainer:Landroid/widget/RelativeLayout;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

.field private mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mShareIcon:Landroid/widget/ImageButton;

.field private mSmallScreen:Landroid/view/ViewGroup;

.field private mSmallScreenAnimScale:F

.field private mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

.field private mSmallScreenWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mSmallScreenshot:Landroid/widget/ImageView;

.field private mSmallScreenshotLayout:Landroid/widget/FrameLayout;

.field private mSmallscreenH:I

.field private mSmallscreenP:[I

.field private mSmallscreenW:I

.field private mStartEidtRunnable:Ljava/lang/Runnable;

.field private mStatusBarVisible:Z

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .line 792
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 715
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 716
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsLongShotStarted:Z

    .line 725
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-direct {v3, v0}, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v3, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    .line 734
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    .line 735
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    .line 736
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    .line 756
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSmallScreenshotBusy:Z

    .line 759
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenAnimScale:F

    .line 762
    const/4 v3, 0x2

    iput v3, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowState:I

    .line 768
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    .line 775
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenP:[I

    .line 776
    iput v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenH:I

    .line 777
    iput v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenW:I

    .line 778
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPlayEnlargeSmallAnimation:Z

    .line 782
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSimpleEditLauching:Z

    .line 1477
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$8;

    invoke-direct {v4, v0}, Lcom/oneplus/screenshot/GlobalScreenshot$8;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    .line 1876
    iput-boolean v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSaveScreenshotAfterAnimationEnd:Z

    .line 2018
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$20;

    invoke-direct {v4, v0}, Lcom/oneplus/screenshot/GlobalScreenshot$20;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStartEidtRunnable:Ljava/lang/Runnable;

    .line 2430
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$31;

    invoke-direct {v4, v0}, Lcom/oneplus/screenshot/GlobalScreenshot$31;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCallBack:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    .line 2684
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$35;

    invoke-direct {v4, v0}, Lcom/oneplus/screenshot/GlobalScreenshot$35;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 794
    .local v4, "r":Landroid/content/res/Resources;
    iput-object v1, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 795
    nop

    .line 796
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 799
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 802
    const v6, 0x7f0c0004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    .line 805
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v7, 0x7f09006e

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 806
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v7, 0x7f09006d

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 807
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v7, 0x7f09006f

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 808
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v7, 0x7f090077

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    .line 810
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setFocusable(Z)V

    .line 813
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f090070

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    .line 814
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f090075

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    .line 815
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 817
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f090074

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    .line 818
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 820
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f090073

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    .line 821
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 824
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f090071

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHeader:Landroid/widget/RelativeLayout;

    .line 825
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f090072

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    .line 826
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 832
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f0900b6

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    .line 834
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 835
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f0900b4

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    .line 836
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 838
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v8, 0x7f0900b5

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    .line 840
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 841
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 840
    const-string v8, "longshot_support_guider_showed"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iput-boolean v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    .line 842
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 843
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 842
    const-string v8, "longshot_unsupport_guider_showed"

    invoke-static {v6, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    iput-boolean v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    .line 846
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setFocusable(Z)V

    .line 847
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v6, v7}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setFocusableInTouchMode(Z)V

    .line 848
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v8, Lcom/oneplus/screenshot/GlobalScreenshot$1;

    invoke-direct {v8, v0}, Lcom/oneplus/screenshot/GlobalScreenshot$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v6, v8}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 857
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7de

    const v15, 0x1080100

    const/16 v16, -0x3

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 871
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "ScreenshotAnimation"

    invoke-virtual {v6, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 873
    const-string v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 874
    nop

    .line 875
    const-string v6, "notification"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 876
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 877
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 878
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v8, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 881
    const v6, 0x1050006

    .line 882
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 885
    const v6, 0x7f070100

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 886
    iget v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v8, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 889
    const v6, 0x7f070131

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 890
    .local v6, "panelWidth":I
    if-gtz v6, :cond_2

    .line 892
    iget-object v8, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 894
    :cond_2
    iput v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    .line 895
    const v8, 0x7f07012f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    .line 898
    new-instance v8, Landroid/media/MediaActionSound;

    invoke-direct {v8}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v8, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 899
    iget-object v8, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v8, v2}, Landroid/media/MediaActionSound;->load(I)V

    .line 902
    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 903
    .local v8, "nm":Landroid/app/NotificationManager;
    new-array v9, v3, [Landroid/app/NotificationChannel;

    new-instance v10, Landroid/app/NotificationChannel;

    const v11, 0x7f0d001f

    .line 906
    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "SCN"

    invoke-direct {v10, v12, v11, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v10, v9, v2

    new-instance v2, Landroid/app/NotificationChannel;

    const v3, 0x1040474

    .line 910
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x4

    const-string v11, "ALR"

    invoke-direct {v2, v11, v3, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v2, v9, v7

    .line 903
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 916
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->initSmallScreen()V

    .line 920
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 921
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mActivityManager:Landroid/app/IActivityManager;

    .line 922
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->showLongshotGuider()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/screenshot/GlobalScreenshot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPlayEnlargeSmallAnimation:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->createSmallScreenshotEnlargeAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/screenshot/GlobalScreenshot;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHeader:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->createEidtModeEnterAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2402(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Z

    .line 639
    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSimpleEditLauching:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/oneplus/screenshot/GlobalScreenshot;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Z

    .line 639
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->endSmallScreenshotAnim(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshotLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/oneplus/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/screenshot/GlobalScreenshot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSmallScreenshotBusy:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->playSmallScreenshotDropInAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCallBack:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$DragCallback;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->createSmallScreenshotDropOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/ScreenshotSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .line 639
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    return-object v0
.end method

.method private createEidtModeEnterAnimation()Landroid/animation/ValueAnimator;
    .locals 31

    .line 2083
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v12

    .line 2084
    .local v12, "screenshotWidth":I
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    .line 2087
    .local v13, "screenshotHeight":I
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenP:[I

    const/4 v1, 0x0

    aget v14, v0, v1

    .line 2088
    .local v14, "startPX":I
    const/4 v1, 0x1

    aget v15, v0, v1

    .line 2089
    .local v15, "startPY":I
    iget v10, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenW:I

    .line 2090
    .local v10, "startWidth":I
    iget v9, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenH:I

    .line 2092
    .local v9, "startHegiht":I
    int-to-float v0, v10

    int-to-float v1, v12

    div-float v16, v0, v1

    .line 2093
    .local v16, "startScaleX":F
    int-to-float v0, v9

    int-to-float v1, v13

    div-float v17, v0, v1

    .line 2095
    .local v17, "startScaleY":F
    mul-int v0, v10, v14

    sub-int v1, v12, v10

    div-int/2addr v0, v1

    add-int/2addr v0, v14

    int-to-float v8, v0

    .line 2096
    .local v8, "scaleCenterX":F
    mul-int v0, v9, v15

    sub-int v1, v13, v9

    div-int/2addr v0, v1

    add-int/2addr v0, v15

    int-to-float v7, v0

    .line 2100
    .local v7, "scaleCenterY":F
    const v18, 0x3f28f5c3    # 0.66f

    .line 2101
    .local v18, "scaleRatio":F
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v6, v0

    .line 2102
    .local v6, "endHeight":I
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v5, v0

    .line 2103
    .local v5, "endWidth":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widthPixels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,heightPixels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    int-to-float v0, v5

    int-to-float v1, v12

    div-float v19, v0, v1

    .line 2106
    .local v19, "endScaleX":F
    int-to-float v0, v6

    int-to-float v1, v13

    div-float v20, v0, v1

    .line 2108
    .local v20, "endScaleY":F
    int-to-float v0, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float v21, v0, v1

    .line 2109
    .local v21, "endScaleCenterX":F
    int-to-float v0, v13

    div-float v22, v0, v1

    .line 2111
    .local v22, "endScaleCenterY":F
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 2112
    const v1, 0x7f0b000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v23

    .line 2114
    .local v23, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 2115
    .local v4, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v0, 0x177

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2116
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$22;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v24, v6

    move-object v6, v3

    .end local v6    # "endHeight":I
    .local v24, "endHeight":I
    move/from16 v3, v17

    move-object v11, v4

    .end local v4    # "anim":Landroid/animation/ValueAnimator;
    .local v11, "anim":Landroid/animation/ValueAnimator;
    move v4, v8

    move/from16 v25, v5

    .end local v5    # "endWidth":I
    .local v25, "endWidth":I
    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/GlobalScreenshot$22;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFFF)V

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2144
    new-instance v6, Lcom/oneplus/screenshot/GlobalScreenshot$23;

    move-object v0, v6

    move/from16 v2, v19

    move/from16 v3, v16

    move-object/from16 v4, v23

    move/from16 v5, v20

    move/from16 v26, v12

    move-object v12, v6

    .end local v12    # "screenshotWidth":I
    .local v26, "screenshotWidth":I
    move/from16 v6, v17

    move/from16 v27, v7

    .end local v7    # "scaleCenterY":F
    .local v27, "scaleCenterY":F
    move/from16 v7, v21

    move/from16 v28, v8

    .end local v8    # "scaleCenterX":F
    .local v28, "scaleCenterX":F
    move/from16 v29, v9

    .end local v9    # "startHegiht":I
    .local v29, "startHegiht":I
    move/from16 v9, v22

    move/from16 v30, v10

    .end local v10    # "startWidth":I
    .local v30, "startWidth":I
    move/from16 v10, v27

    invoke-direct/range {v0 .. v10}, Lcom/oneplus/screenshot/GlobalScreenshot$23;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFLandroid/view/animation/Interpolator;FFFFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2159
    return-object v11

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .line 1544
    const v0, 0x3e9aca6b

    .line 1546
    .local v0, "flashPeakDurationPct":F
    const v1, 0x3f1aca6b

    .line 1547
    .local v1, "flashDurationPct":F
    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$9;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$9;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1557
    .local v2, "flashAlphaInterpolator":Landroid/view/animation/Interpolator;
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$10;

    invoke-direct {v3, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$10;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1567
    .local v3, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1568
    .local v4, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x1ae

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1569
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$11;

    invoke-direct {v5, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$11;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1606
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$12;

    invoke-direct {v5, p0, v3, v2}, Lcom/oneplus/screenshot/GlobalScreenshot$12;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1623
    return-object v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .line 1713
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1716
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    if-eqz v1, :cond_0

    .line 1717
    const-wide/32 v1, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    .line 1719
    :cond_0
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v1, :cond_1

    .line 1720
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    .line 1722
    :cond_1
    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1725
    :goto_0
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$15;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$15;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1734
    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    .line 1754
    :cond_2
    const v1, 0x3f5c4771

    .line 1756
    .local v1, "scaleDurationPct":F
    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$17;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$17;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1768
    .local v2, "scaleInterpolator":Landroid/view/animation/Interpolator;
    int-to-float v3, p1

    iget v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    div-float/2addr v3, v5

    .line 1769
    .local v3, "halfScreenWidth":F
    int-to-float v6, p2

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    .line 1770
    .local v6, "halfScreenHeight":F
    const/4 v4, 0x0

    .line 1771
    .local v4, "offsetPct":F
    new-instance v5, Landroid/graphics/PointF;

    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float v9, v3, v8

    add-float/2addr v7, v9

    neg-float v9, v6

    mul-float/2addr v8, v6

    add-float/2addr v9, v8

    invoke-direct {v5, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1776
    .local v5, "finalPos":Landroid/graphics/PointF;
    const-wide/16 v7, 0x1ae

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1777
    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$18;

    invoke-direct {v7, p0, v2, v5}, Lcom/oneplus/screenshot/GlobalScreenshot$18;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    .line 1736
    .end local v1    # "scaleDurationPct":F
    .end local v2    # "scaleInterpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "halfScreenWidth":F
    .end local v4    # "offsetPct":F
    .end local v5    # "finalPos":Landroid/graphics/PointF;
    .end local v6    # "halfScreenHeight":F
    :cond_3
    :goto_1
    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1737
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$16;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$16;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1796
    :goto_2
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createSmallScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .line 2263
    const v0, 0x3e9aca6b

    .line 2265
    .local v0, "flashPeakDurationPct":F
    const v1, 0x3f1aca6b

    .line 2266
    .local v1, "flashDurationPct":F
    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$24;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$24;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 2276
    .local v2, "flashAlphaInterpolator":Landroid/view/animation/Interpolator;
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$25;

    invoke-direct {v3, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$25;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 2286
    .local v3, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 2287
    .local v4, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x1ae

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2288
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$26;

    invoke-direct {v5, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$26;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2300
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$27;

    invoke-direct {v5, p0, v3}, Lcom/oneplus/screenshot/GlobalScreenshot$27;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2310
    return-object v4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createSmallScreenshotDropOutAnimation()Landroid/animation/ValueAnimator;
    .locals 5

    .line 2314
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2316
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$28;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$28;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2327
    const v1, 0x3f5c4771

    .line 2329
    .local v1, "scaleDurationPct":F
    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$29;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$29;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 2341
    .local v2, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const-wide/16 v3, 0x1ae

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2342
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$30;

    invoke-direct {v3, p0, v2}, Lcom/oneplus/screenshot/GlobalScreenshot$30;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2351
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createSmallScreenshotEnlargeAnimation()Landroid/animation/ValueAnimator;
    .locals 31

    .line 1629
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v12

    .line 1630
    .local v12, "screenshotWidth":I
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    .line 1633
    .local v13, "screenshotHeight":I
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenP:[I

    const/4 v1, 0x0

    aget v14, v0, v1

    .line 1634
    .local v14, "startPX":I
    const/4 v1, 0x1

    aget v15, v0, v1

    .line 1635
    .local v15, "startPY":I
    iget v10, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenW:I

    .line 1636
    .local v10, "startWidth":I
    iget v9, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenH:I

    .line 1638
    .local v9, "startHegiht":I
    int-to-float v0, v10

    int-to-float v1, v12

    div-float v16, v0, v1

    .line 1639
    .local v16, "startScaleX":F
    int-to-float v0, v9

    int-to-float v1, v13

    div-float v17, v0, v1

    .line 1641
    .local v17, "startScaleY":F
    mul-int v0, v10, v14

    sub-int v1, v12, v10

    div-int/2addr v0, v1

    add-int/2addr v0, v14

    int-to-float v8, v0

    .line 1642
    .local v8, "scaleCenterX":F
    mul-int v0, v9, v15

    sub-int v1, v13, v9

    div-int/2addr v0, v1

    add-int/2addr v0, v15

    int-to-float v7, v0

    .line 1649
    .local v7, "scaleCenterY":F
    const v18, 0x3f28f5c3    # 0.66f

    .line 1650
    .local v18, "scaleRatio":F
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v6, v0

    .line 1651
    .local v6, "endHeight":I
    iget-object v0, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v18

    float-to-int v5, v0

    .line 1652
    .local v5, "endWidth":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widthPixels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,heightPixels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    int-to-float v0, v5

    int-to-float v1, v12

    div-float v19, v0, v1

    .line 1654
    .local v19, "endScaleX":F
    int-to-float v0, v6

    int-to-float v1, v13

    div-float v20, v0, v1

    .line 1656
    .local v20, "endScaleY":F
    int-to-float v0, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float v21, v0, v1

    .line 1657
    .local v21, "endScaleCenterX":F
    int-to-float v0, v13

    div-float v22, v0, v1

    .line 1659
    .local v22, "endScaleCenterY":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->getSmallScreenAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v23

    .line 1661
    .local v23, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1662
    .local v4, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v0, 0x1ae

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1663
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$13;

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v24, v6

    move-object v6, v3

    .end local v6    # "endHeight":I
    .local v24, "endHeight":I
    move/from16 v3, v17

    move-object v11, v4

    .end local v4    # "anim":Landroid/animation/ValueAnimator;
    .local v11, "anim":Landroid/animation/ValueAnimator;
    move v4, v8

    move/from16 v25, v5

    .end local v5    # "endWidth":I
    .local v25, "endWidth":I
    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/GlobalScreenshot$13;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFFF)V

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1690
    new-instance v6, Lcom/oneplus/screenshot/GlobalScreenshot$14;

    move-object v0, v6

    move/from16 v2, v19

    move/from16 v3, v16

    move-object/from16 v4, v23

    move/from16 v5, v20

    move/from16 v26, v12

    move-object v12, v6

    .end local v12    # "screenshotWidth":I
    .local v26, "screenshotWidth":I
    move/from16 v6, v17

    move/from16 v27, v7

    .end local v7    # "scaleCenterY":F
    .local v27, "scaleCenterY":F
    move/from16 v7, v21

    move/from16 v28, v8

    .end local v8    # "scaleCenterX":F
    .local v28, "scaleCenterX":F
    move/from16 v29, v9

    .end local v9    # "startHegiht":I
    .local v29, "startHegiht":I
    move/from16 v9, v22

    move/from16 v30, v10

    .end local v10    # "startWidth":I
    .local v30, "startWidth":I
    move/from16 v10, v27

    invoke-direct/range {v0 .. v10}, Lcom/oneplus/screenshot/GlobalScreenshot$14;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFLandroid/view/animation/Interpolator;FFFFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1708
    return-object v11

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private delete()V
    .locals 3

    .line 1971
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1973
    .local v0, "delete":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1974
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    goto :goto_0

    .line 1976
    :cond_0
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "delete intent isn\'t ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    :goto_0
    goto :goto_1

    .line 1978
    :catch_0
    move-exception v1

    .line 1979
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 1981
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_1
    return-void
.end method

.method private edit(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1986
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    const-string v2, "screenshot"

    const-string v3, "edit"

    invoke-static {v0, v2, v3, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "com.oneplus.gallery"

    const-string v4, "com.oneplus.gallery.PhotoEditorActivity"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1989
    return-void
.end method

.method private endScreenshotAnim()V
    .locals 4

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endScreenshotAnim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1489
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1490
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1494
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_0

    .line 1495
    return-void

    .line 1500
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    .line 1504
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1508
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    if-eqz v0, :cond_1

    .line 1510
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1511
    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v0, :cond_2

    .line 1517
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->unregisterKeyEventCallBack()V

    .line 1522
    :cond_2
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 1523
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1527
    :cond_3
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1528
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1531
    :cond_4
    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1532
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1533
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1534
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1535
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1537
    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 1539
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    .line 1540
    return-void
.end method

.method private endSmallScreenshotAnim(Z)V
    .locals 6
    .param p1, "saveImage"    # Z

    .line 2356
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSimpleEditLauching:Z

    const-string v1, "Longshot.GlobalScreenshot"

    if-eqz v0, :cond_0

    .line 2357
    const-string v0, "simple edit is launching,cancel endSmallScreenshotAnim"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    return-void

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2367
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2368
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2370
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSmallScreenshotBusy:Z

    if-nez v0, :cond_1

    .line 2371
    return-void

    .line 2373
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endSmallScreenshotAnim isAttachedToWindow:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " saveImage:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isLongshotRunning:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->unRegisterCallBack()V

    .line 2377
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onStop()V

    .line 2378
    const/4 v0, 0x0

    .line 2380
    .local v0, "mFinishAfterSave":Z
    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    .line 2382
    iget v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowState:I

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 2383
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-direct {p0, v4, v5, v3, v5}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;ZLjava/lang/Runnable;Z)V

    goto :goto_0

    .line 2385
    :cond_2
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;ZLjava/lang/Runnable;Z)V

    .line 2387
    :goto_0
    const/4 v0, 0x1

    .line 2391
    :cond_3
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 2392
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2394
    :cond_4
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2395
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2402
    :cond_5
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2403
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2409
    :cond_6
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowState:I

    if-nez v4, :cond_7

    .line 2411
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2412
    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    .line 2418
    :cond_7
    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowState:I

    if-nez v4, :cond_8

    if-nez v0, :cond_8

    .line 2419
    const-string v4, "endSmallScreenshotAnim run finisher"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 2423
    :cond_8
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2424
    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSmallScreenshotBusy:Z

    .line 2425
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenAnimScale:F

    .line 2426
    const-string v2, "endSmallScreenshotAnim end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    return-void
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .line 1062
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1071
    const/4 v0, 0x0

    return v0

    .line 1068
    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    .line 1066
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 1064
    :cond_2
    const/high16 v0, 0x43870000    # 270.0f

    return v0
.end method

.method private getSmallScreenAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    .line 2680
    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 2681
    .local v0, "customInterpolator":Landroid/view/animation/Interpolator;
    return-object v0
.end method

.method private hideLongshotGuider()V
    .locals 2

    .line 2211
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    if-nez v0, :cond_0

    .line 2212
    return-void

    .line 2215
    :cond_0
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "hide LongshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2217
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    .line 2220
    :cond_1
    return-void
.end method

.method private hideScreenshotLayout()V
    .locals 2

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideScreenshotLayout mWindowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2249
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    goto :goto_0

    .line 2251
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endSmallScreenshotAnim(Z)V

    .line 2254
    :goto_0
    return-void
.end method

.method private hideSoftInput()V
    .locals 3

    .line 2166
    :try_start_0
    const-string v0, "input_method"

    .line 2167
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2166
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 2168
    .local v0, "iimm":Lcom/android/internal/view/IInputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    nop

    .end local v0    # "iimm":Lcom/android/internal/view/IInputMethodManager;
    goto :goto_0

    .line 2169
    :catch_0
    move-exception v0

    .line 2171
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "hide ime failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private initSmallScreen()V
    .locals 11

    .line 2453
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2454
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 2455
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2456
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    .line 2457
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    const v3, 0x7f090119

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshotLayout:Landroid/widget/FrameLayout;

    .line 2458
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshotLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2460
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshotLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 2463
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    const v4, 0x7f09011a

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotContainer:Landroid/widget/RelativeLayout;

    .line 2464
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    const v4, 0x7f090117

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    .line 2465
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    const v4, 0x7f090118

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    .line 2466
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2467
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 2469
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$32;

    invoke-direct {v4, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$32;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2477
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x7f4

    const v9, 0x1000328

    const/4 v10, -0x3

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2489
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2492
    const-string v4, "LongshotSmallScreen"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2494
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2496
    new-instance v2, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v4, v5}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;-><init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    .line 2497
    return-void
.end method

.method private isBusy()Z
    .locals 1

    .line 1008
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNeedToShowGuider()Z
    .locals 1

    .line 2241
    const/4 v0, 0x0

    return v0
.end method

.method private isRinging(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 949
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 950
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 951
    .local v1, "ringing":Z
    return v1
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nManager"    # Landroid/app/NotificationManager;
    .param p2, "msgResId"    # I

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyScreenshotError, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1803
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1807
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "ALR"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1809
    const v3, 0x7f0d003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1810
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1811
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1812
    const v3, 0x7f0801f3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1814
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1815
    const-string v4, "err"

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1816
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1817
    const v4, 0x106001c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1819
    .local v2, "b":Landroid/app/Notification$Builder;
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 1821
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_0

    .line 1822
    const-string v5, "policy_disable_screen_capture"

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1824
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 1825
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v6, p0

    move-object v8, v5

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1827
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1832
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1833
    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 1834
    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    .line 1835
    .local v5, "n":Landroid/app/Notification;
    invoke-virtual {p1, v3, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1836
    return-void
.end method

.method private playSmallScreenshotDropInAnimation()Landroid/view/animation/AnimationSet;
    .locals 25

    .line 2598
    move-object/from16 v0, p0

    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "playSmallScreenshotDropInAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2602
    .local v1, "animantionSet":Landroid/view/animation/AnimationSet;
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2603
    .local v3, "position":[I
    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 2605
    aget v4, v3, v2

    .line 2606
    .local v4, "pX":I
    const/4 v5, 0x1

    aget v5, v3, v5

    .line 2607
    .local v5, "pY":I
    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 2608
    .local v6, "screenshotW":I
    iget-object v7, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    .line 2609
    .local v7, "screenshotH":I
    iget-object v8, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 2610
    .local v8, "scaleX":F
    iget-object v9, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 2611
    .local v9, "scaleY":F
    int-to-float v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v8, v11

    div-float/2addr v10, v12

    int-to-float v12, v6

    div-float v19, v10, v12

    .line 2612
    .local v19, "scaleCenterX":F
    int-to-float v10, v5

    sub-float v11, v9, v11

    div-float/2addr v10, v11

    int-to-float v11, v7

    div-float v20, v10, v11

    .line 2614
    .local v20, "scaleCenterY":F
    new-instance v10, Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    .line 2615
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v11, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    iget-object v12, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v15, v10

    .line 2616
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2617
    move v14, v4

    .line 2618
    .local v14, "x":I
    move v13, v5

    .line 2619
    .local v13, "y":I
    invoke-virtual {v15, v14, v13, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2620
    iget-object v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2621
    iget-object v2, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v10, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2623
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v10, v2

    move v11, v8

    move/from16 v21, v13

    .end local v13    # "y":I
    .local v21, "y":I
    move v13, v9

    move/from16 v22, v14

    .end local v14    # "x":I
    .local v22, "x":I
    move/from16 v14, v16

    move-object/from16 v23, v15

    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .local v23, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v15, v17

    move/from16 v16, v19

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2624
    .local v2, "am":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v10, 0x12c

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2625
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->getSmallScreenAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2627
    iget-object v12, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationScreenshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2631
    iget-object v12, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getVisibility()I

    move-result v12

    if-nez v12, :cond_0

    .line 2632
    const/4 v12, 0x0

    .line 2633
    .local v12, "bX":I
    const/4 v13, 0x0

    .line 2634
    .local v13, "bY":I
    const/16 v14, 0xaa

    .line 2635
    .local v14, "distance":I
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v12

    int-to-float v11, v12

    move-object/from16 v18, v3

    .end local v3    # "position":[I
    .local v18, "position":[I
    add-int v3, v13, v14

    int-to-float v3, v3

    move/from16 v24, v4

    .end local v4    # "pX":I
    .local v24, "pX":I
    int-to-float v4, v13

    invoke-direct {v15, v10, v11, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v15

    .line 2636
    .local v3, "buttonAnitmaion":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v10, 0x12c

    invoke-virtual {v3, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2637
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->getSmallScreenAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2638
    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2631
    .end local v12    # "bX":I
    .end local v13    # "bY":I
    .end local v14    # "distance":I
    .end local v18    # "position":[I
    .end local v24    # "pX":I
    .local v3, "position":[I
    .restart local v4    # "pX":I
    :cond_0
    move-object/from16 v18, v3

    move/from16 v24, v4

    .line 2642
    .end local v3    # "position":[I
    .end local v4    # "pX":I
    .restart local v18    # "position":[I
    .restart local v24    # "pX":I
    :goto_0
    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$34;

    invoke-direct {v3, v0}, Lcom/oneplus/screenshot/GlobalScreenshot$34;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2676
    return-object v1
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "recyclebitmap"    # Z
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 1017
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;ZLjava/lang/Runnable;Z)V

    .line 1018
    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;ZLjava/lang/Runnable;Z)V
    .locals 5
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "recyclebitmap"    # Z
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .param p4, "finishaftersave"    # Z

    .line 1024
    new-instance v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 1025
    .local v0, "data":Lcom/oneplus/screenshot/SaveImageInBackgroundData;
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 1026
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 1027
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 1028
    iput-object p1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 1029
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 1030
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 1031
    iput-object p3, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finshRunnable:Ljava/lang/Runnable;

    .line 1033
    iput-boolean p4, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finishAfterSave:Z

    .line 1036
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$2;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    .line 1049
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1050
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1053
    :cond_0
    new-instance v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {v1, v3, v0, v4, p2}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;Z)V

    new-array v2, v2, [Ljava/lang/Void;

    .line 1054
    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    .line 1056
    return-void
.end method

.method private setWindowState(I)V
    .locals 2
    .param p1, "windowState"    # I

    .line 2723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setWindowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iput p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowState:I

    .line 2725
    return-void
.end method

.method private shareVia(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1957
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getViewIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1958
    .local v0, "shareIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1959
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    const-string v3, "screenshot"

    const-string v4, "share"

    invoke-static {v1, v3, v4, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v2, "footer_share_times"

    const-string v4, "1"

    invoke-static {v1, v3, v2, v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1965
    :cond_0
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "share intent isn\'t ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :goto_0
    return-void
.end method

.method private showLongshotGuider()V
    .locals 3

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show LongshotGuider, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 2195
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2200
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2201
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2205
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2207
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->writeGuiderPref(Z)V

    .line 2208
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZZ)V
    .locals 8
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z
    .param p6, "saveScreenshot"    # Z

    .line 1311
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->setWindowState(I)V

    .line 1313
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 1315
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1316
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->requestFocus()Z

    .line 1319
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 1320
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1321
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 1323
    :cond_0
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1327
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p6, :cond_2

    .line 1328
    invoke-direct {p0, p1, v3, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;ZLjava/lang/Runnable;)V

    .line 1333
    :cond_2
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1334
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    nop

    .line 1336
    .local v2, "topActivityPkg":Ljava/lang/String;
    :goto_0
    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v4, :cond_5

    if-eqz v2, :cond_4

    .line 1339
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->noHWButton()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1341
    const-string v4, "net.oneplus.launcher"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1342
    const-string v4, "net.oneplus.h2launcher"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1344
    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1352
    :cond_4
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7de

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    .line 1346
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7f4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1349
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1355
    :goto_2
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x11

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1356
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1360
    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v4, :cond_6

    .line 1361
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_3

    .line 1363
    :cond_6
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1367
    :goto_3
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v4, :cond_7

    .line 1371
    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-virtual {v4, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->registerKeyEventCallBack(Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;)V

    .line 1376
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->isNeedToShowGuider()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v4, :cond_8

    .line 1377
    iput-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    .line 1378
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$5;

    invoke-direct {v5, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$5;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    const-wide/16 v6, 0x1ae

    invoke-virtual {v4, v5, v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1387
    :cond_8
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    .line 1390
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1391
    .local v4, "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1393
    .local v5, "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 1396
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v6

    iput v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    .line 1399
    iput-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPlayEnlargeSmallAnimation:Z

    .line 1403
    iget v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 1404
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1405
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1407
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v0, :cond_b

    .line 1408
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v1, v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 1417
    :cond_9
    sget-boolean v6, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v6, :cond_a

    .line 1418
    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v3

    aput-object v5, v0, v1

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1419
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$6;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$6;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 1427
    :cond_a
    iput-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPlayEnlargeSmallAnimation:Z

    .line 1434
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$7;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$7;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1474
    return-void
.end method

.method private startEditMode()V
    .locals 3

    .line 2011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSimpleEditLauching:Z

    .line 2014
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2015
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStartEidtRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;ZLjava/lang/Runnable;)V

    .line 2016
    return-void
.end method

.method private takeLongshot()V
    .locals 5

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "takeLongshot, top:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideSoftInput()V

    .line 1997
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    const-string v3, "screenshot"

    const-string v4, "long"

    invoke-static {v0, v3, v4, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    .line 2000
    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    .line 2001
    .local v0, "sm":Lcom/oneplus/longshot/IOpLongScreenshotManager;
    if-eqz v0, :cond_0

    .line 2002
    iget-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    iget-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    invoke-interface {v0, v1, v2}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->takeLongshot(ZZ)V

    goto :goto_0

    .line 2004
    :cond_0
    const-string v2, "can\'t connect LongScreenshotManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :goto_0
    return-void
.end method

.method private updateSmall()V
    .locals 7

    .line 2500
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2501
    return-void

    .line 2503
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2506
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

    .line 2507
    .local v1, "marginRight":I
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2508
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2512
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v4, :cond_1

    .line 2513
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2514
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2515
    .local v3, "width":I
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 2516
    .local v4, "widthScale":F
    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-int v5, v5

    .line 2518
    .local v5, "height":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2519
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2520
    iget-object v6, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2523
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "width":I
    .end local v4    # "widthScale":F
    .end local v5    # "height":I
    :cond_1
    return-void
.end method

.method private writeGuiderPref(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 2223
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 2225
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2224
    const-string v1, "longshot_unsupport_guider_showed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2226
    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    goto :goto_0

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 2229
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2228
    const-string v1, "longshot_support_guider_showed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2230
    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    .line 2232
    :goto_0
    return-void
.end method


# virtual methods
.method public isGuiderShowing()Z
    .locals 1

    .line 2257
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.GlobalScreenshot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900b4

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1905
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1906
    .local v0, "it":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1908
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isDragged()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isIsReseting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1909
    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->supportNewEditMode:Z

    if-eqz v3, :cond_0

    .line 1911
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->unRegisterCallBack()V

    .line 1912
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onStop()V

    .line 1913
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshotLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1914
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->startEditMode()V

    goto :goto_0

    .line 1918
    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->setWindowState(I)V

    .line 1922
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenP:[I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1923
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenH:I

    .line 1924
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenW:I

    .line 1926
    invoke-direct {p0, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->endSmallScreenshotAnim(Z)V

    .line 1927
    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-boolean v7, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    iget-boolean v8, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZZ)V

    .line 1930
    :cond_1
    :goto_0
    return-void

    .line 1932
    .end local v0    # "it":Landroid/content/Intent;
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isDragged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->isIsReseting()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    if-nez v0, :cond_2

    .line 1933
    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->isLongshotRunning:Z

    .line 1935
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->unRegisterCallBack()V

    .line 1936
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenContorller:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;->onStop()V

    .line 1937
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshotLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1938
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1939
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeLongshot()V

    .line 1941
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1942
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1944
    :cond_2
    return-void

    .line 1883
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->shareVia(Landroid/content/Context;)V

    .line 1884
    goto :goto_1

    .line 1886
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->edit(Landroid/content/Context;)V

    .line 1887
    goto :goto_1

    .line 1889
    :pswitch_4
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->delete()V

    .line 1890
    goto :goto_1

    .line 1946
    :pswitch_5
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    .line 1947
    nop

    .line 1952
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    .line 1954
    return-void

    .line 1893
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    .line 1894
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$19;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$19;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1900
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090072
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090118
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2732
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2733
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-nez v0, :cond_0

    .line 2734
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    .line 2737
    :cond_0
    return-void
.end method

.method public playEditModeAnimation()V
    .locals 3

    .line 2026
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenP:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 2027
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenH:I

    .line 2028
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallscreenW:I

    .line 2029
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2030
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->requestFocus()Z

    .line 2033
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2034
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 2037
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 2040
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 2043
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7de

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2045
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2046
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2049
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2051
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2054
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$21;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$21;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2079
    return-void
.end method

.method public startSmallScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 8
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .line 2527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->setWindowState(I)V

    .line 2530
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenshot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2531
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 2532
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, " startSmallScreenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2536
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreenWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2538
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->updateSmall()V

    .line 2539
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 2540
    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v2, :cond_1

    :cond_0
    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 2543
    :cond_2
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    .line 2545
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2546
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v0, :cond_3

    .line 2547
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2549
    :cond_3
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHideSmallScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2553
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    .line 2554
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7f4

    const v6, 0x1000510

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2563
    .local v0, "animationWindowLp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2564
    const-string v1, "AnimationScreen"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2565
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2566
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimationWindow:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2569
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSmallScreen:Landroid/view/ViewGroup;

    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$33;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$33;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2595
    return-void
.end method

.method stopScreenshot()V
    .locals 2

    .line 1297
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1299
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 1301
    :cond_0
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 4
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .line 1238
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1239
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V

    .line 1240
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V
    .locals 22
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "crop"    # Landroid/graphics/Rect;

    .line 1080
    move-object/from16 v7, p0

    move-object/from16 v8, p4

    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->caculateWaterMarkShowTimes(Landroid/content/Context;)V

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSmallScreenshotBusy:Z

    .line 1085
    move/from16 v9, p3

    iput-boolean v9, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    .line 1086
    move/from16 v10, p2

    iput-boolean v10, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    .line 1089
    iget-object v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v11

    .line 1090
    .local v11, "rot":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 1091
    .local v12, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 1097
    .local v13, "height":I
    const/4 v1, 0x0

    .local v1, "x":I
    const/4 v2, 0x0

    .line 1098
    .local v2, "y":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .local v3, "cropWidth":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1099
    .local v4, "cropHeight":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeScreenshot mHeaderOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Longshot.GlobalScreenshot"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    sget v5, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    if-lez v5, :cond_4

    .line 1101
    iget-object v5, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 1102
    .local v5, "rotation":I
    if-eqz v5, :cond_3

    if-eq v5, v0, :cond_2

    const/4 v14, 0x2

    if-eq v5, v14, :cond_1

    const/4 v14, 0x3

    if-eq v5, v14, :cond_0

    .line 1124
    const/4 v1, 0x0

    .line 1125
    const/4 v2, 0x0

    goto :goto_0

    .line 1119
    :cond_0
    const/4 v1, 0x0

    .line 1120
    const/4 v2, 0x0

    .line 1121
    iget-object v14, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v15, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int v3, v14, v15

    .line 1122
    goto :goto_0

    .line 1114
    :cond_1
    const/4 v1, 0x0

    .line 1115
    const/4 v2, 0x0

    .line 1116
    iget-object v14, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v15, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int v4, v14, v15

    .line 1117
    goto :goto_0

    .line 1109
    :cond_2
    sget v1, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 1110
    const/4 v2, 0x0

    .line 1111
    iget-object v14, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v15, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int v3, v14, v15

    .line 1112
    goto :goto_0

    .line 1104
    :cond_3
    const/4 v1, 0x0

    .line 1105
    sget v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 1106
    iget-object v14, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v15, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int v4, v14, v15

    .line 1107
    nop

    .line 1128
    :goto_0
    invoke-static {v8, v12, v13, v11}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1129
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rotation:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", widthPixels:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v15, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", heightPixels:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .end local v5    # "rotation":I
    move v14, v1

    move v15, v2

    move v5, v3

    goto :goto_1

    .line 1131
    :cond_4
    invoke-static {v8, v12, v13, v11}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    move v14, v1

    move v15, v2

    move v5, v3

    .line 1135
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "cropWidth":I
    .local v5, "cropWidth":I
    .local v14, "x":I
    .local v15, "y":I
    :goto_1
    iget-object v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 1136
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7f0d003f

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 1138
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 1139
    return-void

    .line 1143
    :cond_5
    iget-object v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    .line 1144
    iget-object v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1145
    .local v3, "top":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-eqz v3, :cond_8

    .line 1146
    iget-object v2, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->isUnsupported(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 1148
    invoke-direct {v7, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->isRinging(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v0

    :goto_3
    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    goto :goto_4

    .line 1151
    :cond_8
    sput-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->sIsUnSupported:Z

    .line 1156
    :goto_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1157
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1158
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1161
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$1;)V

    iput-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    .line 1164
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$CloseReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1183
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v0, :cond_9

    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v0, :cond_a

    .line 1184
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crop x: y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cropWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cropHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v14, v15, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1187
    .local v0, "cropped":Landroid/graphics/Bitmap;
    iget-object v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1188
    iput-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1193
    .end local v0    # "cropped":Landroid/graphics/Bitmap;
    :cond_a
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isAddWatermark:Z

    if-eqz v0, :cond_b

    .line 1194
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/oneplus/screenshot/util/Utils;->addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1199
    :cond_b
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 1200
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 1203
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1204
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1205
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1207
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1210
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1216
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1217
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string v0, "oem_screenshot_sound_enable"

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 1218
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_5

    .line 1217
    :cond_c
    const/4 v1, 0x0

    .line 1223
    :goto_5
    iput-boolean v1, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsSimpleEditLauching:Z

    .line 1228
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v0, :cond_d

    .line 1229
    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, v7, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v16, 0x1

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    .end local v2    # "filter":Landroid/content/IntentFilter;
    .local v19, "filter":Landroid/content/IntentFilter;
    move/from16 v2, v18

    move-object/from16 v18, v3

    .end local v3    # "top":Landroid/content/ComponentName;
    .local v18, "top":Landroid/content/ComponentName;
    move/from16 v3, v17

    move/from16 v17, v4

    .end local v4    # "cropHeight":I
    .local v17, "cropHeight":I
    move/from16 v4, p2

    move/from16 v20, v5

    .end local v5    # "cropWidth":I
    .local v20, "cropWidth":I
    move/from16 v5, p3

    move-object/from16 v21, v6

    .end local v6    # "cr":Landroid/content/ContentResolver;
    .local v21, "cr":Landroid/content/ContentResolver;
    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZZ)V

    goto :goto_6

    .line 1232
    .end local v17    # "cropHeight":I
    .end local v18    # "top":Landroid/content/ComponentName;
    .end local v19    # "filter":Landroid/content/IntentFilter;
    .end local v20    # "cropWidth":I
    .end local v21    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "top":Landroid/content/ComponentName;
    .restart local v4    # "cropHeight":I
    .restart local v5    # "cropWidth":I
    .restart local v6    # "cr":Landroid/content/ContentResolver;
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move/from16 v17, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "top":Landroid/content/ComponentName;
    .end local v4    # "cropHeight":I
    .end local v5    # "cropWidth":I
    .end local v6    # "cr":Landroid/content/ContentResolver;
    .restart local v17    # "cropHeight":I
    .restart local v18    # "top":Landroid/content/ComponentName;
    .restart local v19    # "filter":Landroid/content/IntentFilter;
    .restart local v20    # "cropWidth":I
    .restart local v21    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p3}, Lcom/oneplus/screenshot/GlobalScreenshot;->startSmallScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 1235
    :goto_6
    return-void
.end method

.method takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
    .locals 3
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .line 1247
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/screenshot/GlobalScreenshot$3;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1283
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$4;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$4;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1290
    return-void
.end method

.method public updateLayout()V
    .locals 6

    .line 957
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 958
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 959
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 963
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c0004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    .line 966
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 967
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 968
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f09006f

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 969
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    .line 971
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setFocusable(Z)V

    .line 974
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f090070

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    .line 975
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f090075

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    .line 976
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 978
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f090074

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    .line 979
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 981
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f090073

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    .line 982
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 983
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 986
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f090071

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mHeader:Landroid/widget/RelativeLayout;

    .line 987
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v5, 0x7f090072

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    .line 988
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackIcon:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 992
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0900b6

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    .line 994
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 995
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v4, 0x7f0900b4

    invoke-virtual {v2, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    .line 996
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 998
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0900b5

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    .line 1002
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->initSmallScreen()V

    .line 1004
    return-void
.end method
