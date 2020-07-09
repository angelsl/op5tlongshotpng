.class public abstract Lcom/oneplus/lib/widget/OPAbsSeekBar;
.super Lcom/oneplus/lib/widget/OPProgressBar;
.source "OPAbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 43
    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    .line 65
    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 43
    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    .line 65
    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 43
    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    .line 45
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    .line 65
    iput v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    .line 89
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 92
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumb:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 93
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 95
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTintMode:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTintMode:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 98
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    .line 101
    :cond_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 103
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    .line 106
    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_splitTrack:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    .line 109
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbOffset:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getThumbOffset()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 110
    .local v0, "thumbOffset":I
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbOffset(I)V

    .line 112
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_useDisabledAlpha:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 119
    .local v1, "useDisabledAlpha":Z
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mDisabledAlpha:F

    .line 121
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    .line 125
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mScaledTouchSlop:I

    .line 126
    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 276
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 686
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 689
    :cond_0
    return-void
.end method

.method private getScale()F
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v0

    .line 443
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 643
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 644
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 647
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .line 456
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget v2, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 457
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 458
    .local v3, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 459
    .local v4, "thumbHeight":I
    sub-int/2addr v2, v3

    .line 462
    iget v5, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 464
    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 467
    .local v5, "thumbPos":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 469
    .local v6, "oldBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 470
    .local v7, "top":I
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 471
    .local v6, "bottom":I
    goto :goto_0

    .line 472
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    move/from16 v7, p4

    .line 473
    .restart local v7    # "top":I
    add-int v6, v1, v4

    .line 476
    .restart local v6    # "bottom":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_1

    sub-int v8, v2, v5

    goto :goto_1

    :cond_1
    move v8, v5

    .line 477
    .local v8, "left":I
    :goto_1
    add-int v9, v8, v3

    .line 479
    .local v9, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 480
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 481
    iget v11, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v12, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v11, v12

    .line 482
    .local v11, "offsetX":I
    iget v12, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    .line 483
    .local v12, "offsetY":I
    add-int v13, v8, v11

    add-int v14, v7, v12

    add-int v15, v9, v11

    add-int v0, v6, v12

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 488
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v7, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 489
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 650
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v0

    .line 651
    .local v0, "width":I
    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    .line 652
    .local v1, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 654
    .local v2, "x":I
    const/4 v3, 0x0

    .line 655
    .local v3, "progress":F
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_2

    .line 656
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int v4, v0, v4

    if-le v2, v4, :cond_0

    .line 657
    const/4 v4, 0x0

    .local v4, "scale":F
    goto :goto_0

    .line 658
    .end local v4    # "scale":F
    :cond_0
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    if-ge v2, v4, :cond_1

    .line 659
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_0

    .line 661
    .end local v4    # "scale":F
    :cond_1
    sub-int v4, v1, v2

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 662
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 665
    .end local v4    # "scale":F
    :cond_2
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    if-ge v2, v4, :cond_3

    .line 666
    const/4 v4, 0x0

    .restart local v4    # "scale":F
    goto :goto_0

    .line 667
    .end local v4    # "scale":F
    :cond_3
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int v4, v0, v4

    if-le v2, v4, :cond_4

    .line 668
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_0

    .line 670
    .end local v4    # "scale":F
    :cond_4
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 671
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchProgressOffset:F

    .line 674
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v5

    .line 675
    .local v5, "max":I
    int-to-float v6, v5

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    .line 677
    int-to-float v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setHotspot(FF)V

    .line 678
    float-to-int v6, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setProgressInternal(IZZ)Z

    .line 679
    return-void
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 409
    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 410
    .local v0, "paddedHeight":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 411
    .local v1, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 415
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMaxHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 416
    .local v3, "trackHeight":I
    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 421
    .local v5, "thumbHeight":I
    :goto_0
    if-le v5, v3, :cond_1

    .line 422
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 423
    .local v6, "offsetHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 424
    .local v7, "trackOffset":I
    add-int/2addr v6, v4

    .line 425
    .local v6, "thumbOffset":I
    goto :goto_1

    .line 426
    .end local v6    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_1
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 427
    .local v6, "offsetHeight":I
    add-int/lit8 v7, v6, 0x0

    .line 428
    .restart local v7    # "trackOffset":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    .line 431
    .local v6, "thumbOffset":I
    :goto_1
    if-eqz v1, :cond_2

    .line 432
    iget v8, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    .line 433
    .local v8, "trackWidth":I
    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    .end local v8    # "trackWidth":I
    :cond_2
    if-eqz v2, :cond_3

    .line 437
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 439
    :cond_3
    return-void
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 535
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 539
    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 540
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 543
    :cond_0
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 512
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 513
    .local v0, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_2

    .line 514
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 515
    .local v1, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->seekbar_thumb_optical_inset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 516
    .local v2, "insetEnabled":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->seekbar_thumb_optical_inset_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 517
    .local v3, "insetDisabled":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 518
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 519
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 520
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 523
    .local v4, "saveCount":I
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 524
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 525
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 526
    .end local v1    # "tempRect":Landroid/graphics/Rect;
    .end local v2    # "insetEnabled":I
    .end local v3    # "insetDisabled":I
    .end local v4    # "saveCount":I
    goto :goto_2

    .line 527
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 529
    :goto_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 379
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->drawableHotspotChanged(FF)V

    .line 381
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 384
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 364
    invoke-super {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->drawableStateChanged()V

    .line 366
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 367
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 372
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 375
    :cond_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 737
    const-class v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .line 565
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 566
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 567
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    const/4 v1, 0x1

    return v1

    .line 570
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 355
    invoke-super {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->jumpDrawablesToCurrentState()V

    .line 357
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 360
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 505
    :try_start_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 506
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    .line 504
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPAbsSeekBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onKeyChange()V
    .locals 0

    .line 710
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 714
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    .line 716
    .local v0, "increment":I
    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 718
    :cond_0
    neg-int v0, v0

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    neg-int v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    move v0, v1

    .line 724
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onKeyChange()V

    .line 726
    return v2

    .line 732
    .end local v0    # "increment":I
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 549
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 550
    .local v1, "thumbHeight":I
    :goto_0
    const/4 v3, 0x0

    .line 551
    .local v3, "dw":I
    const/4 v4, 0x0

    .line 552
    .local v4, "dh":I
    if-eqz v0, :cond_1

    .line 553
    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMinWidth:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 554
    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMinHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 555
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    .line 557
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPAbsSeekBar;
    :cond_1
    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 558
    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 560
    invoke-static {v3, p1, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    .line 561
    invoke-static {v4, p2, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->resolveSizeAndState(III)I

    move-result v2

    .line 560
    invoke-virtual {p0, v5, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 546
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "thumbHeight":I
    .end local v3    # "dw":I
    .end local v4    # "dh":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 388
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPProgressBar;->onProgressRefresh(FZI)V

    .line 390
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 391
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 397
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    .line 399
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 496
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->onResolveDrawables(I)V

    .line 498
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 501
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .line 742
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->onRtlPropertiesChanged(I)V

    .line 744
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 745
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 751
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    .line 753
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPProgressBar;->onSizeChanged(IIII)V

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 406
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    .line 696
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    .line 704
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 577
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 581
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    .line 632
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 633
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    .line 634
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    .line 636
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 597
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 598
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 600
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 601
    .local v0, "x":F
    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    .line 602
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    .line 603
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 604
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 606
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    .line 607
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 608
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->attemptClaimDrag()V

    .line 611
    .end local v0    # "x":F
    :cond_6
    goto :goto_1

    .line 614
    :cond_7
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_8

    .line 615
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 616
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    .line 617
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 621
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    .line 622
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 623
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    .line 628
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    .line 629
    goto :goto_1

    .line 583
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 584
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchDownX:F

    goto :goto_1

    .line 586
    :cond_a
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    .line 587
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 588
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 590
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    .line 591
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 592
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->attemptClaimDrag()V

    .line 594
    nop

    .line 639
    :goto_1
    return v2

    .line 578
    :cond_c
    :goto_2
    return v1
.end method

.method public setKeyProgressIncrement(I)V
    .locals 1
    .param p1, "increment"    # I

    .line 322
    if-gez p1, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    .line 323
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    monitor-enter p0

    .line 339
    :try_start_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setMax(I)V

    .line 341
    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 344
    .end local p0    # "this":Lcom/oneplus/lib/widget/OPAbsSeekBar;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_1
    monitor-exit p0

    return-void

    .line 338
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    .line 304
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    .line 305
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    .line 306
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 143
    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    goto :goto_0

    .line 145
    .end local v0    # "needUpdate":Z
    :cond_0
    const/4 v0, 0x0

    .line 148
    .restart local v0    # "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    .line 160
    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->requestLayout()V

    .line 167
    :cond_3
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    .line 172
    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 174
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 178
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 181
    .end local v1    # "state":[I
    :cond_4
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .line 292
    iput p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    .line 293
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    .line 294
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 208
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    .line 211
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    .line 212
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 239
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    .line 242
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    .line 243
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 350
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

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
