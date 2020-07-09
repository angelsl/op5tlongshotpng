.class public Lcom/oneplus/lib/util/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/util/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    new-instance v0, Lcom/oneplus/lib/util/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/oneplus/lib/util/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 317
    new-instance v0, Lcom/oneplus/lib/util/ViewDragHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/util/ViewDragHelper$2;-><init>(Lcom/oneplus/lib/util/ViewDragHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 359
    if-eqz p2, :cond_1

    .line 362
    if-eqz p3, :cond_0

    .line 366
    iput-object p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 367
    iput-object p3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    .line 369
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 370
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 371
    .local v1, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    .line 373
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    .line 374
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    .line 376
    new-instance v2, Landroid/widget/OverScroller;

    sget-object v3, Lcom/oneplus/lib/util/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    .line 377
    return-void

    .line 363
    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    .end local v1    # "density":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .line 1250
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1251
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1253
    .local v1, "absODelta":F
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    const/4 v3, 0x0

    if-ne v2, p4, :cond_3

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v2, p4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-eq v2, p4, :cond_3

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v4, v2

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 1259
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v2, p4}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1260
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v2, p3

    or-int/2addr v4, p4

    aput v4, v2, p3

    .line 1261
    return v3

    .line 1263
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 1257
    :cond_3
    :goto_0
    return v3
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 1277
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1278
    return v0

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1281
    .local v1, "checkHorizontal":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 1283
    .local v3, "checkVertical":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 1284
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 1285
    :cond_4
    if-eqz v1, :cond_6

    .line 1286
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 1287
    :cond_6
    if-eqz v3, :cond_8

    .line 1288
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    move v0, v2

    :cond_7
    return v0

    .line 1290
    :cond_8
    return v0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .line 659
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 660
    .local v0, "absValue":F
    cmpg-float v1, v0, p2

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 661
    :cond_0
    cmpl-float v1, v0, p3

    if-lez v1, :cond_2

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    neg-float v1, p3

    :goto_0
    return v1

    .line 662
    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .line 642
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 643
    .local v0, "absValue":I
    if-ge v0, p2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 644
    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    move v1, p3

    goto :goto_0

    :cond_1
    neg-int v1, p3

    :goto_0
    return v1

    .line 645
    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 763
    return-void

    .line 765
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 766
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 767
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 768
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 769
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 770
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 771
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 772
    iput v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    .line 773
    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .line 776
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 780
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 781
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 782
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 783
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 784
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 785
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 786
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    .line 787
    return-void

    .line 777
    :cond_1
    :goto_0
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 7
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .line 610
    if-nez p1, :cond_0

    .line 611
    const/4 v0, 0x0

    return v0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 615
    .local v0, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 616
    .local v1, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 617
    .local v2, "distanceRatio":F
    int-to-float v4, v1

    int-to-float v5, v1

    .line 618
    invoke-direct {p0, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 621
    .local v4, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 622
    if-lez p2, :cond_1

    .line 623
    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float v5, p2

    div-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    .local v3, "duration":I
    goto :goto_0

    .line 625
    .end local v3    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    .line 626
    .local v5, "range":F
    add-float/2addr v3, v5

    const/high16 v6, 0x43800000    # 256.0f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 628
    .end local v5    # "range":F
    .restart local v3    # "duration":I
    :goto_0
    const/16 v5, 0x258

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    return v5
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .line 589
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    float-to-int v2, v2

    iget v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    float-to-int v3, v3

    move/from16 v4, p4

    invoke-direct {v0, v4, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(III)I

    move-result v2

    .line 590
    .end local p4    # "xvel":I
    .local v2, "xvel":I
    iget v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    float-to-int v3, v3

    iget v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    float-to-int v4, v4

    move/from16 v5, p5

    invoke-direct {v0, v5, v3, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(III)I

    move-result v3

    .line 591
    .end local p5    # "yvel":I
    .local v3, "yvel":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 592
    .local v4, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 593
    .local v5, "absDy":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 594
    .local v6, "absXVel":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 595
    .local v7, "absYVel":I
    add-int v8, v6, v7

    .line 596
    .local v8, "addedVel":I
    add-int v9, v4, v5

    .line 598
    .local v9, "addedDistance":I
    if-eqz v2, :cond_0

    int-to-float v10, v6

    int-to-float v11, v8

    div-float/2addr v10, v11

    goto :goto_0

    .line 599
    :cond_0
    int-to-float v10, v4

    int-to-float v11, v9

    div-float/2addr v10, v11

    :goto_0
    nop

    .line 600
    .local v10, "xweight":F
    if-eqz v3, :cond_1

    int-to-float v11, v7

    int-to-float v12, v8

    div-float/2addr v11, v12

    goto :goto_1

    .line 601
    :cond_1
    int-to-float v11, v5

    int-to-float v12, v9

    div-float/2addr v11, v12

    :goto_1
    nop

    .line 603
    .local v11, "yweight":F
    iget-object v12, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v12, v1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v13, p2

    invoke-direct {v0, v13, v2, v12}, Lcom/oneplus/lib/util/ViewDragHelper;->computeAxisDuration(III)I

    move-result v12

    .line 604
    .local v12, "xduration":I
    iget-object v14, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v14, v1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v14

    move/from16 v15, p3

    invoke-direct {v0, v15, v3, v14}, Lcom/oneplus/lib/util/ViewDragHelper;->computeAxisDuration(III)I

    move-result v14

    .line 606
    .local v14, "yduration":I
    int-to-float v0, v12

    mul-float/2addr v0, v10

    int-to-float v1, v14

    mul-float/2addr v1, v11

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    .line 345
    invoke-static {p0, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;

    move-result-object v0

    .line 346
    .local v0, "helper":Lcom/oneplus/lib/util/ViewDragHelper;
    iget v1, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    .line 347
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)Lcom/oneplus/lib/util/ViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    .line 332
    new-instance v0, Lcom/oneplus/lib/util/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/oneplus/lib/util/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 752
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 753
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mReleaseInProgress:Z

    .line 755
    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v2, v0, :cond_0

    .line 757
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 759
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 666
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 667
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 668
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 16
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 1398
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    .line 1399
    .local v3, "clampedX":I
    move/from16 v4, p2

    .line 1400
    .local v4, "clampedY":I
    iget-object v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1401
    .local v5, "oldLeft":I
    iget-object v6, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1402
    .local v6, "oldTop":I
    if-eqz v1, :cond_0

    .line 1403
    iget-object v7, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v8, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v9, p1

    invoke-virtual {v7, v8, v9, v1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v3

    .line 1404
    iget-object v7, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v3, v5

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 1402
    :cond_0
    move/from16 v9, p1

    .line 1406
    :goto_0
    if-eqz v2, :cond_1

    .line 1407
    iget-object v7, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v8, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move/from16 v15, p2

    invoke-virtual {v7, v8, v15, v2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1408
    iget-object v7, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v8, v4, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 1406
    :cond_1
    move/from16 v15, p2

    .line 1411
    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1412
    :cond_2
    sub-int v7, v3, v5

    .line 1413
    .local v7, "clampedDx":I
    sub-int v8, v4, v6

    .line 1414
    .local v8, "clampedDy":I
    iget-object v10, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v11, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v12, v3

    move v13, v4

    move v14, v7

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1417
    .end local v7    # "clampedDx":I
    .end local v8    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .line 790
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 791
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    .line 792
    .local v0, "imx":[F
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 793
    .local v1, "imy":[F
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 794
    .local v2, "lmx":[F
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 795
    .local v3, "lmy":[F
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 796
    .local v4, "iit":[I
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 797
    .local v5, "edip":[I
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 799
    .local v6, "edl":[I
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 800
    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v7

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 802
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v7

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v7

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v7

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v7

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 806
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v7

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    :cond_1
    iput-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    .line 810
    iput-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    .line 811
    iput-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    .line 812
    iput-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    .line 813
    iput-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 814
    iput-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 815
    iput-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsLocked:[I

    .line 817
    .end local v0    # "imx":[F
    .end local v1    # "imy":[F
    .end local v2    # "lmx":[F
    .end local v3    # "lmy":[F
    .end local v4    # "iit":[I
    .end local v5    # "edip":[I
    .end local v6    # "edl":[I
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .line 569
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 570
    .local v0, "startLeft":I
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 571
    .local v7, "startTop":I
    sub-int v8, p1, v0

    .line 572
    .local v8, "dx":I
    sub-int v9, p2, v7

    .line 574
    .local v9, "dy":I
    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 576
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 577
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 578
    return v1

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v1, p0

    move v3, v8

    move v4, v9

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/util/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v10

    .line 582
    .local v10, "duration":I
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 584
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 585
    const/4 v1, 0x1

    return v1
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1472
    const/4 v0, 0x0

    .line 1474
    .local v0, "result":I
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1476
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1477
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1479
    :cond_3
    return v0
.end method

.method private isValidPointerForActionMove(I)Z
    .locals 2
    .param p1, "pointerId"    # I

    .line 1483
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring pointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewDragHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 v0, 0x0

    return v0

    .line 1489
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 1387
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1388
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 1389
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    .line 1388
    invoke-direct {p0, v0, v1, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1391
    .local v0, "xvel":F
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 1392
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMaxVelocity:F

    .line 1391
    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1394
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1395
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .line 1229
    const/4 v0, 0x0

    .line 1230
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1231
    or-int/lit8 v0, v0, 0x1

    .line 1233
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    or-int/lit8 v0, v0, 0x4

    .line 1236
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1237
    or-int/lit8 v0, v0, 0x2

    .line 1239
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1240
    or-int/lit8 v0, v0, 0x8

    .line 1243
    :cond_3
    if-eqz v0, :cond_4

    .line 1244
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1245
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1247
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .line 820
    invoke-direct {p0, p3}, Lcom/oneplus/lib/util/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 821
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 822
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 823
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 824
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    .line 825
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 829
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 830
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 832
    .local v2, "pointerId":I
    invoke-direct {p0, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 833
    goto :goto_1

    .line 835
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 836
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 837
    .local v4, "y":F
    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 838
    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 829
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 10

    .line 497
    invoke-virtual {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    .line 498
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 500
    .local v0, "oldX":I
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 501
    .local v1, "oldY":I
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 502
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    .line 503
    .local v2, "newX":I
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v9

    .line 504
    .local v9, "newY":I
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v2, v0

    sub-int v8, v9, v1

    move v5, v2

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 506
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "newX":I
    .end local v9    # "newY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 507
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .line 905
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 906
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 907
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 908
    .local v3, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 909
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 911
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 914
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 915
    .local v14, "child":Landroid/view/View;
    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v3

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p6, v4

    .line 916
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p6, v4

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p5, v3

    .line 917
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v12, v7, v8

    add-int v7, p6, v4

    .line 918
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v13, v7, v8

    .line 917
    move-object v7, p0

    move-object v8, v14

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Lcom/oneplus/lib/util/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 919
    return v2

    .line 911
    .end local v14    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 924
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-nez v3, :cond_2

    move/from16 v3, p4

    neg-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_2
    move/from16 v3, p4

    goto :goto_1

    :cond_3
    move/from16 v1, p3

    move/from16 v3, p4

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 1

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 484
    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->clearMotionHistory()V

    .line 486
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 490
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 450
    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 451
    iput p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 452
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 453
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 454
    return-void

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .line 1308
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    .line 1309
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1310
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1311
    const/4 v2, 0x1

    return v2

    .line 1309
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1314
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 8
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .line 1333
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1334
    return v1

    .line 1337
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1338
    .local v0, "checkHorizontal":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1340
    .local v3, "checkVertical":Z
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    aget v5, v5, p2

    sub-float/2addr v4, v5

    .line 1341
    .local v4, "dx":F
    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aget v5, v5, p2

    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, p2

    sub-float/2addr v5, v6

    .line 1343
    .local v5, "dy":F
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 1344
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    iget v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1345
    :cond_4
    if-eqz v0, :cond_6

    .line 1346
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 1347
    :cond_6
    if-eqz v3, :cond_8

    .line 1348
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 1350
    :cond_8
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 13
    .param p1, "deferCallbacks"    # Z

    .line 707
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 708
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 709
    .local v0, "keepGoing":Z
    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 710
    .local v3, "x":I
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .line 711
    .local v10, "y":I
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v11, v3, v4

    .line 712
    .local v11, "dx":I
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v12, v10, v4

    .line 714
    .local v12, "dy":I
    if-eqz v11, :cond_0

    .line 715
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 717
    :cond_0
    if-eqz v12, :cond_1

    .line 718
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 721
    :cond_1
    if-nez v11, :cond_2

    if-eqz v12, :cond_3

    .line 722
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 725
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-ne v10, v4, :cond_4

    .line 728
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 729
    const/4 v0, 0x0

    .line 732
    :cond_4
    if-nez v0, :cond_6

    .line 733
    if-eqz p1, :cond_5

    .line 734
    iget-object v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 736
    :cond_5
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 741
    .end local v0    # "keepGoing":Z
    .end local v3    # "x":I
    .end local v10    # "y":I
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    :cond_6
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v0, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1460
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1461
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1462
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1463
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1464
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1465
    return-object v2

    .line 1461
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1468
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public flingCapturedView(IIII)V
    .locals 10
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .line 682
    iget-boolean v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 687
    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mScroller:Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 688
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 689
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 687
    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 692
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->setDragState(I)V

    .line 693
    return-void

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActivePointerId()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 397
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1429
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .line 1363
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v0

    .line 1364
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1365
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    const/4 v2, 0x1

    return v2

    .line 1364
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1369
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .line 1383
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .line 856
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1442
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1443
    return v0

    .line 1445
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1446
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1447
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 1448
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1445
    :goto_0
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1071
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1072
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1074
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    .line 1080
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1081
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1083
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1085
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_7

    .line 1180
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 1181
    .local v3, "pointerId":I
    iget v4, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v4, v2, :cond_6

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    if-ne v3, v2, :cond_6

    .line 1183
    const/4 v2, -0x1

    .line 1184
    .local v2, "newActivePointer":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 1185
    .local v4, "pointerCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    .line 1186
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 1187
    .local v6, "id":I
    iget v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    if-ne v6, v7, :cond_3

    .line 1189
    goto :goto_1

    .line 1192
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1193
    .local v7, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1194
    .local v8, "y":F
    float-to-int v9, v7

    float-to-int v10, v8

    invoke-virtual {p0, v9, v10}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v9, v10, :cond_4

    .line 1195
    invoke-virtual {p0, v10, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1196
    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 1197
    goto :goto_2

    .line 1185
    .end local v6    # "id":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1201
    .end local v5    # "i":I
    :cond_5
    :goto_2
    const/4 v5, -0x1

    if-ne v2, v5, :cond_6

    .line 1203
    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1206
    .end local v2    # "newActivePointer":I
    .end local v4    # "pointerCount":I
    :cond_6
    invoke-direct {p0, v3}, Lcom/oneplus/lib/util/ViewDragHelper;->clearMotionHistory(I)V

    .line 1207
    goto/16 :goto_7

    .line 1107
    .end local v3    # "pointerId":I
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1108
    .local v2, "pointerId":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1109
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1111
    .local v4, "y":F
    invoke-direct {p0, v3, v4, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1114
    iget v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez v5, :cond_8

    .line 1117
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1118
    .local v5, "toCapture":Landroid/view/View;
    invoke-virtual {p0, v5, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1120
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v2

    .line 1121
    .local v6, "edgesTouched":I
    iget v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_9

    .line 1122
    iget-object v8, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_3

    .line 1124
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_8
    float-to-int v5, v3

    float-to-int v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1129
    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_7

    .line 1124
    :cond_9
    :goto_3
    goto/16 :goto_7

    .line 1219
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_a
    iget v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v3, v2, :cond_b

    .line 1220
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1222
    :cond_b
    invoke-virtual {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    goto/16 :goto_7

    .line 1135
    :cond_c
    iget v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v3, v2, :cond_e

    .line 1137
    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_7

    .line 1139
    :cond_d
    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1140
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1141
    .restart local v3    # "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1142
    .restart local v4    # "y":F
    iget-object v5, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionX:[F

    iget v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    aget v5, v5, v6

    sub-float v5, v3, v5

    float-to-int v5, v5

    .line 1143
    .local v5, "idx":I
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mLastMotionY:[F

    aget v6, v7, v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    .line 1145
    .local v6, "idy":I
    iget-object v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v6

    invoke-direct {p0, v7, v8, v5, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->dragTo(IIII)V

    .line 1147
    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1148
    .end local v2    # "index":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "idx":I
    .end local v6    # "idy":I
    goto/16 :goto_7

    .line 1150
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1151
    .local v3, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v3, :cond_12

    .line 1152
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1155
    .local v5, "pointerId":I
    invoke-direct {p0, v5}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_5

    .line 1157
    :cond_f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1158
    .local v6, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1159
    .local v7, "y":F
    iget-object v8, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    aget v8, v8, v5

    sub-float v8, v6, v8

    .line 1160
    .local v8, "dx":F
    iget-object v9, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aget v9, v9, v5

    sub-float v9, v7, v9

    .line 1162
    .local v9, "dy":F
    invoke-direct {p0, v8, v9, v5}, Lcom/oneplus/lib/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1163
    iget v10, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v10, v2, :cond_10

    .line 1165
    goto :goto_6

    .line 1168
    :cond_10
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v10

    .line 1169
    .local v10, "toCapture":Landroid/view/View;
    invoke-direct {p0, v10, v8, v9}, Lcom/oneplus/lib/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1170
    invoke-virtual {p0, v10, v5}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1171
    goto :goto_6

    .line 1151
    .end local v5    # "pointerId":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "toCapture":Landroid/view/View;
    :cond_11
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1174
    .end local v4    # "i":I
    :cond_12
    :goto_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1176
    .end local v3    # "pointerCount":I
    goto :goto_7

    .line 1211
    :cond_13
    iget v3, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v3, v2, :cond_14

    .line 1212
    invoke-direct {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1214
    :cond_14
    invoke-virtual {p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    .line 1215
    goto :goto_7

    .line 1087
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1088
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1089
    .local v3, "y":F
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1090
    .local v4, "pointerId":I
    float-to-int v5, v2

    float-to-int v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1092
    .local v5, "toCapture":Landroid/view/View;
    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1097
    invoke-virtual {p0, v5, v4}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1099
    iget-object v6, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v6, v6, v4

    .line 1100
    .local v6, "edgesTouched":I
    iget v7, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v8, v6, v7

    if-eqz v8, :cond_16

    .line 1101
    iget-object v8, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr v7, v6

    invoke-virtual {v8, v7, v4}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1226
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "pointerId":I
    .end local v5    # "toCapture":Landroid/view/View;
    .end local v6    # "edgesTouched":I
    :cond_16
    :goto_7
    return-void
.end method

.method setDragState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 860
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 861
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 862
    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    .line 863
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 864
    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 868
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .line 422
    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    .line 423
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .line 386
    iput p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mMinVelocity:F

    .line 387
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .line 549
    iget-boolean v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 555
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 556
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 554
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 935
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 936
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 938
    .local v3, "actionIndex":I
    if-nez v2, :cond_0

    .line 941
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    .line 944
    :cond_0
    iget-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 945
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 947
    :cond_1
    iget-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 949
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_15

    if-eq v2, v6, :cond_14

    if-eq v2, v5, :cond_8

    const/4 v7, 0x3

    if-eq v2, v7, :cond_7

    const/4 v7, 0x5

    if-eq v2, v7, :cond_3

    const/4 v5, 0x6

    if-eq v2, v5, :cond_2

    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1049
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 1050
    .local v5, "pointerId":I
    invoke-direct {v0, v5}, Lcom/oneplus/lib/util/ViewDragHelper;->clearMotionHistory(I)V

    .line 1051
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 971
    .end local v5    # "pointerId":I
    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 972
    .local v7, "pointerId":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 973
    .local v8, "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 975
    .local v9, "y":F
    invoke-direct {v0, v8, v9, v7}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 978
    iget v10, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez v10, :cond_4

    .line 979
    iget-object v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v5, v5, v7

    .line 980
    .local v5, "edgesTouched":I
    iget v10, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v11, v5, v10

    if-eqz v11, :cond_6

    .line 981
    iget-object v11, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr v10, v5

    invoke-virtual {v11, v10, v7}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 983
    .end local v5    # "edgesTouched":I
    :cond_4
    if-ne v10, v5, :cond_6

    .line 985
    float-to-int v5, v8

    float-to-int v10, v9

    invoke-virtual {v0, v5, v10}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 986
    .local v5, "toCapture":Landroid/view/View;
    iget-object v10, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v10, :cond_5

    .line 987
    invoke-virtual {v0, v5, v7}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 989
    .end local v5    # "toCapture":Landroid/view/View;
    :cond_5
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 983
    :cond_6
    :goto_0
    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 949
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_7
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_5

    .line 994
    :cond_8
    iget-object v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v5, :cond_13

    iget-object v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    if-nez v5, :cond_9

    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    .line 997
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 998
    .local v5, "pointerCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_11

    .line 999
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 1002
    .local v8, "pointerId":I
    invoke-direct {v0, v8}, Lcom/oneplus/lib/util/ViewDragHelper;->isValidPointerForActionMove(I)Z

    move-result v9

    if-nez v9, :cond_a

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v5

    goto/16 :goto_3

    .line 1004
    :cond_a
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 1005
    .local v9, "x":F
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 1006
    .local v10, "y":F
    iget-object v11, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v8

    sub-float v11, v9, v11

    .line 1007
    .local v11, "dx":F
    iget-object v12, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialMotionY:[F

    aget v12, v12, v8

    sub-float v12, v10, v12

    .line 1009
    .local v12, "dy":F
    float-to-int v13, v9

    float-to-int v14, v10

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v13

    .line 1010
    .local v13, "toCapture":Landroid/view/View;
    if-eqz v13, :cond_b

    invoke-direct {v0, v13, v11, v12}, Lcom/oneplus/lib/util/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v14

    if-eqz v14, :cond_b

    move v14, v6

    goto :goto_2

    :cond_b
    const/4 v14, 0x0

    .line 1011
    .local v14, "pastSlop":Z
    :goto_2
    if-eqz v14, :cond_d

    .line 1017
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 1018
    .local v15, "oldLeft":I
    float-to-int v4, v11

    add-int/2addr v4, v15

    .line 1019
    .local v4, "targetLeft":I
    iget-object v6, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    move/from16 v16, v2

    .end local v2    # "action":I
    .local v16, "action":I
    float-to-int v2, v11

    invoke-virtual {v6, v13, v4, v2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1021
    .local v2, "newLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1022
    .local v6, "oldTop":I
    move/from16 v17, v3

    .end local v3    # "actionIndex":I
    .local v17, "actionIndex":I
    float-to-int v3, v12

    add-int/2addr v3, v6

    .line 1023
    .local v3, "targetTop":I
    move/from16 v18, v4

    .end local v4    # "targetLeft":I
    .local v18, "targetLeft":I
    iget-object v4, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    move/from16 v19, v5

    .end local v5    # "pointerCount":I
    .local v19, "pointerCount":I
    float-to-int v5, v12

    invoke-virtual {v4, v13, v3, v5}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v4

    .line 1025
    .local v4, "newTop":I
    iget-object v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v5, v13}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v5

    .line 1027
    .local v5, "horizontalDragRange":I
    move/from16 v20, v3

    .end local v3    # "targetTop":I
    .local v20, "targetTop":I
    iget-object v3, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v3, v13}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    .line 1028
    .local v3, "verticalDragRange":I
    if-eqz v5, :cond_c

    if-lez v5, :cond_e

    if-ne v2, v15, :cond_e

    :cond_c
    if-eqz v3, :cond_12

    if-lez v3, :cond_e

    if-ne v4, v6, :cond_e

    .line 1031
    goto :goto_4

    .line 1011
    .end local v4    # "newTop":I
    .end local v6    # "oldTop":I
    .end local v15    # "oldLeft":I
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v18    # "targetLeft":I
    .end local v19    # "pointerCount":I
    .end local v20    # "targetTop":I
    .local v2, "action":I
    .local v3, "actionIndex":I
    .local v5, "pointerCount":I
    :cond_d
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v5

    .line 1034
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v5    # "pointerCount":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v19    # "pointerCount":I
    :cond_e
    invoke-direct {v0, v11, v12, v8}, Lcom/oneplus/lib/util/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1035
    iget v2, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1037
    goto :goto_4

    .line 1040
    :cond_f
    if-eqz v14, :cond_10

    invoke-virtual {v0, v13, v8}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1041
    goto :goto_4

    .line 998
    .end local v8    # "pointerId":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "toCapture":Landroid/view/View;
    .end local v14    # "pastSlop":Z
    :cond_10
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v5, v19

    const/4 v6, 0x1

    goto/16 :goto_1

    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v19    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    .restart local v5    # "pointerCount":I
    :cond_11
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v5

    .line 1044
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .end local v5    # "pointerCount":I
    .end local v7    # "i":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    .restart local v19    # "pointerCount":I
    :cond_12
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/util/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    .line 1045
    const/4 v4, 0x0

    goto :goto_6

    .line 994
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .end local v19    # "pointerCount":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_13
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    const/4 v4, 0x0

    goto :goto_6

    .line 949
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_14
    move/from16 v16, v2

    move/from16 v17, v3

    .line 1056
    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/util/ViewDragHelper;->cancel()V

    const/4 v4, 0x0

    goto :goto_6

    .line 951
    .end local v16    # "action":I
    .end local v17    # "actionIndex":I
    .restart local v2    # "action":I
    .restart local v3    # "actionIndex":I
    :cond_15
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "action":I
    .end local v3    # "actionIndex":I
    .restart local v16    # "action":I
    .restart local v17    # "actionIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 952
    .local v2, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 953
    .local v3, "y":F
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 954
    .local v6, "pointerId":I
    invoke-direct {v0, v2, v3, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 956
    float-to-int v7, v2

    float-to-int v8, v3

    invoke-virtual {v0, v7, v8}, Lcom/oneplus/lib/util/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 959
    .local v7, "toCapture":Landroid/view/View;
    iget-object v8, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v7, v8, :cond_16

    iget v8, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-ne v8, v5, :cond_16

    .line 960
    invoke-virtual {v0, v7, v6}, Lcom/oneplus/lib/util/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 963
    :cond_16
    iget-object v5, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v5, v5, v6

    .line 964
    .local v5, "edgesTouched":I
    iget v8, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mTrackingEdges:I

    and-int v9, v5, v8

    if-eqz v9, :cond_17

    .line 965
    iget-object v9, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    and-int/2addr v8, v5

    invoke-virtual {v9, v8, v6}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1061
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v5    # "edgesTouched":I
    .end local v6    # "pointerId":I
    .end local v7    # "toCapture":Landroid/view/View;
    :cond_17
    :goto_6
    iget v2, v0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    goto :goto_7

    :cond_18
    move v3, v4

    :goto_7
    return v3
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .line 524
    iput-object p1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Lcom/oneplus/lib/util/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    .line 528
    .local v0, "continueSliding":Z
    if-nez v0, :cond_0

    iget v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 531
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 534
    :cond_0
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 880
    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    .line 882
    return v1

    .line 884
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mCallback:Lcom/oneplus/lib/util/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iput p2, p0, Lcom/oneplus/lib/util/ViewDragHelper;->mActivePointerId:I

    .line 886
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/util/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 887
    return v1

    .line 889
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
