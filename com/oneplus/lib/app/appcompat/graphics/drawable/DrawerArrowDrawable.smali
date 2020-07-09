.class public Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 130
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 125
    const/4 v1, 0x2

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 131
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 133
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle:[I

    sget v4, Lcom/oneplus/commonctrl/R$attr;->opDrawerArrowStyle:I

    sget v5, Lcom/oneplus/commonctrl/R$style;->OPBase_Widget_AppCompat_DrawerArrowToggle:I

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 140
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 141
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_thickness:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 142
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 144
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 146
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    .line 148
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_barLength:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 150
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 152
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 153
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "t"    # F

    .line 467
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 331
    .local v2, "bounds":Landroid/graphics/Rect;
    iget v3, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v3, v5, :cond_1

    .line 344
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v6, v4

    :cond_0
    move v3, v6

    .local v3, "flipToPointRight":Z
    goto :goto_0

    .line 339
    .end local v3    # "flipToPointRight":Z
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_2

    move v6, v4

    :cond_2
    move v3, v6

    .line 341
    .restart local v3    # "flipToPointRight":Z
    goto :goto_0

    .line 336
    .end local v3    # "flipToPointRight":Z
    :cond_3
    const/4 v3, 0x1

    .line 337
    .restart local v3    # "flipToPointRight":Z
    goto :goto_0

    .line 333
    .end local v3    # "flipToPointRight":Z
    :cond_4
    const/4 v3, 0x0

    .line 334
    .restart local v3    # "flipToPointRight":Z
    nop

    .line 351
    :goto_0
    iget v5, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    mul-float/2addr v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 352
    .local v5, "arrowHeadBarLength":F
    iget v7, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v8, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v5, v8}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 353
    iget v7, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    iget v8, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    iget v9, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v7, v8, v9}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v7

    .line 355
    .local v7, "arrowShaftLength":F
    iget v8, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    iget v9, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    const/4 v10, 0x0

    invoke-static {v10, v8, v9}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 357
    .local v8, "arrowShaftCut":F
    sget v9, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    iget v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v10, v9, v11}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v9

    .line 360
    .local v9, "rotation":F
    if-eqz v3, :cond_5

    move v11, v10

    goto :goto_1

    :cond_5
    const/high16 v11, -0x3ccc0000    # -180.0f

    .line 361
    :goto_1
    const/high16 v12, 0x43340000    # 180.0f

    if-eqz v3, :cond_6

    move v13, v12

    goto :goto_2

    :cond_6
    move v13, v10

    :goto_2
    iget v14, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 360
    invoke-static {v11, v13, v14}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v11

    .line 363
    .local v11, "canvasRotate":F
    float-to-double v13, v5

    move/from16 v16, v11

    .end local v11    # "canvasRotate":F
    .local v16, "canvasRotate":F
    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-float v10, v10

    .line 364
    .local v10, "arrowWidth":F
    float-to-double v13, v5

    move/from16 v17, v5

    .end local v5    # "arrowHeadBarLength":F
    .local v17, "arrowHeadBarLength":F
    float-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    .line 366
    .local v4, "arrowHeight":F
    iget-object v5, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 367
    iget v5, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    iget-object v13, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    add-float/2addr v5, v13

    iget v13, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    neg-float v13, v13

    iget v14, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-static {v5, v13, v14}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    .line 370
    .local v5, "topBottomBarOffset":F
    neg-float v13, v7

    div-float/2addr v13, v6

    .line 372
    .local v13, "arrowEdge":F
    iget-object v14, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float v11, v13, v8

    const/4 v15, 0x0

    invoke-virtual {v14, v11, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 373
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    mul-float v14, v8, v6

    sub-float v14, v7, v14

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 376
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11, v13, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 377
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11, v10, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 380
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v14, v5

    invoke-virtual {v11, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 381
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    neg-float v14, v4

    invoke-virtual {v11, v10, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 383
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    iget-object v11, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    .line 390
    .local v11, "barThickness":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v15, v11

    sub-float/2addr v14, v15

    iget v15, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    mul-float/2addr v6, v15

    sub-float/2addr v14, v6

    float-to-int v6, v14

    .line 391
    .local v6, "remainingSpace":I
    div-int/lit8 v14, v6, 0x4

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    .line 392
    .local v14, "yOffset":F
    const/high16 v18, 0x3fc00000    # 1.5f

    mul-float v18, v18, v11

    add-float v18, v18, v15

    add-float v14, v14, v18

    .line 394
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v15, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 395
    iget-boolean v15, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eqz v15, :cond_8

    .line 396
    iget-boolean v12, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    xor-int/2addr v12, v3

    if-eqz v12, :cond_7

    const/4 v12, -0x1

    goto :goto_3

    :cond_7
    const/4 v12, 0x1

    :goto_3
    int-to-float v12, v12

    mul-float v12, v12, v16

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    .line 397
    :cond_8
    if-eqz v3, :cond_9

    .line 398
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 400
    :cond_9
    :goto_4
    iget-object v12, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v15, v0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    return-void
.end method

.method public getArrowHeadLength()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    return v0
.end method

.method public getArrowShaftLength()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    return v0
.end method

.method public getBarLength()F
    .locals 1

    .line 199
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    return v0
.end method

.method public getBarThickness()F
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    return v0
.end method

.method public getGapSize()F
    .locals 1

    .line 258
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 431
    const/4 v0, -0x3

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 439
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    return v0
.end method

.method public isSpinEnabled()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 407
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 411
    :cond_0
    return-void
.end method

.method public setArrowHeadLength(F)V
    .locals 1
    .param p1, "length"    # F

    .line 162
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 163
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 166
    :cond_0
    return-void
.end method

.method public setArrowShaftLength(F)V
    .locals 1
    .param p1, "length"    # F

    .line 182
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 183
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 186
    :cond_0
    return-void
.end method

.method public setBarLength(F)V
    .locals 1
    .param p1, "length"    # F

    .line 208
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 209
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 212
    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .locals 4
    .param p1, "width"    # F

    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    float-to-double v0, v0

    sget v2, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    .line 241
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 243
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Lcom/oneplus/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 222
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 415
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 416
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 417
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 279
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    if-eq p1, v0, :cond_0

    .line 280
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    .line 281
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 283
    :cond_0
    return-void
.end method

.method public setGapSize(F)V
    .locals 1
    .param p1, "gap"    # F

    .line 269
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 270
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    .line 271
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 273
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Lcom/oneplus/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 450
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 451
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 454
    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 302
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    if-eq v0, p1, :cond_0

    .line 303
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    .line 304
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 306
    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 1
    .param p1, "verticalMirror"    # Z

    .line 320
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    if-eq v0, p1, :cond_0

    .line 321
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    .line 322
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    .line 324
    :cond_0
    return-void
.end method
