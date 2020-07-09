.class public Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
.super Lcom/oneplus/lib/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/HeaderBehavior<",
        "Lcom/oneplus/lib/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 801
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>()V

    .line 794
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 801
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 804
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 794
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 805
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;

    .line 767
    iget v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    return v0
.end method

.method private animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V
    .locals 4
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "offset"    # I
    .param p4, "velocity"    # F

    .line 927
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 930
    .local v0, "distance":I
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 931
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    .line 932
    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v2, v0

    div-float/2addr v2, p4

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .local v1, "duration":I
    goto :goto_0

    .line 934
    .end local v1    # "duration":I
    :cond_0
    int-to-float v1, v0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 935
    .local v1, "distanceRatio":F
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x43160000    # 150.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 938
    .local v1, "duration":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    .line 939
    return-void
.end method

.method private animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 4
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "offset"    # I
    .param p4, "duration"    # I

    .line 943
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 944
    .local v0, "currentOffset":I
    if-ne v0, p3, :cond_1

    .line 945
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 948
    :cond_0
    return-void

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 952
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 953
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 954
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;-><init>(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 962
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 965
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 966
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 967
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 968
    return-void
.end method

.method private static checkFlag(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "check"    # I

    .line 1023
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 5
    .param p0, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p1, "offset"    # I

    .line 1268
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1269
    .local v0, "absOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1270
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1271
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v0, v4, :cond_0

    .line 1272
    return-object v3

    .line 1269
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1275
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 5
    .param p1, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p2, "offset"    # I

    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 972
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 973
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v4, p2

    if-lt v3, v4, :cond_0

    .line 974
    return v0

    .line 971
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 12
    .param p1, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p2, "offset"    # I

    .line 1181
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1183
    .local v0, "absOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 1184
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1185
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 1186
    .local v4, "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 1188
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v0, v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v0, v6, :cond_3

    .line 1189
    if-eqz v5, :cond_4

    .line 1190
    const/4 v6, 0x0

    .line 1191
    .local v6, "childScrollableHeight":I
    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v7

    .line 1192
    .local v7, "flags":I
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_0

    .line 1194
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 1197
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_0

    .line 1200
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v6, v8

    .line 1204
    :cond_0
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1205
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int/2addr v6, v8

    .line 1208
    :cond_1
    if-lez v6, :cond_2

    .line 1209
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, v0, v8

    .line 1210
    .local v8, "offsetForView":I
    int-to-float v9, v6

    int-to-float v10, v8

    int-to-float v11, v6

    div-float/2addr v10, v11

    .line 1211
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    .line 1210
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1214
    .local v9, "interpolatedDiff":I
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v9

    mul-int/2addr v10, v11

    return v10

    .line 1216
    .end local v6    # "childScrollableHeight":I
    .end local v7    # "flags":I
    .end local v8    # "offsetForView":I
    .end local v9    # "interpolatedDiff":I
    :cond_2
    goto :goto_1

    .line 1183
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1224
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_4
    :goto_1
    return p2
.end method

.method private shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 8
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1253
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1254
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 1255
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1256
    .local v4, "dependency":Landroid/view/View;
    nop

    .line 1257
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1258
    .local v5, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    .line 1260
    .local v6, "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    instance-of v7, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v7, :cond_1

    .line 1261
    move-object v7, v6

    check-cast v7, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 1254
    .end local v4    # "dependency":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "behavior":Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1264
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    return v3
.end method

.method private snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 10
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 981
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 982
    .local v0, "offset":I
    invoke-direct {p0, p2, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result v1

    .line 983
    .local v1, "offsetChildIndex":I
    if-ltz v1, :cond_5

    .line 984
    invoke-virtual {p2, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 985
    .local v2, "offsetChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 986
    .local v3, "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    .line 988
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x11

    const/16 v6, 0x11

    if-ne v5, v6, :cond_5

    .line 990
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    .line 991
    .local v5, "snapTop":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v6, v6

    .line 993
    .local v6, "snapBottom":I
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_0

    .line 995
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v7

    add-int/2addr v6, v7

    .line 998
    :cond_0
    const/4 v7, 0x2

    invoke-static {v4, v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1000
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_0

    .line 1001
    :cond_1
    const/4 v8, 0x5

    invoke-static {v4, v8}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1005
    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1006
    .local v8, "seam":I
    if-ge v0, v8, :cond_2

    .line 1007
    move v5, v8

    goto :goto_0

    .line 1009
    :cond_2
    move v6, v8

    .line 1013
    .end local v8    # "seam":I
    :cond_3
    :goto_0
    add-int v8, v6, v5

    div-int/2addr v8, v7

    if-ge v0, v8, :cond_4

    .line 1014
    move v7, v6

    goto :goto_1

    .line 1015
    :cond_4
    move v7, v5

    :goto_1
    nop

    .line 1016
    .local v7, "newOffset":I
    nop

    .line 1017
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v8

    neg-int v8, v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v8

    const/4 v9, 0x0

    .line 1016
    invoke-direct {p0, p1, p2, v8, v9}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    .line 1020
    .end local v2    # "offsetChild":Landroid/view/View;
    .end local v3    # "lp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "snapTop":I
    .end local v6    # "snapBottom":I
    .end local v7    # "newOffset":I
    :cond_5
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 7
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "offset"    # I
    .param p4, "direction"    # I

    .line 1229
    invoke-static {p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    .line 1230
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1231
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    .line 1232
    .local v1, "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v2

    .line 1233
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 1235
    .local v3, "collapsed":Z
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    .line 1236
    if-gez p4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 1239
    :cond_1
    invoke-virtual {p2, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result v4

    .line 1241
    .local v4, "changed":Z
    if-eqz v4, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    .line 1242
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1245
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1248
    .end local v1    # "childLp":Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;
    .end local v2    # "flags":I
    .end local v3    # "collapsed":Z
    .end local v4    # "changed":Z
    :cond_2
    return-void
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    .line 767
    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 3
    .param p1, "view"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1097
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result v0

    return v0

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1105
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1106
    .local v0, "scrollingView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 1107
    invoke-static {v0, v2}, Lcom/oneplus/support/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1106
    :goto_0
    return v1

    .line 1110
    .end local v0    # "scrollingView":Landroid/view/View;
    :cond_2
    return v1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .line 767
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 767
    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1122
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    .line 767
    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 1
    .param p1, "view"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1127
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .line 767
    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1280
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    .line 1177
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method bridge synthetic onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 767
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 0
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "layout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1117
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    .line 1118
    return-void
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 767
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z
    .locals 7
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "layoutDirection"    # I

    .line 1050
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    .line 1052
    .local v0, "handled":Z
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getPendingAction()I

    move-result v1

    .line 1053
    .local v1, "pendingAction":I
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1054
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1055
    .local v3, "animate":Z
    :goto_0
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1056
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v4

    neg-int v4, v4

    .line 1057
    .local v4, "offset":I
    if-eqz v3, :cond_1

    .line 1058
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_1

    .line 1060
    :cond_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    .line 1062
    .end local v4    # "offset":I
    :cond_2
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_4

    .line 1063
    if-eqz v3, :cond_3

    .line 1064
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_3

    .line 1066
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_3

    .line 1062
    :cond_4
    :goto_1
    goto :goto_3

    .line 1069
    .end local v3    # "animate":Z
    :cond_5
    iget v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    if-ltz v3, :cond_7

    .line 1070
    invoke-virtual {p2, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1071
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    .line 1072
    .restart local v4    # "offset":I
    iget-boolean v5, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v5, :cond_6

    .line 1073
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    .line 1075
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 1077
    :goto_2
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    goto :goto_4

    .line 1069
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "offset":I
    :cond_7
    :goto_3
    nop

    .line 1081
    :goto_4
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->resetPendingAction()V

    .line 1082
    const/4 v3, -0x1

    iput v3, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1086
    nop

    .line 1087
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v3

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v2

    .line 1086
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 1090
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1092
    return v0
.end method

.method public bridge synthetic onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .line 767
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z
    .locals 8
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    .line 1030
    nop

    .line 1031
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    .line 1032
    .local v0, "lp":Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 1037
    nop

    .line 1038
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1037
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1039
    const/4 v1, 0x1

    return v1

    .line 1043
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .line 767
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 8
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z

    .line 881
    const/4 v0, 0x0

    .line 883
    .local v0, "flung":Z
    if-nez p6, :cond_0

    .line 885
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v5, v1

    const/4 v6, 0x0

    neg-float v7, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v0

    goto :goto_0

    .line 890
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p5, v1

    if-gez v1, :cond_2

    .line 892
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 893
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v2

    add-int/2addr v1, v2

    .line 894
    .local v1, "targetScroll":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 897
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    .line 898
    const/4 v0, 0x1

    .line 900
    .end local v1    # "targetScroll":I
    :cond_1
    goto :goto_0

    .line 902
    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    neg-int v1, v1

    .line 903
    .restart local v1    # "targetScroll":I
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 906
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    .line 907
    const/4 v0, 0x1

    .line 912
    .end local v1    # "targetScroll":I
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 913
    return v0
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .line 767
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 9
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I

    .line 830
    if-eqz p5, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    if-nez v0, :cond_1

    .line 832
    if-gez p5, :cond_0

    .line 834
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 835
    .local v0, "min":I
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int/2addr v1, v0

    .local v1, "max":I
    goto :goto_0

    .line 838
    .end local v0    # "min":I
    .end local v1    # "max":I
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 839
    .restart local v0    # "min":I
    const/4 v1, 0x0

    .line 841
    .restart local v1    # "max":I
    :goto_0
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v2

    aput v2, p6, v8

    .line 843
    .end local v0    # "min":I
    .end local v1    # "max":I
    :cond_1
    return-void
.end method

.method public bridge synthetic onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .line 767
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 7
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .line 849
    if-gez p7, :cond_0

    .line 852
    nop

    .line 853
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    .line 852
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p7

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    goto :goto_0

    .line 858
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 860
    :goto_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 767
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "state"    # Landroid/os/Parcelable;

    .line 1310
    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 1311
    move-object v0, p3

    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1312
    .local v0, "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1313
    iget v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1314
    iget v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1315
    iget-boolean v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1316
    .end local v0    # "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    goto :goto_0

    .line 1317
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1318
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1320
    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 767
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 9
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 1285
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1286
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v1

    .line 1289
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1290
    invoke-virtual {p2, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1291
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v1

    .line 1293
    .local v5, "visBottom":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 1294
    new-instance v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1295
    .local v6, "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    iput v2, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1296
    nop

    .line 1297
    invoke-static {v4}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    if-ne v5, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1298
    int-to-float v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1299
    return-object v6

    .line 1289
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "visBottom":I
    .end local v6    # "ss":Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1304
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    return-object v0
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .line 767
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "parent"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .line 812
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 816
    .local v0, "started":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 818
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 822
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 824
    return v0
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 767
    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 1
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "abl"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "target"    # Landroid/view/View;

    .line 865
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    if-nez v0, :cond_0

    .line 867
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    .line 871
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mSkipNestedPreScroll:Z

    .line 872
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mWasNestedFlung:Z

    .line 874
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 875
    return-void
.end method

.method public setDragCallback(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    .line 922
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    .line 923
    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    .line 767
    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I
    .locals 5
    .param p1, "coordinatorLayout"    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
    .param p2, "appBarLayout"    # Lcom/oneplus/lib/design/widget/AppBarLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I

    .line 1133
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1134
    .local v0, "curOffset":I
    const/4 v1, 0x0

    .line 1136
    .local v1, "consumed":I
    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    .line 1139
    invoke-static {p3, p4, p5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p3

    .line 1140
    if-eq v0, p3, :cond_4

    .line 1141
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1142
    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result v2

    goto :goto_0

    .line 1143
    :cond_0
    move v2, p3

    :goto_0
    nop

    .line 1145
    .local v2, "interpolatedOffset":I
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result v3

    .line 1148
    .local v3, "offsetChanged":Z
    sub-int v1, v0, p3

    .line 1150
    sub-int v4, p3, v2

    iput v4, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 1152
    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1157
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1164
    nop

    .line 1165
    if-ge p3, v0, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    .line 1164
    :goto_1
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    .line 1166
    .end local v2    # "interpolatedOffset":I
    .end local v3    # "offsetChanged":Z
    goto :goto_2

    .line 1169
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    .line 1172
    :cond_4
    :goto_2
    return v1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 0

    .line 767
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    .line 767
    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method
