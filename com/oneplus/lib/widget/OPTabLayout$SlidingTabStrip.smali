.class Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 1291
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    .line 1292
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1285
    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1288
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1289
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1293
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    .line 1294
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1295
    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1281
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$1802(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    .param p1, "x1"    # I

    .line 1281
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1902(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
    .param p1, "x1"    # F

    .line 1281
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private isRtl()Z
    .locals 2

    .line 1410
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setIndicatorPosition(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1414
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    .line 1416
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1417
    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    .line 1418
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1420
    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 10

    .line 1385
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1388
    .local v0, "selectedTitle":Landroid/view/View;
    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    .line 1389
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1390
    .local v2, "left":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1392
    .local v3, "right":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->isRtl()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 1393
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v4, v7, :cond_1

    :goto_0
    move v5, v6

    :cond_1
    move v4, v5

    .line 1394
    .local v4, "hasNextTab":Z
    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    if-eqz v4, :cond_3

    .line 1396
    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1397
    .local v1, "nextTitle":Landroid/view/View;
    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v6

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    float-to-int v2, v5

    .line 1399
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v7, v5

    int-to-float v5, v3

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 1402
    .end local v1    # "nextTitle":Landroid/view/View;
    .end local v4    # "hasNextTab":Z
    :cond_3
    goto :goto_2

    .line 1403
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_4
    move v3, v1

    .restart local v3    # "right":I
    move v2, v1

    .line 1406
    .restart local v2    # "left":I
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    .line 1407
    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .line 1423
    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 1426
    .local v8, "isRtl":Z
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1427
    .local v9, "targetView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1428
    .local v10, "targetLeft":I
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    .line 1432
    .local v11, "targetRight":I
    iget v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 1434
    iget v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    .line 1435
    .local v0, "startLeft":I
    iget v1, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    move v12, v0

    move v13, v1

    .local v1, "startRight":I
    goto :goto_1

    .line 1438
    .end local v0    # "startLeft":I
    .end local v1    # "startRight":I
    :cond_1
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    move-result v0

    .line 1439
    .local v0, "offset":I
    iget v1, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge v7, v1, :cond_3

    .line 1441
    if-eqz v8, :cond_2

    .line 1442
    sub-int v1, v10, v0

    move v2, v1

    .local v2, "startRight":I
    move v12, v1

    move v13, v2

    .local v1, "startLeft":I
    goto :goto_1

    .line 1444
    .end local v1    # "startLeft":I
    .end local v2    # "startRight":I
    :cond_2
    add-int v1, v11, v0

    move v2, v1

    .restart local v2    # "startRight":I
    move v12, v1

    move v13, v2

    .restart local v1    # "startLeft":I
    goto :goto_1

    .line 1448
    .end local v1    # "startLeft":I
    .end local v2    # "startRight":I
    :cond_3
    if-eqz v8, :cond_4

    .line 1449
    add-int v1, v11, v0

    move v2, v1

    .restart local v2    # "startRight":I
    move v12, v1

    move v13, v2

    .restart local v1    # "startLeft":I
    goto :goto_1

    .line 1451
    .end local v1    # "startLeft":I
    .end local v2    # "startRight":I
    :cond_4
    sub-int v1, v10, v0

    move v2, v1

    .restart local v2    # "startRight":I
    move v0, v1

    move v12, v0

    move v13, v2

    .line 1456
    .end local v0    # "offset":I
    .end local v2    # "startRight":I
    .local v12, "startLeft":I
    .local v13, "startRight":I
    :goto_1
    if-ne v12, v10, :cond_7

    if-eq v13, v11, :cond_5

    goto :goto_2

    .line 1485
    :cond_5
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1500(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1486
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1500(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1488
    :cond_6
    iput v7, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1489
    const/4 v0, 0x0

    iput v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1490
    invoke-direct {v6, v10, v11}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    move/from16 v15, p2

    move/from16 v16, v8

    goto :goto_3

    .line 1457
    :cond_7
    :goto_2
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1502(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 1458
    .local v14, "animator":Landroid/animation/ValueAnimator;
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1600(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1459
    move/from16 v15, p2

    int-to-long v0, v15

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1460
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1461
    new-instance v5, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move v3, v10

    move v4, v13

    move/from16 v16, v8

    move-object v8, v5

    .end local v8    # "isRtl":Z
    .local v16, "isRtl":Z
    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;-><init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v14, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1470
    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;

    invoke-direct {v0, v6, v7}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;-><init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1483
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    .line 1484
    .end local v14    # "animator":Landroid/animation/ValueAnimator;
    nop

    .line 1492
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 1312
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1313
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1314
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1315
    const/4 v3, 0x1

    return v3

    .line 1312
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1496
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1499
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-le v1, v0, :cond_0

    .line 1500
    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v5, v0

    .line 1501
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1500
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1503
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1379
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1381
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1382
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1329
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1331
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 1334
    return-void

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1100(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1338
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    .line 1340
    .local v0, "count":I
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1343
    .local v2, "unspecifiedSpec":I
    const/4 v3, 0x0

    .line 1344
    .local v3, "largestTabWidth":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v5, v0

    .local v5, "z":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1345
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1346
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6, v2, p2}, Landroid/view/View;->measure(II)V

    .line 1347
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1344
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1350
    .end local v4    # "i":I
    .end local v5    # "z":I
    :cond_1
    if-gtz v3, :cond_2

    .line 1352
    return-void

    .line 1355
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    move-result v4

    .line 1356
    .local v4, "gutter":I
    mul-int v5, v3, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_4

    .line 1359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1360
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1361
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1362
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1363
    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1359
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 1368
    :cond_4
    iget-object v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v5, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1202(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    .line 1369
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1400(Lcom/oneplus/lib/widget/OPTabLayout;)V

    .line 1373
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1375
    .end local v0    # "count":I
    .end local v2    # "unspecifiedSpec":I
    .end local v3    # "largestTabWidth":I
    .end local v4    # "gutter":I
    :cond_5
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 1322
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 1323
    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 1324
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    .line 1325
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 1298
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1300
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1302
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 1305
    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1306
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 1307
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    .line 1309
    :cond_0
    return-void
.end method
