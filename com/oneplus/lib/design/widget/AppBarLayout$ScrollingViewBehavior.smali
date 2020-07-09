.class public Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1367
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1370
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1372
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OpScrollingViewBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1374
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpScrollingViewBehavior_Layout_op_behavior_overlapTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1376
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1377
    return-void
.end method

.method private static getAppBarLayoutOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 2
    .param p0, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1450
    nop

    .line 1451
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1452
    .local v0, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 1453
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    return v1

    .line 1455
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private offsetChildAsNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 1414
    nop

    .line 1415
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1416
    .local v0, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    if-eqz v1, :cond_0

    .line 1419
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    .line 1420
    .local v1, "ablBehavior":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1421
    invoke-static {v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->access$000(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1422
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 1423
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1420
    invoke-static {p2, v2}, Lcom/oneplus/support/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1425
    .end local v1    # "ablBehavior":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 0

    .line 1365
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method findFirstDependency(Ljava/util/List;)Lcom/oneplus/lib/design/widget/AppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/oneplus/lib/design/widget/AppBarLayout;"
        }
    .end annotation

    .line 1460
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1461
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1462
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v3, :cond_0

    .line 1463
    move-object v3, v2

    check-cast v3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    return-object v3

    .line 1460
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1466
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .line 1365
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    .line 1429
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1430
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1431
    .local v0, "abl":Lcom/oneplus/lib/design/widget/AppBarLayout;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    .line 1432
    .local v2, "totalScrollRange":I
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    .line 1433
    .local v3, "preScrollDown":I
    invoke-static {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result v4

    .line 1435
    .local v4, "offset":I
    if-eqz v3, :cond_0

    add-int v5, v2, v4

    if-gt v5, v3, :cond_0

    .line 1437
    return v1

    .line 1439
    :cond_0
    sub-int v5, v2, v3

    .line 1440
    .local v5, "availScrollRange":I
    if-eqz v5, :cond_1

    .line 1442
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    return v6

    .line 1446
    .end local v0    # "abl":Lcom/oneplus/lib/design/widget/AppBarLayout;
    .end local v2    # "totalScrollRange":I
    .end local v3    # "preScrollDown":I
    .end local v4    # "offset":I
    .end local v5    # "availScrollRange":I
    :cond_1
    return v1
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1471
    instance-of v0, p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1472
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0

    .line 1474
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .line 1365
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 1382
    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    return v0
.end method

.method public onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 1388
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1365
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1365
    invoke-super/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public onRequestChildRectangleOnScreen(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 1395
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-result-object v0

    .line 1396
    .local v0, "header":Lcom/oneplus/lib/design/widget/AppBarLayout;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1398
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1400
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 1401
    .local v2, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1403
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1406
    xor-int/lit8 v3, p4, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 1407
    const/4 v1, 0x1

    return v1

    .line 1410
    .end local v2    # "parentRect":Landroid/graphics/Rect;
    :cond_0
    return v1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 0

    .line 1365
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    .line 1365
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method
