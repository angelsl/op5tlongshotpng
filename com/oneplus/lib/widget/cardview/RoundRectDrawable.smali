.class Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawable.java"


# instance fields
.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .param p1, "backgroundColor"    # I
    .param p2, "radius"    # F

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    .line 46
    iput p2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 51
    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 75
    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-eqz v0, :cond_1

    .line 81
    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPadding:F

    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    .line 82
    .local v0, "vInset":F
    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPadding:F

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    .line 83
    .local v1, "hInset":F
    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 85
    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 87
    .end local v0    # "vInset":F
    .end local v1    # "hInset":F
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 71
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 72
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 121
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 97
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 98
    return-void
.end method

.method getPadding()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPadding:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 125
    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 91
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 93
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 112
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 129
    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 131
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 117
    return-void
.end method

.method setPadding(FZZ)V
    .locals 1
    .param p1, "padding"    # F
    .param p2, "insetForPadding"    # Z
    .param p3, "insetForRadius"    # Z

    .line 54
    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mPadding:F

    .line 59
    iput-boolean p2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForPadding:Z

    .line 60
    iput-boolean p3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mInsetForRadius:Z

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 63
    return-void
.end method

.method setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 101
    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->mRadius:F

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->invalidateSelf()V

    .line 107
    return-void
.end method
