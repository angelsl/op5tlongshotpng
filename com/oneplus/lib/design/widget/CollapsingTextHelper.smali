.class final Lcom/oneplus/lib/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedShadowColor:I

.field private mCollapsedShadowDx:F

.field private mCollapsedShadowDy:F

.field private mCollapsedShadowRadius:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedShadowColor:I

.field private mExpandedShadowDx:F

.field private mExpandedShadowDy:F

.field private mExpandedShadowRadius:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 51
    sget-object v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    sget-object v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0x10

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 66
    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 67
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 68
    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 111
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    .line 113
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    .line 118
    return-void
.end method

.method private static blendColors(IIF)I
    .locals 9
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 698
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 699
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 700
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 701
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 702
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 703
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets()V
    .locals 13

    .line 393
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 396
    .local v0, "currentTextSize":F
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 397
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 398
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 399
    .local v1, "width":F
    :goto_0
    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 400
    iget-boolean v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mIsRtl:Z

    .line 399
    invoke-static {v4, v5}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 401
    .local v4, "collapsedAbsGravity":I
    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    .line 410
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 411
    .local v5, "textHeight":F
    div-float v9, v5, v8

    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    .line 412
    .local v9, "textOffset":F
    iget-object v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    iput v10, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    goto :goto_1

    .line 403
    .end local v5    # "textHeight":F
    .end local v9    # "textOffset":F
    :cond_1
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 404
    goto :goto_1

    .line 406
    :cond_2
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    .line 407
    nop

    .line 415
    :goto_1
    const v5, 0x800007

    and-int v9, v4, v5

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eq v9, v11, :cond_4

    if-eq v9, v10, :cond_3

    .line 424
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iput v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    goto :goto_2

    .line 420
    :cond_3
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v1

    iput v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 421
    goto :goto_2

    .line 417
    :cond_4
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    div-float v12, v1, v8

    sub-float/2addr v9, v12

    iput v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    .line 418
    nop

    .line 428
    :goto_2
    iget v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-direct {p0, v9}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 429
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    .line 430
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v3, v9, v2, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move v1, v3

    .line 431
    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 432
    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mIsRtl:Z

    .line 431
    invoke-static {v2, v3}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 433
    .local v2, "expandedAbsGravity":I
    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    .line 442
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    .line 443
    .local v3, "textHeight":F
    div-float v6, v3, v8

    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 444
    .local v6, "textOffset":F
    iget-object v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    goto :goto_4

    .line 435
    .end local v3    # "textHeight":F
    .end local v6    # "textOffset":F
    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 436
    goto :goto_4

    .line 438
    :cond_7
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    .line 439
    nop

    .line 447
    :goto_4
    and-int v3, v2, v5

    if-eq v3, v11, :cond_9

    if-eq v3, v10, :cond_8

    .line 456
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    goto :goto_5

    .line 452
    :cond_8
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 453
    goto :goto_5

    .line 449
    :cond_9
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v1, v8

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    .line 450
    nop

    .line 461
    :goto_5
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 463
    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 464
    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    .line 345
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 346
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 522
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 524
    .local v0, "defaultIsRtl":Z
    if-eqz v0, :cond_1

    .line 525
    sget-object v2, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    .line 526
    :cond_1
    sget-object v2, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2, p1, v1, v3}, Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 524
    return v1
.end method

.method private calculateOffsets(F)V
    .locals 6
    .param p1, "fraction"    # F

    .line 349
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 350
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 352
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 355
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 358
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 362
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    .line 361
    invoke-static {v1, v2, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 368
    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 369
    invoke-static {v2, v4, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 370
    invoke-static {v4, v5, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 371
    invoke-static {v4, v5, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v4

    .line 367
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 373
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 374
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 10
    .param p1, "textSize"    # F

    .line 544
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 547
    .local v0, "collapsedWidth":F
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 551
    .local v1, "expandedWidth":F
    const/4 v2, 0x0

    .line 553
    .local v2, "updateDrawText":Z
    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    invoke-static {p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    .line 554
    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 555
    .local v3, "newTextSize":F
    iput v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    .line 556
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_1

    .line 557
    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 558
    const/4 v2, 0x1

    .line 560
    :cond_1
    move v5, v0

    .local v5, "availableWidth":F
    goto :goto_1

    .line 562
    .end local v3    # "newTextSize":F
    .end local v5    # "availableWidth":F
    :cond_2
    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 563
    .restart local v3    # "newTextSize":F
    iget-object v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_3

    .line 564
    iput-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 565
    const/4 v2, 0x1

    .line 567
    :cond_3
    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    invoke-static {p1, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 569
    iput v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    goto :goto_0

    .line 572
    :cond_4
    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float v5, p1, v5

    iput v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    .line 575
    :goto_0
    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    iget v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    div-float/2addr v5, v6

    .line 578
    .local v5, "textSizeRatio":F
    mul-float v6, v1, v5

    .line 580
    .local v6, "scaledDownWidth":F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_5

    .line 584
    div-float v7, v0, v5

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v5, v7

    .local v7, "availableWidth":F
    goto :goto_1

    .line 587
    .end local v7    # "availableWidth":F
    :cond_5
    move v5, v1

    .line 591
    .end local v6    # "scaledDownWidth":F
    .local v5, "availableWidth":F
    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_8

    .line 592
    iget v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v7

    :goto_3
    move v2, v6

    .line 593
    iput v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    .line 594
    iput-boolean v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 597
    :cond_8
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    if-eqz v2, :cond_b

    .line 598
    :cond_9
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTextSize:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 599
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 601
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    cmpl-float v4, v9, v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v7, v8

    :goto_4
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 604
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v5, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 606
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 607
    iput-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 608
    iget-object v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mIsRtl:Z

    .line 611
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_b
    return-void
.end method

.method private clearTexture()V
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 673
    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 10

    .line 614
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 615
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 619
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 620
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureAscent:F

    .line 621
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureDescent:F

    .line 623
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 624
    .local v0, "w":I
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureDescent:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 626
    .local v1, "h":I
    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 630
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 632
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 633
    .local v3, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    int-to-float v2, v1

    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float v8, v2, v8

    iget-object v9, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 635
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    .line 637
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    .line 639
    :cond_2
    return-void

    .line 627
    .end local v3    # "c":Landroid/graphics/Canvas;
    :cond_3
    :goto_0
    return-void

    .line 616
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_4
    :goto_1
    return-void
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getCurrentExpandedTextColor()I
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private interpolateBounds(F)V
    .locals 4
    .param p1, "fraction"    # F

    .line 467
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 469
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 471
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 473
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 475
    return-void
.end method

.method private static isClose(FF)Z
    .locals 2
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .line 680
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 708
    if-eqz p3, :cond_0

    .line 709
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 711
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/Utils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "resId"    # I

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10103ac

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "family":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 265
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    return-object v2

    .line 268
    .end local v1    # "family":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    nop

    .line 270
    const/4 v1, 0x0

    return-object v1

    .line 268
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 715
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 530
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 533
    sget-boolean v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mUseTexture:Z

    .line 535
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v0, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 541
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 480
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    if-eqz v1, :cond_5

    .line 481
    iget v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawX:F

    .line 482
    .local v1, "x":F
    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCurrentDrawY:F

    .line 484
    .local v2, "y":F
    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mUseTexture:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v9, v3

    .line 488
    .local v9, "drawTexture":Z
    if-eqz v9, :cond_1

    .line 489
    iget v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureAscent:F

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v3, v4

    .line 490
    .local v3, "ascent":F
    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextureDescent:F

    mul-float/2addr v5, v4

    move v10, v3

    move v11, v5

    .local v5, "descent":F
    goto :goto_1

    .line 492
    .end local v3    # "ascent":F
    .end local v5    # "descent":F
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v3, v4

    .line 493
    .restart local v3    # "ascent":F
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    mul-float/2addr v5, v4

    move v10, v3

    move v11, v5

    .line 502
    .end local v3    # "ascent":F
    .local v10, "ascent":F
    .local v11, "descent":F
    :goto_1
    if-eqz v9, :cond_2

    .line 503
    add-float/2addr v2, v10

    move v12, v2

    goto :goto_2

    .line 502
    :cond_2
    move v12, v2

    .line 506
    .end local v2    # "y":F
    .local v12, "y":F
    :goto_2
    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3

    .line 507
    invoke-virtual {p1, v2, v2, v1, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 510
    :cond_3
    if-eqz v9, :cond_4

    .line 512
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 514
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v6, v1

    move v7, v12

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 518
    .end local v1    # "x":F
    .end local v9    # "drawTexture":Z
    .end local v10    # "ascent":F
    .end local v11    # "descent":F
    .end local v12    # "y":F
    :cond_5
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 519
    return-void
.end method

.method getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCollapsedTextGravity()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 1

    .line 337
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    return v0
.end method

.method getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getExpandedTextGravity()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    return v0
.end method

.method getExpandedTextSize()F
    .locals 1

    .line 341
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    return v0
.end method

.method getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method getExpansionFraction()F
    .locals 1

    .line 333
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final isStateful()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0
.end method

.method onBoundsChanged()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mDrawTitle:Z

    .line 177
    return-void
.end method

.method public recalculate()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 646
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 648
    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 172
    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 202
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 208
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 213
    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowColor:I

    .line 215
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDx:F

    .line 217
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowDy:F

    .line 219
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedShadowRadius:F

    .line 221
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 224
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 228
    return-void
.end method

.method setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 145
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 146
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 149
    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 191
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 192
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextGravity:I

    .line 193
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 195
    :cond_0
    return-void
.end method

.method setCollapsedTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .line 138
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 139
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTextSize:F

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 142
    :cond_0
    return-void
.end method

.method setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 274
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 276
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 278
    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 159
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mBoundsChanged:Z

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 164
    :cond_0
    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 231
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 237
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    iget v2, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 242
    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowColor:I

    .line 244
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDx:F

    .line 246
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowDy:F

    .line 248
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedShadowRadius:F

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 253
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 257
    return-void
.end method

.method setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 152
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 154
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 156
    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 180
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 181
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextGravity:I

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 184
    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .line 131
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 132
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTextSize:F

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 135
    :cond_0
    return-void
.end method

.method setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 281
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 282
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 283
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 285
    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 308
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 310
    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 311
    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedFraction:F

    .line 312
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 314
    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 126
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 128
    return-void
.end method

.method final setState([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 317
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mState:[I

    .line 319
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 321
    const/4 v0, 0x1

    return v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 656
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mText:Ljava/lang/CharSequence;

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 659
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 660
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 662
    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 121
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 123
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 288
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    .line 290
    return-void
.end method
