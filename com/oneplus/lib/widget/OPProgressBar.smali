.class public Lcom/oneplus/lib/widget/OPProgressBar;
.super Landroid/view/View;
.source "OPProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;,
        Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;,
        Lcom/oneplus/lib/widget/OPProgressBar$SavedState;,
        Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;,
        Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oneplus/lib/widget/OPProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/OPProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 263
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 2005
    new-instance v1, Lcom/oneplus/lib/widget/OPProgressBar$1;

    const-string v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/OPProgressBar$1;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 273
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    .line 274
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingBottom:I

    .line 277
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mUiThreadId:J

    .line 278
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->initProgressBar()V

    .line 280
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 283
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mNoInvalidate:Z

    .line 285
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressDrawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 286
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 290
    invoke-static {v3}, Lcom/oneplus/lib/widget/OPProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_1
    :goto_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateDuration:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    .line 300
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_minWidth:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    .line 301
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_maxWidth:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    .line 302
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_minHeight:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    .line 303
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_maxHeight:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    .line 305
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateBehavior:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    .line 307
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_interpolator:I

    const v5, 0x10a000b

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 310
    .local v4, "resID":I
    if-lez v4, :cond_2

    .line 311
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/OPProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 314
    :cond_2
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_max:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->setMax(I)V

    .line 316
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progress:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    .line 318
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgress:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V

    .line 321
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 323
    .local v5, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 324
    invoke-static {v5}, Lcom/oneplus/lib/widget/OPProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 325
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 327
    :cond_3
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_4
    :goto_1
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateOnly:I

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    .line 334
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mNoInvalidate:Z

    .line 336
    iget-boolean v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    if-nez v6, :cond_5

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminate:I

    iget-boolean v7, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminate(Z)V

    .line 339
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_mirrorForRtl:I

    iget-boolean v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    .line 341
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    .line 342
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_7

    .line 343
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 345
    :cond_7
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 350
    :cond_8
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_9

    .line 352
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 354
    :cond_9
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 356
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 359
    :cond_a
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 360
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_b

    .line 361
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 363
    :cond_b
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 365
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 368
    :cond_c
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 369
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_d

    .line 370
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 372
    :cond_d
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 377
    :cond_e
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 378
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_f

    .line 379
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 381
    :cond_f
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTintMode:I

    .line 382
    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 381
    invoke-static {v8, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 386
    :cond_10
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 387
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_11

    .line 388
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 390
    :cond_11
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 392
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 395
    :cond_12
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 396
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_13

    .line 397
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 399
    :cond_13
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 401
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 404
    :cond_14
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 405
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_15

    .line 406
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 408
    :cond_15
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTint:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 410
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 413
    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 415
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressTints()V

    .line 416
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 419
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 420
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->setImportantForAccessibility(I)V

    .line 422
    :cond_17
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;

    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/OPProgressBar;IIZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 195
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/OPProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p1, "x1"    # Z

    .line 195
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/OPProgressBar;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/OPProgressBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;

    .line 195
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mVisualProgress:F

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/lib/widget/OPProgressBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p1, "x1"    # F

    .line 195
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mVisualProgress:F

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 751
    .local v0, "tintInfo":Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 754
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 758
    :cond_1
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 759
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 765
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 769
    .end local v0    # "tintInfo":Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_3

    .line 867
    :cond_0
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 868
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 869
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 873
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 878
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 883
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 2

    .line 890
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_3

    .line 892
    :cond_0
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 893
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 894
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 895
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 898
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 903
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 904
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 908
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyPrimaryProgressTint()V

    .line 855
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressBackgroundTint()V

    .line 856
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applySecondaryProgressTint()V

    .line 858
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_3

    .line 917
    :cond_0
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 918
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 919
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 920
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 923
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 928
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 929
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 933
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    monitor-enter p0

    .line 1311
    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    if-lez v0, :cond_0

    int-to-float v0, p2

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :cond_0
    const/4 v0, 0x0

    .line 1312
    .local v0, "scale":F
    :goto_0
    const v1, 0x102000d

    if-ne p1, v1, :cond_1

    if-eqz p5, :cond_1

    .line 1313
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1314
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1315
    const-wide/16 v3, 0x50

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1316
    sget-object v3, Lcom/oneplus/lib/widget/OPProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1317
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1318
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_1

    .line 1319
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setVisualProgress(IF)V

    .line 1321
    :goto_1
    if-eqz p4, :cond_2

    if-ne p1, v1, :cond_2

    .line 1322
    invoke-virtual {p0, v0, p3, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1324
    :cond_2
    monitor-exit p0

    return-void

    .line 1310
    .end local v0    # "scale":F
    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "fromUser":Z
    .end local p4    # "callBackToApp":Z
    .end local p5    # "animate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .line 1187
    const/4 v0, 0x0

    .line 1189
    .local v0, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1190
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1191
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1193
    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1194
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1197
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1198
    move-object v0, v1

    .line 1202
    :cond_1
    return-object v0
.end method

.method private initProgressBar()V
    .locals 2

    .line 571
    const/16 v0, 0x64

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    .line 573
    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    .line 574
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    .line 575
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    .line 576
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    .line 577
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    .line 578
    const/16 v0, 0x18

    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    .line 579
    const/16 v1, 0x30

    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    .line 580
    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    .line 581
    iput v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    .line 582
    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 432
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 433
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 434
    .local v0, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    .line 435
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 436
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/lib/widget/OPProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    return v2

    .line 435
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 440
    .end local v4    # "i":I
    :cond_1
    return v1

    .line 456
    .end local v0    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "N":I
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 457
    return v2

    .line 460
    :cond_3
    return v1
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z

    monitor-enter p0

    .line 1366
    :try_start_0
    iget-wide v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1367
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZZ)V

    goto :goto_0

    .line 1369
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_1

    .line 1370
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    .line 1373
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->obtain(IIZZ)Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    move-result-object v0

    .line 1374
    .local v0, "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAttached:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_2

    .line 1376
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    .end local v0    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1365
    .end local p1    # "id":I
    .end local p2    # "progress":I
    .end local p3    # "fromUser":Z
    .end local p4    # "animate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 1957
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1958
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    goto :goto_0

    .line 1960
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1962
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1963
    return-void
.end method

.method private setVisualProgress(IF)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .line 1327
    iput p2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mVisualProgress:F

    .line 1329
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1330
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1331
    const/4 v1, 0x0

    .line 1333
    .local v1, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1334
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1335
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1340
    :cond_0
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 1341
    .local v2, "level":I
    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1342
    .end local v1    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "level":I
    goto :goto_1

    .line 1343
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->invalidate()V

    .line 1345
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->onVisualProgressChanged(IF)V

    .line 1346
    return-void
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 621
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 623
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    .line 624
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 628
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 631
    :cond_2
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .line 471
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 472
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 473
    .local v0, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 474
    .local v2, "N":I
    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    .line 476
    .local v3, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 477
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    .line 478
    .local v5, "id":I
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v5, v7, :cond_1

    const v7, 0x102000f

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v1

    :goto_2
    invoke-direct {p0, v6, v7}, Lcom/oneplus/lib/widget/OPProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    .line 476
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    .end local v4    # "i":I
    :cond_2
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 483
    .local v1, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_3

    .line 484
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 485
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 486
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 487
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 488
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 489
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 490
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 491
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 492
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 493
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 483
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 496
    .end local v4    # "i":I
    :cond_3
    return-object v1

    .line 510
    .end local v0    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "N":I
    .end local v3    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7

    .line 511
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 512
    .local v0, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 513
    .local v2, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 514
    iput-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 517
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 518
    .local v3, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 520
    if-eqz p2, :cond_6

    .line 521
    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v4

    .line 523
    :cond_6
    return-object v3

    .line 527
    .end local v0    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "tileBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    :cond_7
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 541
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 542
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 543
    .local v0, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 544
    .local v1, "N":I
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 545
    .local v2, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 547
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x2710

    if-ge v3, v1, :cond_0

    .line 548
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 549
    .local v5, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 550
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 547
    .end local v5    # "frame":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 553
    move-object p1, v2

    .line 555
    .end local v0    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "N":I
    .end local v2    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1696
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1697
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 1699
    move v0, p1

    .line 1700
    .local v0, "right":I
    move v1, p2

    .line 1701
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 1702
    .local v2, "top":I
    const/4 v3, 0x0

    .line 1704
    .local v3, "left":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1706
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v5, :cond_1

    .line 1709
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1710
    .local v4, "intrinsicWidth":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1711
    .local v5, "intrinsicHeight":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 1712
    .local v6, "intrinsicAspect":F
    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 1713
    .local v7, "boundAspect":F
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_1

    .line 1714
    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    .line 1716
    int-to-float v8, p2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 1717
    .local v8, "width":I
    sub-int v9, p1, v8

    div-int/lit8 v3, v9, 0x2

    .line 1718
    add-int v0, v3, v8

    .line 1719
    .end local v8    # "width":I
    goto :goto_0

    .line 1721
    :cond_0
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 1722
    .local v8, "height":I
    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    .line 1723
    .end local v2    # "top":I
    .local v9, "top":I
    add-int v1, v9, v8

    move v2, v9

    .line 1727
    .end local v4    # "intrinsicWidth":I
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicAspect":F
    .end local v7    # "boundAspect":F
    .end local v8    # "height":I
    .end local v9    # "top":I
    .restart local v2    # "top":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_2

    .line 1728
    move v4, v3

    .line 1729
    .local v4, "tempLeft":I
    sub-int v3, p1, v0

    .line 1730
    sub-int v0, p1, v4

    .line 1732
    .end local v4    # "tempLeft":I
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1735
    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 1736
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1738
    :cond_4
    return-void
.end method

.method private updateDrawableState()V
    .locals 5

    .line 1815
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1816
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 1818
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1819
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1820
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1823
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1824
    .local v3, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1825
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 1828
    :cond_1
    if-eqz v1, :cond_2

    .line 1829
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->invalidate()V

    .line 1831
    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1751
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1752
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1755
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1757
    .local v1, "saveCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_0

    .line 1758
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1759
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 1761
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1764
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 1765
    .local v2, "time":J
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 1766
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1767
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    .line 1769
    .local v4, "scale":F
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    .line 1770
    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    .line 1773
    nop

    .line 1774
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidateOnAnimation()V

    goto :goto_1

    .line 1772
    :catchall_0
    move-exception v6

    iput-boolean v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    throw v6

    .line 1777
    .end local v4    # "scale":F
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1778
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1780
    iget-boolean v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_2

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_2

    .line 1781
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1782
    iput-boolean v5, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1785
    .end local v1    # "saveCount":I
    .end local v2    # "time":J
    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1835
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1837
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1838
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1842
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1844
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1810
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1811
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableState()V

    .line 1812
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1946
    const-class v0, Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .line 531
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 532
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1506
    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1475
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1492
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    monitor-enter p0

    .line 1541
    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    monitor-exit p0

    return-void

    .line 1540
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    .end local p1    # "diff":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    monitor-enter p0

    .line 1552
    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    monitor-exit p0

    return-void

    .line 1551
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    .end local p1    # "diff":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 1674
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInDrawing:Z

    if-nez v0, :cond_1

    .line 1675
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1677
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    add-int/2addr v1, v2

    .line 1678
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    add-int/2addr v2, v3

    .line 1680
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/oneplus/lib/widget/OPProgressBar;->invalidate(IIII)V

    .line 1682
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    goto :goto_0

    .line 1683
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 591
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 1997
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1239
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1240
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1242
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .line 1908
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1909
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1910
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->startAnimation()V

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1913
    monitor-enter p0

    .line 1914
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1915
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1916
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    .line 1917
    .local v2, "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    iget v4, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    iget v5, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->animate:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZZ)V

    .line 1918
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->recycle()V

    .line 1915
    .end local v2    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1920
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1921
    .end local v0    # "count":I
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1923
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAttached:Z

    .line 1924
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1928
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1929
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->stopAnimation()V

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1932
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1933
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mRefreshIsPosted:Z

    .line 1935
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 1936
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1940
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1941
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAttached:Z

    .line 1942
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 1742
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1744
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    monitor-exit p0

    return-void

    .line 1741
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 1789
    const/4 v0, 0x0

    .line 1790
    .local v0, "dw":I
    const/4 v1, 0x0

    .line 1792
    .local v1, "dh":I
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1793
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1794
    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .line 1795
    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 1798
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableState()V

    .line 1800
    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 1801
    iget v3, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingTop:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1803
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .line 1804
    .local v4, "measuredWidth":I
    invoke-static {v1, p2, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .line 1805
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/oneplus/lib/widget/OPProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    monitor-exit p0

    return-void

    .line 1788
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 1362
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 1248
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1249
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1250
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1253
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1256
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1258
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1899
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;

    .line 1900
    .local v0, "ss":Lcom/oneplus/lib/widget/OPProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1902
    iget v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    .line 1903
    iget v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V

    .line 1904
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1888
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1889
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1891
    .local v1, "ss":Lcom/oneplus/lib/widget/OPProgressBar$SavedState;
    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    iput v2, v1, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->progress:I

    .line 1892
    iget v2, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    iput v2, v1, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->secondaryProgress:I

    .line 1894
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1690
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableBounds(II)V

    .line 1691
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 1638
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1640
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_2

    .line 1641
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAggregatedIsVisible:Z

    .line 1643
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1645
    if-eqz p1, :cond_0

    .line 1646
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->startAnimation()V

    goto :goto_0

    .line 1648
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->stopAnimation()V

    .line 1652
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1653
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1656
    :cond_2
    return-void
.end method

.method onVisualProgressChanged(IF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .line 1356
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .line 1262
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1263
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1265
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    monitor-enter p0

    .line 605
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_2

    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_2

    .line 606
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    .line 608
    if-eqz p1, :cond_1

    .line 610
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->startAnimation()V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->stopAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 604
    .end local p1    # "indeterminate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 654
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 655
    if-eqz v0, :cond_0

    .line 656
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 657
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 662
    if-eqz p1, :cond_2

    .line 663
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 664
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 665
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 668
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 671
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 672
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 676
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 783
    if-eqz p1, :cond_0

    .line 784
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 787
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 694
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 698
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 700
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 701
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 725
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 729
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 731
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyIndeterminateTint()V

    .line 732
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .line 1614
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1615
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1624
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1625
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    monitor-enter p0

    .line 1519
    if-gez p1, :cond_0

    .line 1520
    const/4 p1, 0x0

    .line 1522
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 1523
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    .line 1524
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 1526
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 1527
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    .line 1529
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->refreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    :cond_2
    monitor-exit p0

    return-void

    .line 1518
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    monitor-enter p0

    .line 1394
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    monitor-exit p0

    return-void

    .line 1393
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    .end local p1    # "progress":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressInternal(IZZ)Z

    .line 1410
    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1037
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1038
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1041
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1043
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1044
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressBackgroundTint()V

    .line 1046
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1072
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1076
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1078
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1079
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressBackgroundTint()V

    .line 1081
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 811
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 812
    if-eqz v0, :cond_0

    .line 813
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 814
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 819
    if-eqz p1, :cond_3

    .line 820
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 821
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 822
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 827
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 828
    .local v0, "drawableHeight":I
    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_2

    .line 829
    iput v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMaxHeight:I

    .line 830
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->requestLayout()V

    .line 833
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyProgressTints()V

    .line 836
    .end local v0    # "drawableHeight":I
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_4

    .line 837
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 838
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 841
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableBounds(II)V

    .line 842
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->updateDrawableState()V

    .line 844
    const v3, 0x102000d

    iget v4, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZZ)V

    .line 845
    const v9, 0x102000f

    iget v10, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/lib/widget/OPProgressBar;->doRefreshProgress(IIZZZ)V

    .line 847
    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1217
    if-eqz p1, :cond_0

    .line 1218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1221
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1222
    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    monitor-enter p0

    .line 1413
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1415
    monitor-exit p0

    return v1

    .line 1418
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    invoke-static {p1, v1, v0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v0

    move p1, v0

    .line 1420
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    .line 1422
    monitor-exit p0

    return v1

    .line 1425
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    .line 1426
    const v0, 0x102000d

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/oneplus/lib/widget/OPProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1427
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1412
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    .end local p1    # "progress":I
    .end local p2    # "fromUser":Z
    .end local p3    # "animate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 956
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 960
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 962
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 963
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyPrimaryProgressTint()V

    .line 965
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 991
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 995
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 997
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 998
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applyPrimaryProgressTint()V

    .line 1000
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    monitor-enter p0

    .line 1443
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1444
    monitor-exit p0

    return-void

    .line 1447
    :cond_0
    if-gez p1, :cond_1

    .line 1448
    const/4 p1, 0x0

    .line 1451
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    .line 1452
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mMax:I

    move p1, v0

    .line 1455
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPProgressBar;
    :cond_2
    iget v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    .line 1456
    iput p1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    .line 1457
    const v0, 0x102000f

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/oneplus/lib/widget/OPProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    :cond_3
    monitor-exit p0

    return-void

    .line 1442
    .end local p1    # "secondaryProgress":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1115
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1116
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1119
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1121
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1122
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applySecondaryProgressTint()V

    .line 1124
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1152
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1153
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1156
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1158
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1159
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->applySecondaryProgressTint()V

    .line 1161
    :cond_1
    return-void
.end method

.method startAnimation()V
    .locals 3

    .line 1559
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1564
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    goto :goto_2

    .line 1567
    :cond_1
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    .line 1569
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 1570
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1573
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 1574
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    goto :goto_0

    .line 1576
    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 1579
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1580
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    .line 1582
    :cond_4
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1585
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1586
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1587
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1588
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1589
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 1591
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 1592
    return-void

    .line 1560
    :cond_5
    :goto_3
    return-void
.end method

.method stopAnimation()V
    .locals 3

    .line 1598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mHasAnimation:Z

    .line 1599
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    .line 1600
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1601
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1603
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->postInvalidate()V

    .line 1604
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1233
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 1234
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1233
    :goto_1
    return v0
.end method
