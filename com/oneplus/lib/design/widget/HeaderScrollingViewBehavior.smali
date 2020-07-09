.class abstract Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;
.super Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlayTop:I

.field final mTempRect1:Landroid/graphics/Rect;

.field final mTempRect2:Landroid/graphics/Rect;

.field private mVerticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 50
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 152
    if-nez p0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 4
    .param p1, "header"    # Landroid/view/View;

    .line 147
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v0

    iget v2, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    int-to-float v3, v2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 147
    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    :goto_0
    return v1
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .line 143
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getOverlayTop()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 12
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 104
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "header":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 108
    nop

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 110
    .local v2, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v9, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 111
    .local v9, "available":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    .line 113
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    .line 114
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 115
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 111
    invoke-virtual {v9, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getLastWindowInsets()Lcom/oneplus/support/core/view/WindowInsetsCompat;

    move-result-object v10

    .line 118
    .local v10, "parentInsets":Lcom/oneplus/support/core/view/WindowInsetsCompat;
    if-eqz v10, :cond_0

    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-static {p2}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    iget v3, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 124
    iget v3, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v10}, Lcom/oneplus/support/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 127
    :cond_0
    iget-object v11, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 128
    .local v11, "out":Landroid/graphics/Rect;
    iget v3, v2, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v3}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 128
    move-object v6, v9

    move-object v7, v11

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/oneplus/support/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    .line 133
    .local v3, "overlap":I
    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    iget v6, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v3

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 134
    iget v4, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 135
    .end local v2    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "overlap":I
    .end local v9    # "available":Landroid/graphics/Rect;
    .end local v10    # "parentInsets":Lcom/oneplus/support/core/view/WindowInsetsCompat;
    .end local v11    # "out":Landroid/graphics/Rect;
    goto :goto_0

    .line 137
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 138
    const/4 v2, 0x0

    iput v2, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 140
    :goto_0
    return-void
.end method

.method public onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 15
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .line 56
    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .local v1, "childLpHeight":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    goto :goto_4

    .line 62
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v4

    .line 64
    .local v4, "header":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 65
    invoke-static {v4}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 66
    invoke-static/range {p2 .. p2}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 69
    move-object/from16 v5, p2

    invoke-static {v5, v6}, Lcom/oneplus/support/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 71
    invoke-static/range {p2 .. p2}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 74
    return v6

    .line 66
    :cond_2
    move-object/from16 v5, p2

    goto :goto_1

    .line 65
    :cond_3
    move-object/from16 v5, p2

    .line 78
    :cond_4
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 79
    .local v7, "availableHeight":I
    if-nez v7, :cond_5

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    move v13, v7

    goto :goto_2

    .line 79
    :cond_5
    move v13, v7

    .line 84
    .end local v7    # "availableHeight":I
    .local v13, "availableHeight":I
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v13, v7

    .line 85
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v8

    add-int v14, v7, v8

    .line 86
    .local v14, "height":I
    nop

    .line 87
    if-ne v1, v2, :cond_6

    .line 88
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_3

    .line 89
    :cond_6
    const/high16 v2, -0x80000000

    .line 86
    :goto_3
    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 92
    .local v2, "heightMeasureSpec":I
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move v11, v2

    move/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 95
    return v6

    .line 64
    .end local v2    # "heightMeasureSpec":I
    .end local v13    # "availableHeight":I
    .end local v14    # "height":I
    :cond_7
    move-object/from16 v5, p2

    .line 98
    .end local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v4    # "header":Landroid/view/View;
    :goto_4
    const/4 v2, 0x0

    return v2
.end method

.method public final setOverlayTop(I)V
    .locals 0
    .param p1, "overlayTop"    # I

    .line 174
    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 175
    return-void
.end method
