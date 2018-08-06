.class public Lcom/oneplus/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/GlobalScreenshot$1;,
        Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;,
        Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    }
.end annotation


# static fields
.field public static ALERTS:Ljava/lang/String; = null

.field private static final BACKGROUND_ALPHA:F = 0.7f

.field private static final LONGSHOT_DROP_OUT_DELAY:I = 0x9c4

.field private static final LONGSHOT_SUPPORT_GUIDER_SHOWED:Ljava/lang/String; = "longshot_support_guider_showed"

.field private static final LONGSHOT_UNSUPPORT_GUIDER_SHOWED:Ljava/lang/String; = "longshot_unsupport_guider_showed"

.field private static final OP_GALLERY_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field public static SCREENSHOTS:Ljava/lang/String; = null

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

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalScreenshot"

.field public static mLastImageTime:J


# instance fields
.field private mAnimScale:F

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

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

.field private mIsBusy:Z

.field private mIsLongShotStarted:Z

.field private mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

.field private mLongshotIcon:Landroid/widget/ImageView;

.field private mLongshotSupportGuiderShowed:Z

.field private mLongshotUnSupportGuiderShowed:Z

.field private mNavBarVisible:Z

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

.field private mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mShareIcon:Landroid/widget/ImageButton;

.field private mStatusBarVisible:Z

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/screenshot/GlobalScreenshot;)F
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic -get10(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    return-object v0
.end method

.method static synthetic -get14(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/ScreenshotSelectorView;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get16(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get17(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/screenshot/GlobalScreenshot;)Z
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    return v0
.end method

.method static synthetic -get9(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p1, "-value"    # Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    .prologue
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p1, "-value"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .registers 1
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .registers 1
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .registers 1
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .registers 1
    .param p0, "-this"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->showLongshotGuider()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 592
    const-string/jumbo v0, "SCN"

    sput-object v0, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    .line 593
    const-string/jumbo v0, "ALR"

    sput-object v0, Lcom/oneplus/screenshot/GlobalScreenshot;->ALERTS:Ljava/lang/String;

    .line 504
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsLongShotStarted:Z

    .line 578
    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    .line 1227
    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 605
    .local v12, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 607
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 606
    check-cast v9, Landroid/view/LayoutInflater;

    .line 610
    .local v9, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 613
    const v0, 0x7f030001

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    .line 616
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 617
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 618
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 619
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    .line 620
    const v1, 0x7f0b000a

    .line 619
    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    .line 621
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setFocusable(Z)V

    .line 624
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    .line 625
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    .line 626
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    .line 629
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    .line 632
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 634
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    .line 635
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 640
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    .line 642
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 643
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    .line 644
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    .line 649
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "longshot_support_guider_showed"

    const/4 v2, 0x0

    .line 648
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 649
    const/4 v1, 0x1

    .line 648
    if-ne v0, v1, :cond_21e

    const/4 v0, 0x1

    :goto_133
    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    .line 651
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "longshot_unsupport_guider_showed"

    const/4 v2, 0x0

    .line 650
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 651
    const/4 v1, 0x1

    .line 650
    if-ne v0, v1, :cond_221

    const/4 v0, 0x1

    :goto_147
    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    .line 654
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setFocusable(Z)V

    .line 655
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setFocusableInTouchMode(Z)V

    .line 656
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$2;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$2;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 665
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 666
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 669
    const/16 v5, 0x7de

    .line 674
    const v6, 0x1080100

    .line 677
    const/4 v7, -0x3

    .line 665
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 678
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 679
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 681
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 680
    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 682
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 683
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 684
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 688
    const v0, 0x1050006

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 687
    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 691
    const v0, 0x7f070077

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 692
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 695
    const/4 v11, 0x0

    .line 697
    .local v11, "panelWidth":I
    const v0, 0x7f070075

    :try_start_1c5
    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1c8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c5 .. :try_end_1c8} :catch_224

    move-result v11

    .line 700
    :goto_1c9
    if-gtz v11, :cond_1cf

    .line 702
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 704
    :cond_1cf
    iput v11, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    .line 705
    const v0, 0x7f070076

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    .line 708
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 709
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 712
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 713
    .local v10, "nm":Landroid/app/NotificationManager;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/NotificationChannel;

    .line 714
    new-instance v1, Landroid/app/NotificationChannel;

    .line 715
    sget-object v2, Lcom/oneplus/screenshot/GlobalScreenshot;->SCREENSHOTS:Ljava/lang/String;

    .line 716
    const v3, 0x7f0c001e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 717
    const/4 v4, 0x2

    .line 714
    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 718
    new-instance v1, Landroid/app/NotificationChannel;

    .line 719
    sget-object v2, Lcom/oneplus/screenshot/GlobalScreenshot;->ALERTS:Ljava/lang/String;

    .line 720
    const v3, 0x10403c8

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 721
    const/4 v4, 0x4

    .line 718
    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 713
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    .line 724
    return-void

    .line 648
    .end local v10    # "nm":Landroid/app/NotificationManager;
    .end local v11    # "panelWidth":I
    :cond_21e
    const/4 v0, 0x0

    goto/16 :goto_133

    .line 650
    :cond_221
    const/4 v0, 0x0

    goto/16 :goto_147

    .line 698
    .restart local v11    # "panelWidth":I
    :catch_224
    move-exception v8

    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_1c9
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .registers 9

    .prologue
    .line 1297
    const v3, 0x3e9aca6b

    .line 1299
    .local v3, "flashPeakDurationPct":F
    const v2, 0x3f1aca6b

    .line 1300
    .local v2, "flashDurationPct":F
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$9;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$9;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1310
    .local v1, "flashAlphaInterpolator":Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$10;

    invoke-direct {v4, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$10;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1320
    .local v4, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_30

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1321
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x1ae

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1322
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$11;

    invoke-direct {v5, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$11;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1352
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$12;

    invoke-direct {v5, p0, v4, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$12;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1366
    return-object v0

    .line 1320
    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .registers 15
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    .line 1370
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_7e

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1373
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-boolean v7, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    if-eqz v7, :cond_30

    .line 1374
    const-wide/32 v8, 0x7fffffff

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1382
    :goto_14
    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$13;

    invoke-direct {v7, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$13;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1391
    if-eqz p3, :cond_22

    xor-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_40

    .line 1393
    :cond_22
    const-wide/16 v8, 0x140

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1394
    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$14;

    invoke-direct {v7, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$14;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1447
    :goto_2f
    return-object v0

    .line 1376
    :cond_30
    sget-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v7, :cond_3a

    .line 1377
    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_14

    .line 1379
    :cond_3a
    const-wide/16 v8, 0x9c4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_14

    .line 1408
    :cond_40
    const v5, 0x3f5c4771

    .line 1410
    .local v5, "scaleDurationPct":F
    new-instance v6, Lcom/oneplus/screenshot/GlobalScreenshot$15;

    invoke-direct {v6, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$15;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1422
    .local v6, "scaleInterpolator":Landroid/view/animation/Interpolator;
    int-to-float v7, p1

    iget v8, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 1423
    .local v3, "halfScreenWidth":F
    int-to-float v7, p2

    iget v8, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 1424
    .local v2, "halfScreenHeight":F
    const/4 v4, 0x0

    .line 1425
    .local v4, "offsetPct":F
    new-instance v1, Landroid/graphics/PointF;

    .line 1426
    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    .line 1427
    neg-float v8, v2

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 1425
    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1430
    .local v1, "finalPos":Landroid/graphics/PointF;
    const-wide/16 v8, 0x1ae

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1431
    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$16;

    invoke-direct {v7, p0, v6, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$16;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2f

    .line 1370
    :array_7e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private delete()V
    .registers 5

    .prologue
    .line 1570
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v2, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 1572
    .local v0, "delete":Landroid/app/PendingIntent;
    if-eqz v0, :cond_e

    .line 1573
    :try_start_a
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 1580
    :goto_d
    return-void

    .line 1575
    :cond_e
    const-string/jumbo v2, "Longshot.GlobalScreenshot"

    const-string/jumbo v3, "delete intent isn\'t ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_d

    .line 1577
    :catch_18
    move-exception v1

    .line 1578
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_d
.end method

.method private edit(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screenshot"

    const-string/jumbo v2, "edit"

    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "com.oneplus.gallery"

    const-string/jumbo v3, "com.oneplus.gallery.PhotoEditorActivity"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1588
    return-void
.end method

.method private endScreenshotAnim()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1235
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_12

    .line 1236
    return-void

    :cond_10
    move v0, v1

    .line 1235
    goto :goto_d

    .line 1238
    :cond_12
    const-string/jumbo v0, "Longshot.GlobalScreenshot"

    const-string/jumbo v2, "endScreenshotAnim"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1242
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1247
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_36

    return-void

    .line 1251
    :cond_36
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    .line 1256
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1260
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    if-eqz v0, :cond_51

    .line 1262
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1263
    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    .line 1268
    :cond_51
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v0, :cond_5a

    .line 1269
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->unregisterKeyEventCallBack()V

    .line 1274
    :cond_5a
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_67

    .line 1275
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1279
    :cond_67
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_70

    .line 1280
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1283
    :cond_70
    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 1284
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1285
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1286
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1287
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1288
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1290
    iput-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 1292
    iput v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    .line 1293
    return-void
.end method

.method private getDegreesForRotation(I)F
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 846
    packed-switch p1, :pswitch_data_e

    .line 854
    const/4 v0, 0x0

    return v0

    .line 848
    :pswitch_5
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    .line 850
    :pswitch_8
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 852
    :pswitch_b
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    .line 846
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private hideLongshotGuider()V
    .registers 3

    .prologue
    .line 1649
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    if-nez v0, :cond_5

    return-void

    .line 1651
    :cond_5
    const-string/jumbo v0, "Longshot.GlobalScreenshot"

    const-string/jumbo v1, "hide LongshotGuider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1c

    .line 1653
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    .line 1656
    :cond_1c
    return-void
.end method

.method private hideScreenshotLayout()V
    .registers 3

    .prologue
    .line 1679
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 1680
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    .line 1684
    :cond_b
    :goto_b
    return-void

    .line 1681
    :cond_c
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_b

    .line 1682
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_b
.end method

.method private hideSoftInput()V
    .registers 5

    .prologue
    .line 1607
    :try_start_0
    const-string/jumbo v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1606
    invoke-static {v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 1608
    .local v1, "iimm":Lcom/android/internal/view/IInputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 1613
    .end local v1    # "iimm":Lcom/android/internal/view/IInputMethodManager;
    :goto_10
    return-void

    .line 1609
    :catch_11
    move-exception v0

    .line 1611
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Longshot.GlobalScreenshot"

    const-string/jumbo v3, "hide ime failed, "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private isBusy()Z
    .registers 2

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private isNeedToShowGuider()Z
    .registers 2

    .prologue
    .line 1671
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-eqz v0, :cond_9

    .line 1672
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1674
    :cond_9
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isRinging(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 751
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 752
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const/4 v0, 0x1

    .line 753
    .local v0, "ringing":Z
    :goto_11
    return v0

    .line 752
    .end local v0    # "ringing":Z
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "ringing":Z
    goto :goto_11
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nManager"    # Landroid/app/NotificationManager;
    .param p2, "msgResId"    # I

    .prologue
    .line 1451
    const-string/jumbo v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyScreenshotError, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1454
    .local v11, "r":Landroid/content/res/Resources;
    invoke-virtual {v11, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1458
    .local v8, "errorMsg":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/oneplus/screenshot/GlobalScreenshot;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1460
    const v1, 0x7f0c0019

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1461
    const v1, 0x7f0c0019

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1463
    const v1, 0x7f020031

    .line 1458
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1458
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1465
    const/4 v1, 0x1

    .line 1458
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1466
    const-string/jumbo v1, "err"

    .line 1458
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1467
    const/4 v1, 0x1

    .line 1458
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1469
    const v1, 0x106014c

    .line 1468
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 1458
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1471
    .local v6, "b":Landroid/app/Notification$Builder;
    const-string/jumbo v0, "device_policy"

    .line 1470
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 1472
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v7, :cond_94

    .line 1474
    const-string/jumbo v0, "policy_disable_screen_capture"

    .line 1473
    invoke-virtual {v7, v0}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1475
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_94

    .line 1477
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 1476
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1478
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1483
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_94
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1486
    .local v9, "n":Landroid/app/Notification;
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1487
    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "finisher"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 812
    new-instance v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 813
    .local v0, "data":Lcom/oneplus/screenshot/SaveImageInBackgroundData;
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 815
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_CLOSE_BETA:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/oneplus/screenshot/util/Utils;->addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_14
    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 817
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 818
    iput-object p1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 819
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 820
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 822
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$3;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$3;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    .line 835
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_34

    .line 836
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 838
    :cond_34
    new-instance v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {v1, v2, v0, v3}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    .line 840
    return-void

    .line 815
    :cond_46
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_14
.end method

.method private shareVia(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getViewIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1560
    .local v0, "shareIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1b

    .line 1561
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screenshot"

    const-string/jumbo v3, "share"

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1566
    :goto_1a
    return-void

    .line 1564
    :cond_1b
    const-string/jumbo v1, "Longshot.GlobalScreenshot"

    const-string/jumbo v2, "share intent isn\'t ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private showLongshotGuider()V
    .registers 4

    .prologue
    .line 1632
    const-string/jumbo v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show LongshotGuider, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_46

    .line 1635
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-eqz v0, :cond_54

    .line 1636
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1640
    :goto_32
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1644
    :cond_46
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1645
    :cond_4f
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->writeGuiderPref(Z)V

    .line 1646
    return-void

    .line 1638
    :cond_54
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .registers 15
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1060
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1061
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->requestFocus()Z

    .line 1064
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_23

    .line 1065
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1066
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 1068
    :cond_1e
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1071
    :cond_23
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    .line 1075
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_dc

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1077
    :goto_34
    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v3, :cond_5b

    .line 1078
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->noHWButton()Z

    move-result v3

    if-eqz v3, :cond_df

    if-eqz v2, :cond_df

    .line 1079
    const-string/jumbo v3, "net.oneplus.launcher"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1080
    const-string/jumbo v3, "net.oneplus.h2launcher"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1079
    if-nez v3, :cond_5b

    .line 1082
    const-string/jumbo v3, "com.google.android.setupwizard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1077
    if-eqz v3, :cond_df

    .line 1084
    :cond_5b
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7f4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1087
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1094
    :goto_69
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v5, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v3, :cond_7d

    .line 1098
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->registerKeyEventCallBack(Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;)V

    .line 1103
    :cond_7d
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->isNeedToShowGuider()Z

    move-result v3

    if-eqz v3, :cond_99

    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_99

    .line 1104
    iput-boolean v8, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    .line 1105
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    .line 1106
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$6;

    invoke-direct {v4, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$6;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1111
    const-wide/16 v6, 0x1ae

    .line 1106
    invoke-virtual {v3, v4, v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1115
    :cond_99
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1116
    .local v0, "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1118
    .local v1, "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 1121
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    iput v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    .line 1123
    iget v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f0

    .line 1124
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1126
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1127
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    .line 1128
    sget-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v3, :cond_e6

    .line 1129
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1200
    :goto_d1
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$8;

    invoke-direct {v4, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$8;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1224
    return-void

    .line 1075
    .end local v0    # "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    .end local v1    # "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    :cond_dc
    const/4 v2, 0x0

    .local v2, "topActivityPkg":Ljava/lang/String;
    goto/16 :goto_34

    .line 1090
    .end local v2    # "topActivityPkg":Ljava/lang/String;
    :cond_df
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7de

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_69

    .line 1131
    .restart local v0    # "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    .restart local v1    # "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    :cond_e6
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x9c4

    invoke-virtual {v3, v4, v6, v7}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d1

    .line 1136
    :cond_f0
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1137
    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$7;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$7;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_d1
.end method

.method private takeLongshot()V
    .registers 6

    .prologue
    .line 1592
    const-string/jumbo v1, "Longshot.GlobalScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeLongshot, top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideSoftInput()V

    .line 1596
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screenshot"

    const-string/jumbo v3, "long"

    sget-object v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "longshot"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1598
    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 1600
    .local v0, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v0, :cond_40

    iget-boolean v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    iget-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/longshot/LongScreenshotManager;->takeLongshot(ZZ)V

    .line 1601
    :cond_40
    return-void
.end method

.method private writeGuiderPref(Z)V
    .registers 6
    .param p1, "value"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1659
    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-eqz v2, :cond_19

    .line 1661
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "longshot_unsupport_guider_showed"

    if-eqz p1, :cond_17

    .line 1660
    :goto_11
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1662
    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotUnSupportGuiderShowed:Z

    .line 1668
    :goto_16
    return-void

    :cond_17
    move v0, v1

    .line 1661
    goto :goto_11

    .line 1665
    :cond_19
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "longshot_support_guider_showed"

    if-eqz p1, :cond_2a

    .line 1664
    :goto_24
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1666
    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotSupportGuiderShowed:Z

    goto :goto_16

    :cond_2a
    move v0, v1

    .line 1665
    goto :goto_24
.end method


# virtual methods
.method public isGuiderShowing()Z
    .registers 2

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1526
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 1554
    :goto_7
    :pswitch_7
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    .line 1556
    return-void

    .line 1528
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->shareVia(Landroid/content/Context;)V

    goto :goto_7

    .line 1531
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->edit(Landroid/content/Context;)V

    goto :goto_7

    .line 1534
    :pswitch_1b
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->delete()V

    .line 1535
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    .line 1536
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeLongshot()V

    goto :goto_7

    .line 1539
    :pswitch_25
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->delete()V

    goto :goto_7

    .line 1543
    :pswitch_29
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideLongshotGuider()V

    .line 1544
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$17;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$17;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1549
    const-wide/16 v2, 0x3e8

    .line 1544
    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1550
    return-void

    .line 1526
    nop

    :pswitch_data_3a
    .packed-switch 0x7f0b000c
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_25
        :pswitch_7
        :pswitch_7
        :pswitch_29
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1694
    if-eqz p1, :cond_e

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1695
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    if-nez v0, :cond_e

    .line 1696
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->hideScreenshotLayout()V

    .line 1699
    :cond_e
    return-void
.end method

.method stopScreenshot()V
    .registers 3

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1049
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1050
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 1052
    :cond_14
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .registers 12
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 989
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 990
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 991
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 990
    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZIIII)V

    .line 992
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZIIII)V
    .registers 27
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 864
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 865
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    .line 866
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 872
    const/4 v4, 0x2

    new-array v13, v4, [F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v13, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v13, v5

    .line 873
    .local v13, "dims":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v12

    .line 874
    .local v12, "degrees":F
    const/4 v4, 0x0

    cmpl-float v4, v12, v4

    if-lez v4, :cond_ec

    const/4 v15, 0x1

    .line 875
    .local v15, "requiresRotation":Z
    :goto_47
    if-eqz v15, :cond_73

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v5, v12

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 880
    const/4 v4, 0x0

    aget v4, v13, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v13, v5

    .line 881
    const/4 v4, 0x1

    aget v4, v13, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x1

    aput v4, v13, v5

    .line 885
    :cond_73
    sget v4, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    if-lez v4, :cond_12e

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v16

    .line 887
    .local v16, "rotation":I
    packed-switch v16, :pswitch_data_274

    .line 909
    const/16 p4, 0x0

    .line 910
    const/16 p5, 0x0

    .line 913
    :goto_86
    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v13, v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 914
    const-string/jumbo v4, "Longshot.GlobalScreenshot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rotation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", widthPixels:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", heightPixels:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v16    # "rotation":I
    :goto_d4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_13f

    .line 920
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 921
    const v6, 0x7f0c001c

    .line 920
    invoke-static {v4, v5, v6}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 922
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 923
    return-void

    .line 874
    .end local v15    # "requiresRotation":Z
    :cond_ec
    const/4 v15, 0x0

    .restart local v15    # "requiresRotation":Z
    goto/16 :goto_47

    .line 889
    .restart local v16    # "rotation":I
    :pswitch_ef
    const/16 p4, 0x0

    .line 890
    sget p5, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v5, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int p7, v4, v5

    .line 892
    goto :goto_86

    .line 894
    :pswitch_fe
    sget p4, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 895
    const/16 p5, 0x0

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v5, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int p6, v4, v5

    .line 897
    goto/16 :goto_86

    .line 899
    :pswitch_10e
    const/16 p4, 0x0

    .line 900
    const/16 p5, 0x0

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v5, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int p7, v4, v5

    .line 902
    goto/16 :goto_86

    .line 904
    :pswitch_11e
    const/16 p4, 0x0

    .line 905
    const/16 p5, 0x0

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v5, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    sub-int p6, v4, v5

    .line 907
    goto/16 :goto_86

    .line 916
    .end local v16    # "rotation":I
    :cond_12e
    const/4 v4, 0x0

    aget v4, v13, v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v13, v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_d4

    .line 927
    :cond_13f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v18

    .line 929
    .local v18, "top":Landroid/content/ComponentName;
    if-eqz v18, :cond_26e

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->isUnsupported(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_26b

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->isRinging(Landroid/content/Context;)Z

    move-result v4

    .line 930
    :goto_166
    sput-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    .line 940
    :goto_168
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 941
    .local v14, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 942
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 944
    const-string/jumbo v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v14, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 945
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    invoke-virtual {v4, v5, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 950
    if-eqz v15, :cond_1f5

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 952
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 954
    .local v17, "ss":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 955
    .local v10, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 956
    invoke-virtual {v10, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 957
    const/4 v4, 0x0

    aget v4, v13, v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v13, v5

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 959
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 962
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 965
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v17    # "ss":Landroid/graphics/Bitmap;
    :cond_1f5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, p6

    if-ne v0, v4, :cond_209

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, p7

    if-eq v0, v4, :cond_224

    .line 967
    :cond_209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 968
    .local v11, "cropped":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 969
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 973
    .end local v11    # "cropped":Landroid/graphics/Bitmap;
    :cond_224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 977
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V

    .line 986
    return-void

    .line 930
    .end local v14    # "filter":Landroid/content/IntentFilter;
    :cond_26b
    const/4 v4, 0x1

    goto/16 :goto_166

    .line 935
    :cond_26e
    const/4 v4, 0x0

    sput-boolean v4, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    goto/16 :goto_168

    .line 887
    nop

    :pswitch_data_274
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_fe
        :pswitch_10e
        :pswitch_11e
    .end packed-switch
.end method

.method takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
    .registers 7
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    .line 999
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oneplus/screenshot/GlobalScreenshot$4;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/ScreenshotSelectorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1034
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$5;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$5;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1041
    return-void
.end method

.method public updateLayout()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 759
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 761
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 760
    check-cast v0, Landroid/view/LayoutInflater;

    .line 765
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    .line 768
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 769
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 770
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 771
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    .line 772
    const v3, 0x7f0b000a

    .line 771
    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/screenshot/ScreenshotSelectorView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/oneplus/screenshot/ScreenshotSelectorView;

    .line 773
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v2, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setFocusable(Z)V

    .line 776
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    .line 777
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    .line 778
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 780
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    .line 781
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 783
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    .line 784
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 786
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    .line 787
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 792
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    .line 794
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuiderHost:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 795
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    .line 796
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 798
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mGuideText:Landroid/widget/TextView;

    .line 800
    return-void
.end method
