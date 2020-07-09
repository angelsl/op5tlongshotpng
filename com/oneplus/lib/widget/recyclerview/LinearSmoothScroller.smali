.class public abstract Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.source "LinearSmoothScroller.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MILLISECONDS_PER_INCH:F = 25.0f

.field public static final SNAP_TO_ANY:I = 0x0

.field public static final SNAP_TO_END:I = 0x1

.field public static final SNAP_TO_START:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinearSmoothScroller"

.field private static final TARGET_SEEK_EXTRA_SCROLL_RATIO:F = 1.2f

.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final MILLISECONDS_PER_PX:F

.field protected final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mInterimTargetDx:I

.field protected mInterimTargetDy:I

.field protected final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field protected mTargetVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;-><init>()V

    .line 78
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    .line 92
    return-void
.end method

.method private clampApplyScroll(II)I
    .locals 2
    .param p1, "tmpDt"    # I
    .param p2, "dt"    # I

    .line 251
    move v0, p1

    .line 252
    .local v0, "before":I
    sub-int/2addr p1, p2

    .line 253
    mul-int v1, v0, p1

    if-gtz v1, :cond_0

    .line 254
    const/4 v1, 0x0

    return v1

    .line 256
    :cond_0
    return p1
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 2
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .line 265
    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    if-eqz p5, :cond_1

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 269
    sub-int v0, p4, p2

    return v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    sub-int v0, p3, p1

    .line 272
    .local v0, "dtStart":I
    if-lez v0, :cond_2

    .line 273
    return v0

    .line 275
    :cond_2
    sub-int v1, p4, p2

    .line 276
    .local v1, "dtEnd":I
    if-gez v1, :cond_3

    .line 277
    return v1

    .line 284
    .end local v0    # "dtStart":I
    .end local v1    # "dtEnd":I
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_4
    sub-int v0, p3, p1

    return v0
.end method

.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 324
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 325
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const/4 v1, 0x0

    return v1

    .line 328
    :cond_0
    nop

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 330
    .local v1, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 331
    .local v2, "left":I
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v3

    iget v4, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 332
    .local v3, "right":I
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v10

    .line 333
    .local v10, "start":I
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v11, v4, v5

    .line 334
    .local v11, "end":I
    move-object v4, p0

    move v5, v2

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v4

    return v4
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "snapPreference"    # I

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v0

    .line 300
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_0
    nop

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    .line 305
    .local v1, "params":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    .line 306
    .local v2, "top":I
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    iget v4, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 307
    .local v3, "bottom":I
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v10

    .line 308
    .local v10, "start":I
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v11, v4, v5

    .line 309
    .local v11, "end":I
    move-object v4, p0

    move v5, v2

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result v4

    return v4
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 156
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 4
    .param p1, "dx"    # I

    .line 173
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2
    .param p1, "dx"    # I

    .line 187
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->MILLISECONDS_PER_PX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public abstract computeScrollVectorForPosition(I)Landroid/graphics/PointF;
.end method

.method protected getHorizontalSnapPreference()I
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 200
    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 214
    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p4, "action"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->stop()V

    .line 123
    return-void

    .line 130
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    .line 131
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->clampApplyScroll(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    .line 133
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0, p4}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->updateActionForInterimTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    .line 137
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 146
    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p3, "action"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getHorizontalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result v0

    .line 108
    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getVerticalSnapPreference()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v1

    .line 109
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 110
    .local v2, "distance":I
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 111
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 112
    neg-int v4, v0

    neg-int v5, v1

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v4, v5, v3, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
    .locals 6
    .param p1, "action"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    .line 226
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 227
    .local v0, "scrollVector":Landroid/graphics/PointF;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->normalize(Landroid/graphics/PointF;)V

    .line 237
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 239
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    .line 240
    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    .line 241
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v1

    .line 245
    .local v1, "time":I
    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDx:I

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mInterimTargetDy:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v5, v1

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v2, v4, v3, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 248
    return-void

    .line 228
    .end local v1    # "time":I
    :cond_1
    :goto_0
    const-string v1, "LinearSmoothScroller"

    const-string v2, "To support smooth scrolling, you should override \nLayoutManager#computeScrollVectorForPosition.\nFalling back to instant scroll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->getTargetPosition()I

    move-result v1

    .line 232
    .local v1, "target":I
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->jumpTo(I)V

    .line 233
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/LinearSmoothScroller;->stop()V

    .line 234
    return-void
.end method
